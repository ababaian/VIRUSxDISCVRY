# EMBOSS Pepinfo

written by: \[Enea Provenzano\]

\[4 minute\] This tutorial introduces EMBOSS pepinfo, a bioinformatics
tools that performs a physico-chemical analysis of a sequence. It is a
tool used to analyse protein sequences by identifying and visualising
key physico-chemical properties such as hydrophobicity, charge, and
regions of potential structural or functional significance. By
completing this tutorial, you will learn to use Pepinfo to interpret
protein characteristics, enabling a deeper understanding of protein
structure and function, which is essential for applications such as
virus discovery and functional annotation of encoding regions.

**Tutorial Objective**: By completing this tutorial, you will understand
how to use EMBOSS pepinfo to predict physico-chemical properties.

## Input / Prerequisites

-   [Tool
    Weblink](https://www.ebi.ac.uk/jdispatcher/seqstats/emboss_pepinfo)

-   [Link to example data](img/EMBOSS/centroid_sequence.fa)

-   Either Uploading a FASTA file or inserting the DNA/RNA sequence
    directly into the tool box allows for an analysis

### 1. Insert Sequence

Either using a FASTA file or by directly inserting the DNA or RNA
sequence into the search bar the analysis can begin

### 2. Adjusting Hydropathy Size Window

A hydropathy window size refers to the number of amino acids considered
together when calculating the average hydropathy (or hydrophobicity)
score in a protein sequence. This score is used to identify regions of a
protein that are hydrophobic or hydrophilic, which can provide insights
into structural features such as transmembrane domains or soluble
regions.

For reference

-   Small window sizes (e.g. 3-5 amino acids): Capture fine-grained
    details but may introduce noise

-   Larger window sizes (e.g. 9-21 amino acids): Smooth out fluctuations
    to highlight broader patterns, such as membrane-spanning helices.

The website will allow to adjust this window accordingly to the purpose
of the analysis

### 3. Name the Job

To retreat the results at later stages and identify which sequence was
analysed, label the job using the last box

------------------------------------------------------------------------

## Output

Now submit the sequence and wait

### 4. Analysis of the Properties Histogram Plots

The tool generates histograms of the physicochemical properties,
assuming the entire sequence is a coding region. It analyses and
visualises the distribution of tiny and small residues, aliphatic and
aromatic residues, as well as polar and non-polar regions. Additionally,
it identifies charged residues within the sequence. This detailed
analysis enables the association of specific regions or sites with
potential biological functions, such as transmembrane domains or
contributions to structural stability.

<figure>
<img src="img/EMBOSS/histograms.jpg" alt="Histogram of Residues" />
<figcaption aria-hidden="true">Histogram of Residues</figcaption>
</figure>

### 5. Analysis of the Hydropathy Plots

Hydropathy plots show the hydrophobic and hydrophilic characteristics of
a protein sequence by calculating the hydropathy index for each amino
acid, typically using a sliding window. Peaks on the plot indicate
hydrophobic regions, often corresponding to membrane-spanning domains or
buried areas within the protein core, while troughs represent
hydrophilic regions, likely located on the protein surface or
interacting with aqueous environments. These plots help isolate
properties such as transmembrane helices, soluble regions, and the
overall polarity distribution of the protein, offering insights into its
structural and functional roles.

<figure>
<img src="img/EMBOSS/hydropathy.jpg" alt="Hydropathy Plot" />
<figcaption aria-hidden="true">Hydropathy Plot</figcaption>
</figure>

### 6. Export plots

Under the section ‘Results File’ it is possible to download any
input/output of this analysis

### Conclusion

That’s it! You’ve used the EMBOSS Pepinfo to quantify physico-chemical
properties of your DNA or RNA sequence!

In summary, EMBOSS provides a powerful suite of tools for analysing
protein and nucleotide sequences, offering detailed insights into their
physicochemical properties, hydropathy, and structural features. By
interpreting histograms of residue distributions and hydropathy plots,
researchers can identify regions with specific biological functions,
such as transmembrane domains, active sites, or structural stability.
These analyses are essential for understanding the functional and
structural roles of sequences, particularly in applications like virus
discovery and protein characterisation.

### See Also:

-   [EMBOSS other tools](https://www.ebi.ac.uk/jdispatcher/)
