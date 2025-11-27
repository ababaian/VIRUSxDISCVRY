# {Name of the Tool}
written by: [Ismail Majid](https://github.com/majidism006)

[15 minute] Dotmatcher is an EMBOSS pairwise comparison tool that generates dot plots between two nucleotide or amino acid sequences. It works by sliding a window across both sequences and placing a dot wherever the similarity score exceeds a chosen threshold. In virus discovery, dot plots help quickly visualize conserved regions, repeats, or structural similarities between an unknown viral agent and known sequences.

**Tutorial Objective**: {Learn how to generate and interpret a dot plot using Dotmatcher.}

## Input / Prerequisites
- [Tool Weblink](https://www.ebi.ac.uk/jdispatcher/seqstats/emboss_dotmatcher)
- Two sequences in FASTA format OR text to copy and paste (DNA or protein).
- Web browser.

## Output

Dotmatcher outputs a dot plot image (PNG/SVG) showing regions of similarity between the two sequences. The tool may also generate an alignment text file containing positions of matching windows. These outputs help identify conserved motifs, inverted repeats, recombination signals, or candidate homology regions useful for classifying novel viral sequences.


### Step 1 — Open the Tool

Go to: https://www.ebi.ac.uk/jdispatcher/seqstats/emboss_dotmatcher

### Step 2 — Upload Your Sequences

Upload or paste your FASTA sequences into the respective text boxes. 
EXAMPLE SEQUENCES:
test1:
MGDVEKGKKIFIMKCSQCHTVEKGGKHKTGPNLHGLFGRKTGQAPGYSYTAANKNKGIIW 
GEDTLMEYLENPKKYIPGTKMIFVGIKKKEERADLIAYLKKATNE  
test2:
MGDVEKGKKIFVQKCAQCHTVEKGGKHKTGPNLHGLFGRKTGQAAGFSYTDANKNKGITW 
GEDTLMEYLENPKKYIPGTKMIFAGIKKKGERADLIAYLKKATNE 

![example](input.png)

### Step 3 — Set Parameters

# MATRIX (BLOSUM62 / 35 / 40)
This is the substitution matrix used to score amino-acid matches within each window.

It tells the program how similar each pair of amino acids is.

BLOSUM62: default, good for sequences with “normal” (~60–80%) similarity.

BLOSUM40 / 35: for more divergent proteins – they give relatively higher scores to weaker similarities, so you may detect more distant homology.

# WINDOW SIZE
Dotmatcher doesn’t look at single residues; it slides a window (e.g. 10 aa long) along both sequences and sums the matrix scores over that window.

# THRESHOLD
After summing scores in the window, if the total ≥ threshold (e.g. 23), Dotmatcher draws a dot at that coordinate; otherwise it leaves it blank.

Lower threshold → more dots (more sensitive, more noise)

Higher threshold → fewer dots (more specific, cleaner)

![example](parameters.png)

### Step 4 — Run Dotmatcher

Click Submit. The server will process the sequences and generate a dot plot.

![example](processing.png)

### Step 5 — Interpret the Dot Plot

A diagonal line indicates strong similarity or homology. (Note: This is what we expect since our 2 input sequences were identical)

Multiple diagonals may indicate repeats or gene duplications.

Gaps or breaks suggest insertions, deletions, or evolutionary divergence.

Off-diagonal patterns can reveal inverted repeats or palindromes (often found in RNA viruses and viroid-like agents).

![example](results.png)

### Step 6

Save the dot plot image for your report (PNG/SVG).

### Conclusion

That's it! You've used EMBOSS Dotmatcher to generate and analyze a dot plot between two viral sequences. This tool helps you visually identify homology, repeats, and structural signals, which are crucial steps in classifying unknown viruses or validating that your candidate contig resembles known viral families.


### AI use acknowledgment
This response was copy-edited with the use of a generative large language model (ChatGPT 5.1 Thinking, 2025-11-27).




