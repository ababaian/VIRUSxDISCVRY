library(ape)
library(Biostrings)
library(stringdist)

### 1. Load subtree
tree <- read.tree("subtree.nwk")
tips <- tree$tip.label

### 2. Load full FASTA
allseq <- readAAStringSet("phylo_send.txt")
orig_names <- names(allseq)

### 3. Function to convert names to tree-like format
normalize <- function(x) {
  x <- gsub(" ", "-", x)        # spaces → dashes
  x <- gsub("[^A-Za-z0-9_-]", "", x)   # remove punctuation
  x
}

norm_orig <- normalize(orig_names)

### 4. Fuzzy match each tree tip to the closest FASTA name
matched_names <- sapply(tips, function(tip) {
  # distance between tree tip and all normalized FASTA names
  d <- stringdist(tip, norm_orig, method = "lv")
  best <- which.min(d)
  orig_names[best]
})

### 5. Extract the matched sequences
subtree_seqs <- allseq[matched_names]

### 6. Find your sequence
my_tip <- grep("rdrp-objective-wrasse", tips, value = TRUE)  # finds your sequence
if(length(my_tip) == 0) my_tip <- tips[1]  # fallback to first if not found

my_idx <- which(tips == my_tip)

### 7. Calculate distances from your sequence to all others
distances <- cophenetic(tree)[my_idx, ]

### 8. Get 10 closest (including yourself)
closest_10_idx <- order(distances)[1:10]
closest_10_tips <- tips[closest_10_idx]

### 9. Extract just those 10 sequences (use matched_names instead)
closest_10_matched <- matched_names[closest_10_idx]
closest_10_seqs <- subtree_seqs[closest_10_matched]

### 10. Save output
writeXStringSet(closest_10_seqs, "closest_10_from_tree.fasta")
cat("Recovered ", length(closest_10_seqs), " sequences (your RdRp + 9 closest).\n")
