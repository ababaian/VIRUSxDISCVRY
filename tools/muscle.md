# MUSCLE
written by: [Yunyi Cheng](https://github.com/yunyicheng)
edited by: [Clare Gillis](https://github.com/claregillis)

MUSCLE is a computer program for creating multiple sequence alignments of proteins. It incorporates fast distance estimation using *k* mer counting, progressive alignment using a profile function we call the log‐expectation score, and refinement using tree‐dependent restricted partitioning. It could be used in phylogenetic tree estimation, structure prediction and critical residue identification, which are useful for virus identification and discovery.

**Tutorial Objective**: We will use `MUSCLE` to produce multiple sequence alignment for hemoglobin subunit sequences from humans, house mice and goats.

## Input / Prerequisites

- [Tool Weblink](https://www.ebi.ac.uk/jdispatcher/msa/muscle)
- [Link to example data formats](https://www.ebi.ac.uk/jdispatcher/docs/formats/)
- Web browser
- Three or more sequences of interest in GCG, FASTA, EMBL (Nucleotide only), GenBank, PIR, NBRF, PHYLIP, or UniProtKB/Seiss-Prot (Protein only) format directly, or upload a file.

## Output

The result for multiple sequence alignment is displayed in a browser tab, with sections being `Alignment`, `Tool Output`, `Phylogenetic Tree`, and `Result Viewers`. There are seven options listed in a dropdown list, from which users may select one to proceed with the task:

1. Pearson/FASTA: Plain text format for storing sequences; starts with a header line beginning with ">" followed by the sequence.

2. ClustalW: Alignment output from the Clustal family of tools, organized in blocks.  

3. ClustalW (strict): Similar to standard ClustalW, but with stricter output conventions.  

4. HTML: Sequence alignments rendered as HTML, typically with color-coded residues for clarity.  

5. GCG MSF: A format developed for the GCG suite of bioinformatics tools.  

6. Phylip interleaved: A compact format used by the Phylip suite of programs, displaying sequences interleaved across lines.  

7. Phylip sequential: Similar to Phylip interleaved, but sequences are presented consecutively in blocks.  

For the sake of demonstration, we will choose Pearson/fasta as the output format.

### 1. Navigate to [MUSCLE Web Tool](https://www.ebi.ac.uk/jdispatcher/msa/muscle)

### 2. Under the section 'Input Sequence', click on the button `Use the example`

### 3. Under section `Parameters`, select `Pearson/FASTA` to be the output format

### 4. Under the section `Submit`, name the job and hit `Submit`

### 5. View the result

- Alignment results visualization with amino acids in different colours and buttons for zooming in and out
![alignment](img/muscle/example_alignment.png)


- The output of the tool is shown in this section, users can `Download` the tool output or `Show` alignment with colours
![tool output](https://p.ipic.vip/32qsut.png)


- The phylogenetic tree shows the evolutionary relationship between input sequences with a sliding tile to zoom in and out
![phylogenetic tree](https://p.ipic.vip/pa8ea7.png)


- Links to related result viewers to further investigate the results
![result Viewers](https://p.ipic.vip/51swp4.png)


- All result files and links to download them
![result files](https://p.ipic.vip/joq6of.png)


- Submission details about this job
![submission details](https://p.ipic.vip/w2ruy3.png)


### Conclusion

That's it! You've used the `MUSCLE` to produce multiple sequence alignment for hemoglobin subunit sequences from humans, house mice and goats!

In this example, we can see that loci 102-111 align very well between the three 
proteins, so they may posess an important function. We can gather stronger evidence
for this hypothesis by aligning other, similar sequences along these and checking
if loci 102-111 are similar for these new sequences.

![Loci 102-111](img/muscle/loci_102-111.png)

When it comes to viruses, users can follow this example (substituting example 
data with real virus proteins) to investigate conserved regions, variants, and 
evolutionary relationships when it comes to viral proteins.

### See Also:

- [MUSCLE: multiple sequence alignment with high accuracy and high throughput](https://academic.oup.com/nar/article/32/5/1792/2380623)
- [Download source code](https://github.com/rcedgar/muscle/releases/tag/5.1.0)
- [Documentation](https://drive5.com/muscle5/manual/)
- [Home page](https://drive5.com/muscle5/)
- For other multiple sequence alignment tools see: [EMBL Multiple Sequence Alignment](https://www.ebi.ac.uk/jdispatcher/msa)
