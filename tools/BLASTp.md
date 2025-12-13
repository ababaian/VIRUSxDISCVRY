# BLASTp Tutorial
written by: [Allan Hu, Jade Juba, Abigael Smith] (https://github.com/Abs531)

[15 minutes] BLASTp, the Basic Local Alignment Search Tool for proteins, takes a "query" protein sequence, breaks it into pieces, and compares each piece to a database of known proteins. Once it finds a match, it extends the alignment until the entire query sequence is accounted for, then it returns all significant matches it finds. BLASTp can be used to compare sequences, characterize sequences of interest, find proteins with functional and/or structural similarities, and more! After generating a putative open reading frame for your **virus** and decoding the codons into amino acid residues, you can use BLASTp to investigate the **protein(s)** it codes for, **and see any similar sequences**.

**Tutorial Objective**: We will learn how to use `BLASTp` to compare potential viral protein sequences to the database, as well as doing the analysis.

## Input / Prerequisites

- Access to [BLASTp](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE=Proteins)
- A `FASTA` file of protein (Link to example data [Monkeypox virulence protein](https://www.ncbi.nlm.nih.gov/protein/WMY82716.1?report=fasta))
- Web browser
- A protein sequence

Find example data [here] (https://www.uniprot.org/uniprotkb/O89281/entry). This link will send you to the Uniprot page for the RdRp catalytic domain-containing protein of Tremovirus A, a virus that infects chickens and some other fowl. On the left-hand menu, click Sequence, and in the light-blue box containing the amino acid sequence, click Copy sequence. You'll be using it in your tutorial-guided analysis.

## Output

The output of `BLASTp` includes a list of database matches to your input protein sequence, including max/total score, percent identity, etc. It highlights an E-value indicating the significance of each match, and an alignment showing conserved regions. The results can be directly viewed in the graphic summary, or could be downloaded as a text/csv file. The output helps researchers better identify and understand the input protein sequence.

### 1. Tutorial Instructions

1. Navigate to the BLASTp portal

### 2. ...

2. Create and submit a protein search query

2.1: Entering our amino acid sequence

Start by pasting your amino acid sequence in the box under the Enter Query Sequence titlecard. Make sure to title your sequence with a single line above the sequence, starting with a greater-than sign >. This is known as FASTA format.  I named my sequence obelisk223_putative_oblin. If you have a single sequence, the title you enter will also appear in the Job Title box.

Instead of the amino acid sequence, you can also paste an accession number connected to your sequence of interest in a database, or you can upload your sequence to the system as a file (using the Upload File button underneath the text box).

The Query Subrange section on the right allows you to narrow down your search to a subsequence within your sequence. If you're entering your Oblin sequence, you probably don't know enough about the putative protein to limit the search to a subsequence.

BLASTp also allows you to align sequences! If you want to find similarities between two or more putative protein amino acid sequences, you can check this box and use this function. Otherwise, don't worry about it!

### 2. Create a `BLASTp` Query. 

Copy the protein sequence from the FASTA file and paste it into the query sequence box, or you can **also just paste the sequence itself, as long as there is only one.**. Here we can also adjust the subrange of the sequence that is intended to be put into the search. 

![image](https://github.com/user-attachments/assets/1b32efd2-64ca-49d5-9bc6-19f6e3b32644)

Select a relevent database such as nr (Non-redundant protein database) or a viral-specific protein database if the query sequence is specified as a potential viral protein. We can also change the algorithm of the search, depending on what we are trying to achieve. 

![image](https://github.com/user-attachments/assets/bcdbeaeb-28cd-49c2-a52f-7d4d0f015f0f)

To refine our search, we can...

    Choose different Databases to query. The Standard databases consist of traditional GenBank and RefSeq sequences. The Experimental databases are smaller databases grouped by organism domains (eukaryotes, prokaryotes, viruses, and others). If you don't know where your data will appear, you better cast a wider net and query the Standard databases! There are several types of Standard databases, but the default, and the one we will use, is the Non-redundant protein sequences (nr) database, containing non-redundant sequences from many different databases, as well as some environmental whole-genome sequencing samples. **While the non-redundant database does eliminate most sequence duplicates, a good amount do still show up in the search. If you plan on exporting any of the sequences or using them for analysis, it is good practice to manually check that they are not duplicates if you are working with a small dataset.**
    Choose the Organism which our query sequence will be compared against. This is helpful if you only want to find matches from a specific organism, but because we don't know where our protein could be found, it would severely and unnecessarily limit our results.
    Exclude certain types of proteins or samples. Again, we don't want to limit ourselves, so leave these boxes unchecked!

We can also choose which algorithm BLASTp will use to perform our search. Here, we're going with the good old blastp (protein-protein BLAST). The other options are limiting, are there for efficiency, **or can be used to build position-specific iterated BLAST matrix**, and we don't need to use them for our purposes. **Another helpful box is the 'Show results in a new window' option, which is helpful when performing multiple searches.**

### 3. Query Results. 

The example `FASTA` file used here is a [Monkeypox virulence protein](https://www.ncbi.nlm.nih.gov/protein/WMY82716.1?report=fasta). Default `BLASTp` setting is used. 

The results come in a table with important headings and values.

    Scientific Name is the organism from which the target sequence originates.
    Max Score and Total Score have to do with BLASTp's scoring metric for how similar the query sequence is to the target sequence. Max Score is the maximum possible score based on the two sequences, and Total Score is the actual score for the query sequence and that particular target. The closer Total Score is to Max Score, the better the alignment is.
    Query Cover is the percentage of your query sequence which is included in the target sequence. This value has to do with the length of the query sequence, so a value of 100% doesn't mean the match is perfect, but it means the entire length of the query can be mapped (perhaps imperfectly mapped) to the target sequence.
    E Value estimates the likelihood of a random alignment producing a match that is as good or better than the match between the query and that particular target sequence. A low value indicates that this particular match is a good one and unlikely to occur by chance.
    Per. Ident, or Percent Identity, is the percentage of aligned amino acid residues which match perfectly between the query and target sequences. The higher this value is, the better the alignment is.
    Acc. Len, or Accession Length, is the number of amino acids in the target protein sequence.
    Accession is the accession number of the target amino acid sequence. Clicking the link will take you to that sequence's page on whichever database it came from.

We can see what we have done in the query and filter the results here.

![image](https://github.com/user-attachments/assets/d43ccbed-8b9a-4c1b-954c-38832e05d77e)

In this case, there are 100 matches in the database, and we can see the results listed on the right. E-value represents the number of matches you would expect to find by random chance when searching a database, and typically an E-value which is < 0.01 implies a statistically significant result (i.e. not a random alignment). 

![image](https://github.com/user-attachments/assets/f703a774-0515-42b3-8a9f-3639ac09019e)

We will select the second protein sequence with the accession number of `UWO45316.1`. You can download the results in a txt/csv file in the Download tab. 

In the Graphic Summary tab, we will see the general alignment on the top and the distribution of alignment scores on the bottom. You can also click on the image to see a more detailed version showing the residues. 

![image](https://github.com/user-attachments/assets/6d7efcb3-a59f-4142-82e7-52e36be14cf4)

Clicking on the Alignment tab will show us the actual alignment of the query and the subject sequences. 

![image](https://github.com/user-attachments/assets/67f7d99c-75e9-45d0-8aed-9d1820310767)

Under the Taxnomy tab the lineage and organism where the protein sequence is from are listed. You can also see how many hits have been selected. We will select another sequence in the results with an accession number of `SNB49514.1` and look at the tab. 

![image](https://github.com/user-attachments/assets/db0602de-5786-4e45-ae54-b541b791cb55)

### 4. Interpreting Results

**E-value is a great way to measure confidence in the results from BLASTp. As stated above, it estimates the likelihood of a random alignment producing a match that is the same or a better match. It is calculated bby multiplying th length of the sequence, length of the database, alignment score, and other parameters regarding normalization and scaling. The default cutoff is 1e-5, but generally we would prefer values much lower than that. While it is a useful metric, BLAST analysis is just the first step when determining evolutionary or sequence relationships.**

**To encorporate your BLASTp results in the Final Project, you can take the alignment of the top hits (or those of your choosing), or the taxonomy of the related species as seen above. You should include basic information about what the figure is showing, such as alignment scores or hits, and how you obtained the results.**
      
**A figure caption example using the above monkeypox protein search**

![image](https://github.com/user-attachments/assets/db0602de-5786-4e45-ae54-b541b791cb55)

  **Fig. 1. Taxonomic results for the BLASTp analysis of the virulence protein from the Monkeypox virus. Related organisms and their lineage can be seen in descending order by similarity score, as well as the number of hits by organism. A description of each sequence is also given. Top hits include ofther Monkeypox sequences, as well as other related Cowpox sequences**
           

### Conclusion

That's it! You've used BLASTp to find amino acid sequences with similarity to your query sequence!

You've explored protein sequence alignments, orthologs, and taxonomy - but BLASTp can only go so far. Think of it as the beginning into an investigation of your amino acid sequence. In this case, we know what our query sequence is, and if we thought a little bit about what the results may be beforehand, we probably would've predicted that we'd get RdRp proteins from the same and similar viruses. But if we were querying a putative amino acid sequence for an uncharacterized protein - like we would've been if our oblin queries yielded any significant results - each significant alignment would represent a pathway leading to discovery. The structure of a similar protein could give us some idea as to what conformation our oblin might take. The function of that protein may tell us something about what our oblin does. On the off chance that our oblin was picked up on in some experiment and loaded into a database, we could learn more about where that oblin is found - what organism, what tissue, what geographic location, etc. Sequence similarity can imply structural and functional similarity, but be careful not to over-conclude. Search for literature, formulate testable hypotheses, and brainstorm experiments or analyses that would allow you to reject your null hypothesis. Most importantly, have fun in your analyses!

### See Also:

-[BLAST: at the core of a powerful and diverse set of sequence analysis tools](https://pmc.ncbi.nlm.nih.gov/articles/PMC441573/)

-[BLAST tutorial from the UC Berkeley Library](https://guides.lib.berkeley.edu/ncbi/blast)

-[The OG paper on BLAST](https://www.sciencedirect.com/science/article/abs/pii/S0022283605803602)

-[A guided example of using BLAST to detect and interpret sequence homology](https://community.gep.wustl.edu/repository/course_materials_WU/annotation/Detecting_Interpreting_Genetic_Homology.pdf)

-[Additional useful link](https://web.archive.org/web/19991128125537/http://www.geocities.com/Heartland/Bluffs/4157/hampdance.html)
