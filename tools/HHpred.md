# HHpred

Written by : Flora HILT

[30 minutes] 

`HHpred` is a bioinformatics tool that predicts the presence of functional domain(s) and the folding of a protein of interest based on homology with known and described domains and structures. To achieve this, it determines the hidden Markov model (HMM) profile of the protein of interest and compares it with the HMM profiles of proteins registered in databases (such as PDB). This initial step enables the detection of homologous domains. Subsequently, the homologous domains are aligned (still using HMM profiles) and assigned a score that reflects the probability of homology. Alignments and scores can be utilized to determine the secondary and tertiary structure of the protein of interest through the use of `MODELLER`.

This tool provides a more sensitive analysis than `BLAST`, indicating that sequences that yield no significant results with `BLAST` may have homologues identified using HHpred. Consequently, `HHpred` is particularly valuable when dealing with highly divergent viruses that did not produce significant results in the initial `BLAST` analysis.

**Tutorial Objective**: We will employ HHpred to identify functional domain(s) in an uncharacterized viral protein and predict its structure.

## Input / Prerequisites
- Access to [HHpred](https://toolkit.tuebingen.mpg.de/tools/hhpred).
- Key License of [MODELLER](https://salilab.org/modeller/registration.html) (Please note that this key license is *free for members of academic non-profit institutions*).
- A protein sequence to analyze. In this tutorial, the following sequence is used : 

```
>Unknown(703aa)
MTKTIYTVVLSFISKTTKELGKYSALKSMFPKKHLSLLSILVTWSYVMDCSYRCKHILKLLSLLCSWYNNNGMPFTIKFVKDSRLLITRWMCDVPLISSPEIRVKTDKSGWPSQFVFMKPEKGNLKQYREVLSLMNILSPVEGIFKPEISDIIDAPSVDISHIYSMKEDIFKVLSNFSSESPKFEKWHFTTHRGPNGHGMASILMDINSTMSYIDDISVVAGDDIKNRIENFVKMIQSKVGPGIVMSCRLLMGKNPIGAKLVAIPAPEGKSSIIAQMGYWLQAALIPLHKDIFDILKKIGMDLTFDQSKAPAFLKSKGDNHYHSLDLKSATDSFPIEFQKMVLSCVYDETFSKSWGNIMKQEFHTWDNQKVTYGAGQPMGAYSSWAVFSLSHHVLISWCCLQLDIPWENNYVVLGDDVVICNDQLAESYKEEMSKLGVQISMNKTHCSKHSYEIAKSWYSEGEGEFTPFQFSAVLSFGPSTSQVCEYLLDYKSKGFTFLVSVPQATAMFVSAMSNSLHWSHMKKSIDLAEIFWNVHTYLSGYRPGIEMLSSIQSCMNLPVLPSSLGTAHYINDGVANNVVVEMFTDSAEAPGAGADDVAMNSMLLLTDPELTPPESLDDYMSALPHLGVTGQFEEQYLAIKASAWEFDAIYSGCWDLAMRSLTVPDVTTVFSMSTSDMSQIFVSKICKKMMESMKIIASMNSI
```

## Output

The listing includes all functional domains exhibiting a significant degree of homology with the protein of interest. This file (in `.hhr` format) contains the following information:

- The names of homologous domains (`Hit`),
- The probability of being a true positive (`Prob`), 
- `E-values`, 
- `P-value`, 
- Homology score (`Score`), 
- Secondary structure score (`SS`), 
- Length of matching domains (`Cols`),
- Position of the domain in the protein of interest (`Query HMM`),
- Position of the domain in the hit (`Template HMM`), and the total length of this hit (in brackets),
- All alignments between each hit and the protein of interest.

Identified homologues (along with scores and alignments with the protein of interest) will be utilized for folding prediction. The resulting structure will be directly displayed on the web page. Structure data can be downloaded as a PDB file (`.pdb`), which requires a dedicated viewer such as `Rasmol` to be turned into an interactive 3D structure.

### 1. Submitting a Protein to HHpred

- **Paste** your sequence into the designated field. Alternatively, you can **upload a text file** containing your sequence in `FASTA` format.

- **Select the database(s)** with which you would like to compare your sequence. A dropdown list containing all the databases compatible with HHpred is available.

- **Choose the proteome(s)** (if applicable) to limit comparisons to one (or more) organism(s).

If you would like more information about the HHpred tool, click on the question mark next to `HHpred`. This action will open the dedicated **help pages**.

![Input](tools/img/HHpred/HHpred_input.png)

### 2. Results

Once the tool completes the calculations, it provides the initial results: the `Number of Hits` (in this case, 85) and the `query Multiple Sequences Alignment (MSA) diversity` (7.13705). This value, ranging from 1 to 20, indicates the quality of the MSA (with a deep MSA achieving a score of 20). If specific motifs (such as signal peptides or transmembrane segments) or notable regions (like disordered or coiled coils) are detected, this information will be highlighted in this initial section of the `Results` page.

The page is then divided into three sections:

- **Visualization**: This section provides a representation of the discovered homologous domains and their positions in the protein of interest. The hits are arranged in descending order based on their scores, with the significance indicated by color (red for highly significant and blue for less significant).

![Visualization](tools/img/HHpred/HHpred_Visualization.png)

- **Hitlist**: This table compiles the name (`Name`) and identifier (`Hit`) of each hit, their probability of being a true positive (`Probability`), the associated E-value (`E-value`) and score (`Score`), the secondary structure score (`SS`), the total length of the hit (`Target Length`), and the aligned region (`Aligned Cols`).

![Hitlist](tools/img/HHpred/HHpred_Hitlist.png)

- **Alignments**: This section displays the alignments between each hit and your sequence. All the information presented in the `Hitlist` is also available here.

![Alignments](tools/img/HHpred/HHpred_Alignments.png)

If you are particularly interested in a specific region of your protein, you can guide HHpred by selecting the region with the slider below `Visualization` and clicking `Resubmit Section` (as indicated by the blue box in the image below).

To download the hitlist and alignments, click on `Download HHR` in the toolbar (as shown in the green box in the image below).

Additionally, a cumulative histogram of probability values can be accessed by clicking on `Probability Plot` (highlighted in the yellow box in the image below).

![Additional results](tools/img/HHpred/HHpred_Download_Resubmit_ProbPlot.png)

### 3. Predicting the Structure

To obtain the predicted structure, you first need to select the hits from which it will be inferred based on homology. You can either `Select All` (indicated by the purple box in the following image) or choose them individually in the `Hitlist` section.

Afterward, simply click on `Model using selection` (highlighted by the orange box in the image below) and wait for the structure to be calculated and displayed.

*Please note that when using HHpred for the first time, a license key for `MODELLER` will be required.*

![Selection](tools/img/HHpred/HHpred_Selection.png)

The color gradient indicates the relative position of each amino acid compared to the N terminal (blue) and the C terminal (red).

You can download the PDB file by clicking on `Download PDB file` (as denoted by the red box).

![Structure](tools/img/HHpred/HHpred_Modeller.png)

### Additional Remark

Instead of a protein sequence, you can utilize an alignment as the initial input. This alignment must be in either a `FASTA`,`CLUSTAL`, `A3M` or `STOCKHOLM` format.

### Conclusion

That's it! You've used the `HHpred` tool to identify functional domains and structural features in your protein.

HHpred is a powerful tool to deduce protein function and structure through homology with well-characterized proteins available in databases. More sensitive than BLAST, it opens new avenues to further define the vastness of protein diversity and expand our current knowledge.

Given the rapid mutation of viruses in response to new immunological pressures, characterizing their sequences presents a significant challenge. Nevertheless, `HHpred` proves to be a valuable resource, capable of overcoming these challenges by potentially identifying homologues when broader database comparison algorithms fall short, paving the way for new discoveries.


### See Also:

- [HHpred](https://doi.org/10.1093/nar/gki408) publication.
- [MODELLER](http://onlinelibrary.wiley.com/doi/10.1002/cpps.20/abstract) publication.
- More about [HHpred and MODELLER implementation](http://www.sciencedirect.com/science/article/pii/S0022283617305879).
- [Detailed protocols](https://doi.org/10.1002/cpbi.108) to use HHpred.
- Overview of [protein structures and their functional significance](https://doi.org/10.1002%2F0471140864.ps1701s35).
- Other [bioinformatics tools](https://toolkit.tuebingen.mpg.de/).