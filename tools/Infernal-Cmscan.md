# Infernal Cmscan
written by: [Andrew Wong](https://github.com/yourname *optional link*)

[Estimated Time: 10-15 minutes] Infernal Cmscan ("INFERence of RNA ALignment") is a powerful tool designed for searching DNA sequence databases for RNA structure and sequence similarities. The tool uses covariance models (CMs) from Rfam to scan query sequences for RNA motifs, identifying structural and sequence similarities. This is particularly valuable in virus discovery for identifying conserved RNA structures in viral genomes.

**Tutorial Objective**: In this tutorial, users will learn how to run Infernal Cmscan, analyze its output, and interpret the results for biological insights in RNA research.

Input / Prerequisites

Tool Weblink: https://www.ebi.ac.uk/jdispatcher/rna/infernal_cmscan
Input Data: An RNA sequence represented in DNA format (e.g., with bases A, T, G, and C). Users can either paste the sequence directly or upload a file in FASTA format.
Example data: Example FASTA or use the tool's built-in example. Additional examples can be found at this directory (http://eddylab.org/infernal/).
System Requirements: Access to a web browser.
Additional prerequisites: Understanding of RNA motifs and their significance in molecular biology.

## Output

Output

Text File: Provides a tabular summary of hits, including E-values, scores, and descriptions.
Detailed Alignments: Sequence alignments if matches are found.
Biological utility: Helps identify conserved RNA motifs or structures in query sequences.

### 1. Tutorial Instructions

Tutorial Instructions
Step 1: Access the Tool

Open the tool by visiting Infernal Cmscan.
Familiarize yourself with the interface. Below is an image of the main input form:

Step 2: Prepare Your Input

Input a DNA sequence in the "Input Sequence" field.
Alternatively, upload a sequence file in FASTA format.
Select the Threshold Model parameter. The default option is "GA - gathering cutoffs."

Example: Below is an input with one of the study sequences (10 "obelisks"):

Step 3: Submit the Job

Add a descriptive title to help identify the job later.
Click Submit to run the analysis.

Step 4: Analyze the Output

Once the analysis completes, you'll see the result page with:

A summary of detected hits. If no hits are found, the output will indicate this:
Detailed alignments if hits are detected (not applicable in this case).


### Conclusion

That's it! You've used the {Tool Name} to {objective}!

You've learned how to use Infernal Cmscan to search for RNA motifs in DNA sequences. However, the tool's performance in this instance suggests potential database limitations or a mismatch in input parameters.

Key takeaways:

This tool is excellent for exploring RNA structure-function relationships.
Observing "no hits" could imply a need to expand the search database or refine query sequences. Since, the 10 obelisks tested provided no hits, it is unlikely that this tool will be useful for researching obelisks.
Note: it is essential to ensure input sequences are appropriate for the Rfam model.

### See Also:

- [Publication Name](https://www.nature.com/articles/s41586-021-04332-2)
- [Additional useful link](https://web.archive.org/web/19991128125537/http://www.geocities.com/Heartland/Bluffs/4157/hampdance.html)
- [10 best practices for writing documentation](https://www.grammarly.com/blog/developer/10-best-practices-writing-documentation/)
- ...