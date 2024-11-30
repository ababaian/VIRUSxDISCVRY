# BLASTp (Basic Local Alignment Search Tool for proteins)
written by: [Allan Hu](https://github.com/lorda6)

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

![image](https://github.com/user-attachments/assets/1b32efd2-64ca-49d5-9bc6-19f6e3b32644)

Select a relevent database such as nr (Non-redundant protein database) or a viral-specific protein database if the query sequence is specified as a potential viral protein. We can also change the algorithm of the search, depending on what we are trying to achieve. 

![image](https://github.com/user-attachments/assets/bcdbeaeb-28cd-49c2-a52f-7d4d0f015f0f)

Adjust parameters if necessary, such as changing the E-value threshold to filter matches for statistical significance, altering the scoring matrix, etc.

![image](https://github.com/user-attachments/assets/c4572ac3-b772-4b53-a075-e08753f4d004)

### 3. Query Results. 

The example `FASTA` file used here is a [Monkeypox virulence protein](https://www.ncbi.nlm.nih.gov/protein/WMY82716.1?report=fasta). Default `BLASTp` setting is used. 

We can see what we have done in the query and filter the results here.

![image](https://github.com/user-attachments/assets/d43ccbed-8b9a-4c1b-954c-38832e05d77e)

In this case, there are 100 matches in the database, and we can see the results listed on the right. E-value represents the number of matches you would expect to find by random chance when searching a database, and typically an E-value which is < 0.01 implies a statistically significant result (i.e. not a random alignment). 

![image](https://github.com/user-attachments/assets/f703a774-0515-42b3-8a9f-3639ac09019e)

We will select the second protein sequence with the accession number of `UWO45316.1`. You can download the results in a txt/csv file in the Download tab. 

In the Graphic Summary tab, we will see the general alignment on the top and the distribution of alignment scores on the bottom. You can also clikc on the image to see a more detailed version showing the residues. 

![image](https://github.com/user-attachments/assets/6d7efcb3-a59f-4142-82e7-52e36be14cf4)

Clicking on the Alignment tab will show us the actual alignment of the query and the subject sequences. 

![image](https://github.com/user-attachments/assets/67f7d99c-75e9-45d0-8aed-9d1820310767)

Under the Taxnomy tab the lineage and organism where the protein sequence is from are listed. You can also see how many hits have been selected. We will select another sequence in the results with an accession number of `SNB49514.1` and look at the tab. 

![image](https://github.com/user-attachments/assets/db0602de-5786-4e45-ae54-b541b791cb55)

### Conclusion

That's it! You've used the `BLASTp` to compare a protein sequence against a database and identify viral homologs!


### See Also:

- [Publication Name](https://www.nature.com/articles/s41586-021-04332-2)
- [Additional useful link](https://web.archive.org/web/19991128125537/http://www.geocities.com/Heartland/Bluffs/4157/hampdance.html)
- [10 best practices for writing documentation](https://www.grammarly.com/blog/developer/10-best-practices-writing-documentation/)
- ...
