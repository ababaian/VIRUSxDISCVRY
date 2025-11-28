---
output:
  html_document: default
  pdf_document: default
---
# Retrieving Viral Genomes using TBLASTN
written by: Ak Kannan

[20 minutes] Translated BLAST (TBLASTN) is a website based tool on NCBI that compares a query protein sequence against a nucleotide sequence database by translating the nucleotide sequence in all six reading frames to identify nucleotide sequences similar to the provided protein query. This is especially useful in the identification of the contig (nucleotide sequence) containing the RNA-dependent RNA polymerase (RdRp) palm ID, allowing for the retrieval of the complete viral RdRp sequence for further analysis.

**Tutorial Objective**: This tutorial should be a useful starting point for your project as it will allow you to retrieve your complete RdRp sequence and also teach you how to find nucleotide sequences similar to a protein query.

## Input / Prerequisites
- https://blast.ncbi.nlm.nih.gov/Blast.cgi?PROGRAM=tblastn&PAGE_TYPE=BlastSearch&LINK_LOC=blasthome
- A protein query sequence as a FASTA or text (for demonstration I will be using the palmID associated with SRA below)
- SRA number the unique palm ID is from (for demonstration I will use SRR7694630)
- (If following the specific demo) Logan Assembly FASTA for the SRA (For demonstration I will use: https://s3.amazonaws.com/logan-pub/c/SRR7694630/SRR7694630.contigs.fa.zst)

```
palmID of viral RdRp from SRR7694630:
IMLDKSRFDKYYYFSIQDDIDEMFYTFIDFDHGYLPTHVYPTERQWSQTKADRLRRLYRYLCYSFRNTPTATPDGKLYRRRFAGMPSGIYNVQIYDTVYFAITDTCVLLHMGYQLEQILLRKGQGDDIIT
```


## Output

The output of this web tool is a collection of nucleotide sequences that align to your query protein, which can be downloaded as a FASTA. This FASTA can be opened in a 
text editor and compared to the Logan assembly of the given SRA your palmID protein query was obtained from. The web tool additionally provides a visual of the alignments between your query and the chosen database.

### 1. Finding your palmID protein query sequence and it's SRA number

For the virus you are investigating find the unique palmID protein sequence and the SRA associated with it.

*Figure 1. Location of the palmID sequence and it's associated SRA in the virusRunObservations excel (Green = columns of interest, orange = data used in demo)*
![](Images/Lab12.Fig1.png)


### 2. Open up the website and input your palmID

Find the link to the website in the area above, and then copy your virus palmID (from step 1) to paste it into the "Enter Query Sequence" field. Note that you can also upload a FASTA file of a protein sequence by clicking on "Choose File".

*Figure 2. Inputting the palmID protein sequence in the query field*
![](Images/Lab12.Fig2.png)


### 3. Choosing Your Search Set - The Nucleotide Search Database

In order to determine the full sequence of the RdRP we want the location of the contig (which is a nucleotide sequence) containing the palm ID. There are two ways to do this, however the first one (3A) will likely fail, so you will have to resort to 3B. 


#### 3A. Use your Logan assembly as the search database (will likely fail)

In tblastn you can upload your own nucleotide search set by clicking on the "Align two or more sequences" check box, as seen in Figure 1. Click this check box and a new area called "Enter Subject Sequence" should pop up below. In this case, you will download your Logan assembly (see Figure 3 on where to retrieve this)
file for the SRA, unzip it, and upload it into the "Choose File" field in the new "Enter Subject Sequence" area. Click BLAST to run the analysis. It will likely not work because the Logan assembly is greater than 10 million characters, which is the character limit for the web tool. So we shall press on and move to option 3B, but now you know how to run a tblastn when
you have a nucleotide search set FASTA (if less than 10 mil characters). 

*Figure 3. Find Logan Assembly FASTA in the virusRunObservations excel (Blue = column of interest, Pink = data used in demo)*
![](Images/Lab12.Fig3.png)

*Figure 4. Location to upload Logan assembly FASTA, and BLAST button*
![](Images/Lab12.Fig4.png)

*Figure 5. Likely ERROR mesage after running*
![](Images/Lab12.Fig5.png)


#### 3B. Use your SRA as the search database (will hopefully work)

Instead of uploading a file we shall use your SRA run's raw reads, which is already publicly available. Our first step is to remove the check from the "Align two or more sequences" check box, 
to return the bottom area to "Choose Search Set". Here we will open the dropdown in the "Database" field and click on "Sequence Read Archive (SRA)", as seen in Figure 6.
In the field below that prompts you to input an SRA ascension, we will input the SRA number associated with the PalmID, that we determined in Step 1. Inputting the SRA number should cause a single match to appear below, we will click this match, 
which pertains to the SRA run, as seen in Figure 7. Finally, click the BLAST button and pray it works!!

*Figure 6. Database dropdown in "Choose Search Set", choose database as SRA*
![](Images/Lab12.Fig6.png)

*Figure 7. Input the SRA in the field below the database and click the first match that appears*
![](Images/Lab12.Fig7.png)

### 4. Analayzing the output

There will be three tabs on the output: Description, Graphic Summary, and Alignments. Let's go through each!

*Figure 8. Tabs in results (at the top) currently showing the Description Tab*
![](Images/Lab12.Fig8.png)

#### 4A. The Description Tab

This tab (see Figure 8 abvoe) will give you statistical information regarding the matches and also where these matches are located in the nucleotide database, however the latter is not of importance for the current demo.
The two important values to look at are the e-value and the % identity. The e-value tells you how likely the alignment is due to randomness. The lower the e-value, the more significant your alignment is (you have somehting real!).
The % Identity tells you the % of identical amino acids between your query and the translated nucleotide database. You should expect a % identity of 100 if you are doing the palmID analysis (as the demo does), since we expect the raw reads 
from the SRA run to contain the RdRp palmID, because that is where serratus basically retrieves the palmID from! The query cover tells you the % of the query that the alignment covers and is visualised in the graphic summary tab.

#### 4B. The Graphic Summary Tab

If you press "Select All" in the Description Tab, this tab shows you where ALL the translated nucleotide alignments from the given database align with the given query. 

*Figure 9. Graphic Summary of Alignments*
![](Images/Lab12.Fig9.png)

#### 4C. The Alignments Tab

If you press "Select All" in the Description Tab, this tab displays the actual amino acid alignments between the protein query and all the translated nucleotide sequence one-by-one.

*Figure 10. Display of actual alignment between amino acids of query and translated nucleotide*
![](Images/Lab12.Fig10.png)


### 5. Opening Logan assembly FASTA and obtaining alignment FASTA

Go back to the Description Tab and ensure "Select All" is checked. We will now download the aligned sequences as a FASTA by clicking on "Download" and choosing "FASTA (aligned sequences)" on the dropdown that appears.
This FASTA contains the nucleotide sequences, that when translated, will align to some part of the query (your PalmID). Open the alignment FASTA using your operating software's text editor and also the FASTA associated with the Logan assembly of the SRR you took the PalmID from.

*Figure 11. Downloading the Alignments as an Aligned Sequences FASTA*
![](Images/Lab12.Fig11.png)


### 6. A simple search

Now we are going to find the contig containing our RdRp, so that we can get it's full protein sequence! All you have to do is Ctrl/Cmd + F search
your Logan assembly file with each set of aligned nucleotides until you find the contig! The aligned sequences act as landmarks for the contig containing the whole viral RdRp.

*Figure 12. Copy one of your alignments from the alignment FASTA*
![](Images/Lab12.Fig12.png)

*Figure 13. Paste the alignment in the search tab and go to the Logan assembly FASTA, and hopefully you should have a match. This match contains the contig containing the whole (hopefully) nucleotide sequence of the RdRp*
![](Images/Lab12.Fig13.png)

### 7. Use Other Tutorials!! 

Go to the ORF Finder Tutorial and use the contig's ENTIRE sequence as the input to obtain the full amino acid sequqnce of your viral RdRp, verify the ORF with a BLASTp!


### Conclusion

That's it! You've used TBLASTN to identify translated nucleotide sequences similar to the provided protein query.
In this specific example we went through, you should have been able to use tblastn to determine the nucleotide sequence 
of your complete RdRp from only it's Palm ID from a given SRA run and it's Logan assembly! Using tblastn for
other queries can also allow you determine the closest relatives of a protein of interest. 

### See Also:

- [Camacho C., Coulouris G., Avagyan V., Ma N., Papadopoulos J., Bealer K., Madden T.L. (2008) “BLAST+: architecture and applications.” BMC Bioinformatics 10:421. PubMed] https://pubmed.ncbi.nlm.nih.gov/20003500/ 
- [NCBI BLAST Documentation] https://blast.ncbi.nlm.nih.gov/doc/blast-help/
- [More detailed explanation] https://ftp.ncbi.nlm.nih.gov/pub/factsheets/HowTo_BLASTGuide.pdf
- ORF Finder Tutorial
- BLASTP Tutorial
