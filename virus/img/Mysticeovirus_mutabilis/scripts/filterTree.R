# Phylogenetic Subtree Extraction for Mysticeovirus_mutabilis

library(ape)
library(phangorn)

# ============================================================================
# PART 1: Extract Subtree Around Your Virus
# ============================================================================

# Load tree
tree <- read.tree("PhyML_Newick_tree.nhx")

# Find Mysticeovirus_mutabilis
virus_matches <- grep("Mysticeovirus_mutabilis", tree$tip.label, value = TRUE, ignore.case = TRUE)

if (length(virus_matches) == 0) {
  stop("Error: Mysticeovirus_mutabilis not found in tree! Check tip labels.")
}

# Use the first match (in case there are multiple)
virus_label <- virus_matches[1]
print(paste("Found virus:", virus_label))

# Find the tip number for your virus
tip_num <- which(tree$tip.label == virus_label)
print(paste("Tip number:", tip_num))

# Navigate up the tree to find a good subtree size
# Start from your virus and go up to find the clade
current_node <- tip_num

# Try depth = 7
# Adjust this number to get the right clade size:
# - Smaller number (3-4) = very close relatives only
# - Larger number (7-9) = broader taxonomic group
# - Too large (>10) = might get whole tree

depth <- 4

for (i in 1:depth) {
  parent <- tree$edge[tree$edge[, 2] == current_node, 1]
  
  if (length(parent) == 0) {
    print("Warning: Reached root of tree before desired depth")
    break
  }
  
  current_node <- parent
  print(paste("Level", i, "- Node:", current_node))
}

# Extract subtree from this ancestral node
subtree <- extract.clade(tree, current_node)

# Display subtree statistics
cat(rep("=", 60), sep = "")
print(paste("Subtree contains", length(subtree$tip.label), "taxa"))
print(paste("Subtree depth:", depth, "levels from Mysticeovirus_mutabilis"))
cat(rep("=", 60), sep = "")

# List taxa in subtree
print("Taxa in subtree:")
print(subtree$tip.label)

# Save subtree in Newick format
write.tree(subtree, file = "Mysticeovirus_mutabilis_subtree.nwk")
print("Subtree saved to: Mysticeovirus_mutabilis_subtree.nwk")

# Plot subtree with better visualization
pdf("Mysticeovirus_mutabilis_subtree.pdf", width = 12, height = 10)
plot(subtree, 
     cex = 0.7,                    # Text size
     tip.color = ifelse(grepl("Mysticeovirus_mutabilis", subtree$tip.label, ignore.case = TRUE), 
                        "red", "black"),  # Highlight your virus in red
     font = 1,                     # Font type
     label.offset = 0.01)          # Space between branch and label

# Add title
title(main = "Phylogenetic Subtree Containing Mysticeovirus mutabilis Virus",
      sub = paste("Subtree extracted at depth =", depth),
      cex.main = 1.2)

# Add scale bar
add.scale.bar()

# Add bootstrap values if they exist
if (!is.null(subtree$node.label)) {
  nodelabels(subtree$node.label, 
             frame = "none", 
             cex = 0.5, 
             col = "blue")
}

dev.off()
print("Subtree plot saved to: Mysticeovirus_mutabilis_subtree.pdf")


# ============================================================================
# PART 2: Extract Corresponding Sequences
# ============================================================================

library(Biostrings)
library(stringdist)

print("\n")
cat(rep("=", 60), sep = "")
print("EXTRACTING SEQUENCES FOR SUBTREE TAXA")
cat(rep("=", 60), sep = "")

# Load subtree (just created above)
subtree_tips <- subtree$tip.label

# Load full FASTA alignment
# CHANGE THIS to match your actual alignment filename
alignment_file <- "partiti_filtered2.fasta"

if (!file.exists(alignment_file)) {
  stop(paste("Error: Alignment file not found:", alignment_file))
}

allseq <- readAAStringSet(alignment_file)
fasta_names <- names(allseq)

print(paste("Loaded", length(allseq), "sequences from alignment"))
print(paste("Need to extract", length(subtree_tips), "sequences for subtree"))

# Function to normalize sequence names for matching
# (handles spaces, special characters, etc.)
normalize_name <- function(x) {
  x <- gsub("\\s+", "_", x)              # spaces → underscores
  x <- gsub("[^A-Za-z0-9_.-]", "", x)    # keep letters, numbers, _, ., -
  x <- tolower(x)                        # convert to lowercase for matching
  return(x)
}

# Normalize both tree tips and FASTA names
norm_tips <- normalize_name(subtree_tips)
norm_fasta <- normalize_name(fasta_names)

# Match each tree tip to closest FASTA sequence name
# Using fuzzy matching in case names don't match exactly
matched_indices <- sapply(subtree_tips, function(tip) {
  tip_norm <- normalize_name(tip)
  
  # Calculate edit distance to all FASTA names
  distances <- stringdist(tip_norm, norm_fasta, method = "lv")
  
  # Find best match
  best_match_idx <- which.min(distances)
  best_distance <- distances[best_match_idx]
  
  # Warn if match is poor
  if (best_distance > 5) {
    warning(paste("Poor match for", tip, "- distance:", best_distance))
  }
  
  return(best_match_idx)
})

# Extract matched sequences
subtree_sequences <- allseq[matched_indices]

# Rename sequences to match tree tip labels exactly
names(subtree_sequences) <- subtree_tips

# Save output
output_file <- "Mysticeovirus_mutabilis_subtree_sequences.fasta"
writeXStringSet(subtree_sequences, output_file)

cat(rep("=", 60), sep = "")
print(paste("SUCCESS: Extracted", length(subtree_sequences), "sequences"))
print(paste("Saved to:", output_file))
cat(rep("=", 60), sep = "")

# Print sequence statistics
seq_lengths <- width(subtree_sequences)
print("\nSequence length statistics:")
print(paste("  Min length:", min(seq_lengths), "aa"))
print(paste("  Max length:", max(seq_lengths), "aa"))
print(paste("  Mean length:", round(mean(seq_lengths), 1), "aa"))
print(paste("  Median length:", median(seq_lengths), "aa"))

# Verify your virus is in the extracted sequences
if (any(grepl("Mysticeovirus_mutabilis", names(subtree_sequences), ignore.case = TRUE))) {
  print("\n Confirmed: Mysticeovirus_mutabilis is in extracted sequences")
} else {
  warning("Warning: Mysticeovirus_mutabilis not found in extracted sequences!")
}

print("\nDone!")


library(ape)
library(Biostrings)

# Load your existing subtree (38 taxa)
subtree <- read.tree("/Users/vic/Desktop/Homo Sapiens/outputs/Mysticeovirus_mutabilis_subtree.nwk")

# Load sequences
allseq <- readAAStringSet("/Users/vic/Desktop/Homo Sapiens/partiti_filtered2.fasta")

# Find your virus in the tree
virus_label <- grep("Mysticeovirus_mutabilis", subtree$tip.label, value = TRUE, ignore.case = TRUE)[1]
virus_tip <- which(subtree$tip.label == virus_label)

cat("Your virus:", virus_label, "\n")
cat("Total taxa in subtree:", length(subtree$tip.label), "\n\n")

# Calculate phylogenetic distances from your virus to all other tips
dist_matrix <- cophenetic.phylo(subtree)
distances_to_virus <- dist_matrix[virus_tip, ]

# Sort by distance (closest first)
sorted_distances <- sort(distances_to_virus)


N_SEQUENCES <- 20  # ← recommended: 15-25 for Jalview

# Get the N closest taxa
closest_taxa <- names(sorted_distances)[1:N_SEQUENCES]

cat("Selecting", N_SEQUENCES, "closest relatives:\n")
cat(rep("=", 60), "\n", sep = "")

for (i in 1:length(closest_taxa)) {
  taxon <- closest_taxa[i]
  dist <- sorted_distances[i]
  marker <- ifelse(grepl("Mysticeovirus_mutabilis", taxon, ignore.case = TRUE), " ← YOUR VIRUS", "")
  cat(sprintf("%2d. %s (distance: %.4f)%s\n", i, taxon, dist, marker))
}

cat(rep("=", 60), "\n", sep = "")

# Match these taxa to sequences in your alignment
normalize <- function(x) tolower(gsub("[^A-Za-z0-9_.-]", "", gsub("\\s+", "_", x)))

matched_idx <- sapply(closest_taxa, function(tip) {
  which.min(stringdist::stringdist(normalize(tip), normalize(names(allseq)), method = "lv"))
})

# Extract sequences
jalview_seqs <- allseq[matched_idx]
names(jalview_seqs) <- closest_taxa

# Save for Jalview
output_file <- "Mysticeovirus_mutabilis_jalview.fasta"
writeXStringSet(jalview_seqs, output_file)

cat("\nSaved", length(jalview_seqs), "sequences to:", output_file, "\n")
cat("Alignment length:", width(jalview_seqs)[1], "positions\n")
cat("\nReady to upload to Jalview!\n")