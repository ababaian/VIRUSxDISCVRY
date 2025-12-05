# PebbleScout

written by: [Meijin Wu](https://github.com/yourname%20*optional%20link*)

[5 min] This tutorial provides a guide to performing nucleotide sequence 
searches using the NCBI PebbleScout tool. PebbleScout takes a query 
sequence, searches within large nucleotide sequencing data collections
such as the SRA, WGS and RefSeq databases, and outputs a set of 
BioSamples in which the sequence is found. PebbleScout is a useful tool
to rapidly find subsets of massive databases relevant to a sequence of
interest with minimal resource costs. 

## Input / Prerequisites

-   Access to [PebbleScout](https://pebblescout.ncbi.nlm.nih.gov/)
-   Nucleotide sequence, FASTA file, or GenBank Accessions CSV files.
-   Selection of database in which you wish to search
-   No other specific system or other requirements are needed.

## Output

The primary output is a tab-separated values (.tsv) file containing a 
list of sequencing runs where your query was found. Rows are runs, 
columns are: 
-  SubjectID, the accession number of the run
-  Raw Score, the sum of kmer scores for all kmers considered from the
query with a match to the subject 
-  %coverage, the percentage of all kmers considered from the query with
match to the subject 
-  PBSscore, the normalized score 
-  BioSample, the accession number of the BioSample from which
the run is taken
-  Title of the study in which the BioSample is found

### 1. Navigate to [PebbleScout](https://pebblescout.ncbi.nlm.nih.gov/)

### 2. Input your query
Copy and paste your query sequence, or the GenBank accession number of
your query sequence, into the input window, or upload a FASTA file 
containing your query sequence.

### 3. Select Database

In "Select Database and Report", select your database of choice. This is 
the collection PebbleScout will search. 

### 4. Adjust parameters if needed

While default paramaters suffice for general purposes, you may adjust: 
- Masking threshold (A lower masking threshold means a higher number of
common k-mers will be automatically filtered out of results)
- Score constant (Affects calculation of RawScore, learn more
[here](https://pebblescout.ncbi.nlm.nih.gov/?view=doc#s-3))
- Max number of subjects per query (the maximum number of outputs 
returned)

![PebbleScout example inputs](img/PebbleScout/PebbleScoutInput.png)

### 5. Run & view or download data

Click "View" at the bottom of the page to view the results in browser,
click "Download" to download the results as a .tsv file. 
![PebbleScout Example Output](img/PebbleScout/PebbleScoutOutput.png)


### Interpreting Results

PebbleScout measures output confidence by RawScore and PBSscore. Kmers are 
scored by dividing the score constant C, specified for the database, by
the sum of C and the number of subjects the Kmer, K, is found in within 
the database. 
-  The raw score for the query is then computed as the sum of kmer scores 
for all kmers appearing in one or more subjects in the database.
-  The PBS score is the normalized score, computed as the percentage of 
kmers considered from the query that appear in one or more subjects in the
database multiplied by a constant and divided by the raw score.
PebbleScout also provides %coverage, the percentage of kmers considered
from the query with match to the subject.

### Conclusion

That's it! You've used the PebbleScout to search for your obelisk in the
database!

Here, we used PebbleScout to look for matches to our obelisk sequence in
the SRA database.This is a powerful and efficient tool to get an
overview of BioSamples from studies that may contain your sequence in
order to explore the digital ecology of your obelisk.

### See Also:

-   [Indexing and searching petabase-scale nucleotide
    resources](https://www.nature.com/articles/s41592-024-02280-z)
-   [PebbleScout
    Documentation](https://pebblescout.ncbi.nlm.nih.gov/?view=doc#s-3)
