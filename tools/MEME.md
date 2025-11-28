# MEME (Multiple Em for Motif Elicitation)
written by: Tee Zheng Xuan (https://github.com/zhengxuantee-cpu)

[15 minutes] MEME (Multiple EM for Motif Elicitation) is a computational tool for discovering novel sequence motifs—short, recurring patterns that are statistically enriched within sets of DNA, RNA, or protein sequences. It identifies these motifs using an iterative Expectation–Maximization algorithm and outputs position weight matrices (PWMs), sequence logos, motif sites, and enrichment statistics. In virus discovery, MEME can reveal conserved sequence features such as replication signals, packaging motifs, or viral family–specific sequence signatures within assembled contigs or ORFs.

**Tutorial Objective**: {1 sentence describing what the reader will accomplish in this tutorial}
Use MEME to discover motifs enriched in a set of primary sequences, interpret motif outputs, and understand how MEME’s classic, discriminative, and differential modes influence motif discovery.

## Input / Prerequisites

*(1)Access to MEME Suite (web version):*
https://meme-suite.org/meme/tools/meme

*(2)Sequences in either:*
-FASTA format
-BED format (MEME will automatically extract sequences from a chosen genome)

*(3)Unique Sequence Identifiers*
e.g., >MA0447.1_gt_1
(Required—MEME rejects duplicated IDs.)

*(4)Optional parameters to modify:*
**Sequence-set related:**
-Control sequences for discriminative/differential modes

**Motif occurrence models:**
-oops — One Occurrence Per Sequence

-zoops — Zero or One Occurrence Per Sequence

-anr — Any Number of Repetitions

**Motif discovery settings:**

-Number of motifs to find
-Motif width (min/max)

-Expected number of sites

**Background model:**
-A custom background model (0-order or higher)

**Special options (used only in specific cases):**
-Single vs double-stranded search

-Palindromic motif restriction

-Sequence shuffling for background estimation


## Output

MEME generates several types of output files that describe the motifs discovered in the input sequences. These include sequence logos, position weight matrices (PWMs), motif alignments, motif site locations, and statistical values such as E-values that measure motif enrichment. The results are provided in both HTML (interactive), text, and MEME motif format files, making them compatible with downstream tools such as TOMTOM, FIMO, and MAST. These outputs are useful for visualizing motif structure, identifying conserved positions, and exporting motifs for additional genomic or virus-discovery analyses.

### 1. Navigate to [MEME Multiple Em for Motif Elicitation](https://meme-suite.org/meme/tools/meme)

### 2. Input Preparation 
Before running MEME, prepare your input sequences in either **FASTA** or **BED** format.
-**FASTA:** Each sequence must have a unique identifier (e.g., >seq_1, >MA0447.1_gt_1). MEME rejects files with duplicate IDs or IDs containing spaces.
In our case, we will be using the MA0447.1 entry on JASPAR, which is the matrix ID for a transcription factor binding profile named gt (abbreviated “gt”) from Drosophila melanogaster.
[JASPAR input dataset](https://jaspar.elixir.no/matrix/MA0447.1/)
-**BED:**MEME will extract corresponding genomic sequences automatically when you choose a genome build on the website.

Optional input refinements:
-Provide control sequences if using discriminative or differential enrichment modes.
-Provide a custom background model if your sequences have strong AT/GC bias.
-Specify the number of motifs you want MEME to find (default is 3).

![JASPAR MA0447.1 website]("img/MEME/JASPARwebsite.png")

### 3. Selecting Discovery Mode
MEME offers three major modes depending on your biological question:

**1. Classic Mode**
-Discovers motifs enriched relative to a random background model built from your sequences.
-Use this for general motif discovery when only one dataset is available.

**2. Discriminative Mode**
-Requires Primary + Control sequences.
-MEME identifies motifs that occur more frequently in the Primary set using a position-specific prior model.
-Use this for comparing two biological groups (e.g., virus strain A vs strain B).

**3. Differential Enrichment Mode**
-Also uses Primary + Control sets, but relies on a hypergeometric enrichment model.
-Best when the important signal is presence/absence of motifs rather than subtle PWM differences.

![Different Mode]("img/MEME/MotifDiscoveryMode.png")
![Primary and Control Sequences Option]("img/MEME/PrimaryandControlSequences.png")

### 4. Choosing Motif Occurrence Model
MEME needs to know how many times a motif can appear per sequence:
-**OOPS (One Occurrence Per Sequence)**
Every sequence has exactly one motif. Fastest but least flexible.
-**ZOOPS (Zero or One Occurrence Per Sequence)**
Each sequence may have 0 or 1 motif. Best default choice for regulatory motifs.
-**ANR (Any Number of Repetitions)**
A sequence may have multiple motif copies.
Use this for repetitive sequences, tandem motifs, or protein repeats.

![Occurrence model]("img/MEME/SiteDistribution.png")

### 5. Configuring Background Model
MEME uses a background model to determine whether a pattern is genuinely enriched or simply reflects base composition.

**0-order background (default):**
Single-base frequencies (e.g., A=0.32, T=0.32, C=0.17, G=0.17).

**Higher-order backgrounds:**
Capture dinucleotide or trinucleotide dependencies (useful for genomes with structured sequence biases).

**Custom background file:**
Upload a background file derived from your organism or sequencing data.

![Background Model]("img/MEME/BackgroundModel.png")

### 6. Running the Tool
After configuring all settings:
-Click **Start Search.** (In our case this is the parameters we're running with:meme MA0447.1_fixed2.sites -dna -oc . -nostatus -time 14400 -mod oops -nmotifs 1 -minw 6 -maxw 50 -objfun classic -revcomp -markov_order 0)
-MEME processes your sequences using EM iterations, refining motifs at each cycle.
-When finished, MEME displays a results page summarizing all discovered motifs.
[MEME Result for MA0447.1](https://meme-suite.org/meme/opal-jobs/appMEME_5.5.91764357717032995556920/meme.html)
![Whole Page]("img/MEME/MEMEResultWholePage.png")

### 7. Interpreting Output

**MEME produces several key results (Considering the MEME HTML output as example):**

**Sequence Logos:** MEME displays each discovered motif as a sequence logo, where letter height reflects the information content and probability of each nucleotide at every position—allowing you to visually assess motif conservation and core binding features.
![Sequence Logos]("img/MEME/SequenceLogo.png")
**E-values:** Estimate of motif significance; lower values indicate stronger enrichment.(1.2e-052 in this scenario, which indicates that the corresponding motif is statistically significant)
**Detailed Information about the Motif (“More”)：** A detailed information regarding the motif, which includes statistical properties (LLR, IC, RE, BT and p-value) and each sequence's corresponding motif sites.
![Detailed Information]("img/MEME/DetailedInformation.png")
**Motif Locations:** MEME reports where each motif instance appears within your input sequences, showing the sequence identifier, strand, start position, matched subsequence, and score—useful for understanding motif distribution and biological relevance.
![Motif Locations]("img/MEME/MotifLocations.png")
**Input Settings:** At the bottom of the results page, MEME summarizes all parameters used for the run (e.g., sequences, background model, other settings), which ensures reproducibility and helps you confirm that the analysis was performed with the intended settings.
![Input Settings]("img/MEME/InputandSettings.png")
Together, these outputs help determine whether a motif is biologically meaningful, conserved, or potentially associated with viral replication or regulatory functions.

### Conclusion

That's it! You've used MEME to discover enriched sequence motifs, configure key analysis parameters, and interpret the resulting motif outputs.
By completing this tutorial, you learned how to run MEME using a real transcription factor binding dataset, configure key parameters such as discovery mode, occurrence model, and background model, and execute a full motif-finding analysis. You also learned how to interpret MEME’s outputs—including sequence logos, motif statistics, and motif locations—to understand the underlying conserved sequence patterns. Overall, you should now be able to apply MEME to your own sequence datasets to identify enriched motifs and analyze their biological relevance.

### See Also:
- [MEME: discovering and analyzing DNA and protein sequence motifs](https://pubmed.ncbi.nlm.nih.gov/16845028/)
- [The MEME Suite](https://academic.oup.com/nar/article/43/W1/W39/2467905)
- [Finding DNA Motifs: Information Content, MEME, and JASPAR](https://youtu.be/mOYunsvhiso?si=RRlu-LH39gb7kHGl)
