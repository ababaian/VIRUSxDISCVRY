# MEME (Multiple EM for Motif Elicitation)
written by: **Tee Zheng Xuan** (https://github.com/zhengxuantee-cpu)

[15 minutes]  
MEME (Multiple EM for Motif Elicitation) is a computational tool for discovering novel sequence motifs—short, recurring patterns that are statistically enriched within sets of DNA, RNA, or protein sequences. It identifies these motifs using an iterative Expectation–Maximization algorithm and outputs position weight matrices (PWMs), sequence logos, motif sites, and enrichment statistics. In virus discovery, MEME can reveal conserved sequence features such as replication signals, packaging motifs, or viral family–specific sequence signatures within assembled contigs or ORFs.

**Tutorial Objective:**  
Use MEME to discover motifs enriched in a set of primary sequences, interpret motif outputs, and understand how MEME’s classic, discriminative, and differential modes influence motif discovery.

---

## Input / Prerequisites

**(1) Access to MEME Suite (web version):**  
https://meme-suite.org/meme/tools/meme

**(2) Sequences in either:**  
- FASTA format  
- BED format (MEME will automatically extract sequences from a chosen genome)

**(3) Unique Sequence Identifiers**  
e.g., `>MA0447.1_gt_1`  
(Required—MEME rejects duplicated IDs.)

**(4) Optional parameters to modify:**

**Sequence-set related:**  
- Control sequences for discriminative/differential modes

**Motif occurrence models:**  
- *oops* — One Occurrence Per Sequence  
- *zoops* — Zero or One Occurrence Per Sequence  
- *anr* — Any Number of Repetitions  

**Motif discovery settings:**  
- Number of motifs to find  
- Motif width (min/max)  
- Expected number of sites  

**Background model:**  
- A custom background model (0-order or higher)

**Special options (used only in specific cases):**  
- Single vs double-stranded search  
- Palindromic motif restriction  
- Sequence shuffling for background estimation

---

## Output

MEME generates several types of output files, including sequence logos, position weight matrices (PWMs), motif alignments, motif site locations, and statistical values such as E-values. Results are provided in HTML (interactive), text, and MEME motif formats, making them compatible with TOMTOM, FIMO, MAST, and other downstream tools.

---

### 1. Navigate to MEME  
https://meme-suite.org/meme/tools/meme

---

### 2. Input Preparation 

Prepare your input sequences in **FASTA** or **BED** format.

- **FASTA:**  
  Each sequence must have a unique identifier (e.g., `>seq_1`, `>MA0447.1_gt_1`).  
  MEME rejects duplicate IDs or IDs with spaces.  
  In this tutorial, we use the **MA0447.1** transcription factor binding dataset for **gt** (*Drosophila melanogaster*):  
  https://jaspar.elixir.no/matrix/MA0447.1/

- **BED:**  
  MEME extracts sequences automatically using the selected genome build.

Optional refinements:
- Add control sequences for discriminative or differential searches  
- Supply a custom background model for biased sequences  
- Choose the number of motifs (default = 3)

![JASPAR MA0447.1 website](img/MEME/JASPARwebsite.png)

---

### 3. Selecting Discovery Mode

**1. Classic Mode**  
- Discovers motifs enriched relative to a random background model.  
- Best for a single dataset.

**2. Discriminative Mode**  
- Requires Primary + Control sets.  
- Identifies motifs enriched only in the Primary set.

**3. Differential Enrichment Mode**  
- Also uses Primary + Control sets.  
- Uses hypergeometric enrichment to find motifs whose presence is strongly different between sets.

![Different Mode](img/MEME/MotifDiscoveryMode.png)  
![Primary and Control Sequences Option](img/MEME/PrimaryandControlSequences.png)

---

### 4. Choosing Motif Occurrence Model

- **OOPS:** One occurrence per sequence  
- **ZOOPS:** Zero or one per sequence (recommended default)  
- **ANR:** Any number of repeats  

![Occurrence model](img/MEME/SiteDistribution.png)

---

### 5. Configuring Background Model

**0-order background:**  
Base frequencies only (A/C/G/T).

**Higher-order backgrounds:**  
Capture di-/tri-nucleotide structure.

**Custom background:**  
Upload from your own organism or data.

![Background Model](img/MEME/BackgroundModel.png)

---

### 6. Running the Tool

Example parameters:

```
meme MA0447.1_fixed2.sites -dna -oc . -nostatus -time 14400 \
-mod oops -nmotifs 1 -minw 6 -maxw 50 -objfun classic \
-revcomp -markov_order 0
```

After running, MEME outputs motif summaries and logos.

[MEME Result for MA0447.1](https://meme-suite.org/meme/opal-jobs/appMEME_5.5.91764357717032995556920/meme.html)

![Whole Page](img/MEME/MEMEResultWholePage.png)

---

### 7. Interpreting Output

**Sequence Logos:**  
Graphical representation showing conserved bases.

![Sequence Logos](img/MEME/SequenceLogo.png)

**E-values:**  
Quantify motif significance  
(e.g., **1.2e-052** → extremely significant).

**Detailed Information ("More"):**  
Includes LLR, IC, RE, BT, p-value, and site-level details.

![Detailed Information](img/MEME/DetailedInformation.png)

**Motif Locations:**  
For each sequence: position, strand, match, score.

![Motif Locations](img/MEME/MotifLocations.png)

**Input Settings:**  
Shows all parameters used for reproducibility.

![Input Settings](img/MEME/InputandSettings.png)

---

### Conclusion

That's it! You've used MEME to discover enriched sequence motifs, configure key analysis parameters, and interpret the resulting motif outputs.  
You learned how to run MEME using a real transcription factor binding dataset, adjust discovery modes and background models, and interpret logos, statistics, and motif locations. You should now be able to apply MEME to your own datasets to identify enriched motifs and evaluate their biological relevance.

---

### See Also

- [MEME: discovering and analyzing DNA and protein sequence motifs](https://pubmed.ncbi.nlm.nih.gov/16845028/)  
- [The MEME Suite](https://academic.oup.com/nar/article/43/W1/W39/2467905)  
- [Finding DNA Motifs: Information Content, MEME, and JASPAR](https://youtu.be/mOYunsvhiso?si=RRlu-LH39gb7kHGl)
