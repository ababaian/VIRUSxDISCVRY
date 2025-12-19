library(ape)
library(phangorn)

# Load tree
tree <- read.tree("FastTree_output_tree.nhx")

# Find ORF3
orf3_matches <- grep("Fungicola-clarireediae", tree$tip.label, value = TRUE, ignore.case = TRUE)
orf_label <- orf3_matches[1]

# Find the tip number
tip_num <- which(tree$tip.label == orf_label)

# Go up multiple nodes (adjust the number to get desired size)
current_node <- tip_num
for (i in 1:2) {  # Change 5 to go up more/fewer levels
  parent <- tree$edge[tree$edge[, 2] == current_node, 1]
  if (length(parent) == 0) break  # Reached root
  current_node <- parent
}

# Extract subtree from this higher node
subtree <- extract.clade(tree, current_node)

# Display info
print(paste("Subtree has", length(subtree$tip.label), "tips"))

# Save and plot
write.tree(subtree, file = "subtree.nwk")
plot(subtree, cex = 0.6)
title("Subtree containing Fungicola clarireediae")
