# {BLASTp (Basic Local Alignment Search Tool for proteins)}
written by: [allanhu] (https://github.com/lorda6)

[10 minute] `BLASTp` is a bioinformatics tool designed to compare a protein sequence against a database of protein sequences. It works by finding regions of local similarity, giving them a score, and identifying potential homologs. For virus discovery, BLASTp is critical in identifying viral proteins by matching unknown sequences to known viral protein databases, revealing evolutionary relationships or functional insights.

**Tutorial Objective**: We will learn how to use `BLASTp` to compare potential viral protein sequences to the database, as well as doing the analysis.

## Input / Prerequisites

- Access to [BLASTp](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE=Proteins)
- A `FASTA` file of protein (Link to example data [Monkeypox virulence protein](https://www.ncbi.nlm.nih.gov/protein/WMY82716.1?report=fasta))
- Web browser

## Output

The output of `BLASTp` includes a list of database matches to your input protein sequence, including max/total score, percent identity, etc. It highlights an E-value indicating the significance of each match, and an alignment showing conserved regions. The results can be directly viewed in the graphic summary, or could be downloaded as a text/csv file. The output helps researchers better identify and understand the input protein sequence.

### 1. Access [BLASTp](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE=Proteins) tool in your web browser.

### 2. Create a `BLASTp` Query. 

Copy the protein sequence from the FASTA file and paste it into the query sequence box, or you can upload it directly. Here we can also adjust the subrange of the sequence that is intended to be put into the search. 

![屏幕截图 2024-11-29 184641](https://github.com/user-attachments/assets/1b32efd2-64ca-49d5-9bc6-19f6e3b32644)

Select a relevent database such as nr (Non-redundant protein database) or a viral-specific protein database if the query sequence is specified as a potential viral protein. We can also change the algorithm of the search, depending on what we are trying to achieve. 

![屏幕截图 2024-11-29 190712](https://github.com/user-attachments/assets/bcdbeaeb-28cd-49c2-a52f-7d4d0f015f0f)

Adjust parameters if necessary, such as changing the E-value threshold to filter matches for statistical significance, altering the scoring matrix, etc.

![屏幕截图 2024-11-29 191618](https://github.com/user-attachments/assets/c4572ac3-b772-4b53-a075-e08753f4d004)

### 3. Query Results. 

The example `FASTA` file used here is a [Monkeypox virulence protein](https://www.ncbi.nlm.nih.gov/protein/WMY82716.1?report=fasta). 

### Conclusion

That's it! You've used the {Tool Name} to {objective}!

{2-3 sentences which describe the main conclusions of what the reader should come away from this learning}

### See Also:

- [Publication Name](https://www.nature.com/articles/s41586-021-04332-2)
- [Additional useful link](https://web.archive.org/web/19991128125537/http://www.geocities.com/Heartland/Bluffs/4157/hampdance.html)
- [10 best practices for writing documentation](https://www.grammarly.com/blog/developer/10-best-practices-writing-documentation/)
- ...
