---
output:
  html_document: default
  pdf_document: default
---
# ORFfinder
written by: Nuan Wen

[8 minutes] Welcome to the tutorial for ORFfinder. This tool helps researchers to find the open reading frame (ORF) quickly. An ORF is a sequence of DNA or RNA that potentially codes for a protein. This tool will find the ORF based on the start codon you specify until a stop codon appears. Additionally, it provides you with the corresponding amino acid sequences and shortcuts to BLAST, which makes the preparation work for virus discovery easier to carry out.


**Tutorial Objective**: By finishing this tutorial, you will be able to use ORFfinder to find the open reading frame efficiently and meaningfully.


## Input / Prerequisites
- ORFfinder can be accessed from [here](https://www.ncbi.nlm.nih.gov/orffinder/).
- The input could be accession numbers, data in fasta format, or bare sequences. See [Accepted Input Formats](https://blast.ncbi.nlm.nih.gov/doc/blast-topics/) for more details.
- The web version of the ORF finder is limited up to 50 kb long. The stand-alone version, which doesn't have query sequence length limitation, is available for Linux x64.

## Output
1. Data of ORFs in different file formats.

2. Amino acid sequence for each ORF found.


### ORFfinder Submitting Page Instructions

1. Put your sequence into the text box.

2. (Optional) Enter the position in your interest to "From:" and "to:" text boxes.

3. (Optional) Select the minimal ORF length (nt). The default value is "75" nucleotides.

4. (Optional) Select the taxonomy of the organism and the type of the sequence source. The default value is "1. Standard", which is the most well-known codon table.

5. (Optional) Select the start codon that is used. The default value is "ATG only".

6. (Optional) "Ignore nested ORFs" if you want to.

7. Click "Submit". This will take you to the ORF Viewer Page.

### ORF Viewer Page Instructions

- At the top is the sequence viewer. You can jump to a certain position, zoom in the sequence, select a specific ORF, etc. The documentation is [here](https://www.ncbi.nlm.nih.gov/tools/sviewer/).

- On the left is the text box containing the amino acid sequences for the selected ORF. You can change the way of showing the amino acid sequence by clicking "Display ORF as...".

- In the middle is the summary table for ORFs found. You can click on one of the ORFs and the sequence viewer will show you where the ORF selected locates. The amino acid text box will update accordingly. You can mark/unmark an ORF and download the marked ones by choosing the file format and then clicking "Download marked set". The default file format is "Protein FASTA".


### What's next

1. Using the links to BLAST at the left bottom of ORFfinder Viewer Page, you can run SmartBLAST or BLAST on the amino acid sequence shown in the text box to get more information about it.

2. And many more!

### Conclusion

That's it! You've used the ORFfinder to find the ORFs and the corresponding amino acid sequences for your sequence!

You should have noticed that ORFfinder is a powerful tool to uncover potential protein-coding regions within a DNA or RNA sequence. Combining with BLAST, it forms a pipeline to help researchers analyze their sequences in one assembly.

### See Also:

- [NCBI Minute: The Updated ORFfinder](https://www.youtube.com/watch?v=hbmeG9UbWOY)
- [ORF-FINDER: a vector for high-throughput gene identification](https://www.sciencedirect.com/science/article/abs/pii/S0378111901008198)
- [Database resources of the National Center for Biotechnology](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC165480/)
