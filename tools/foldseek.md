# Foldseek
written by: [Izumi Ando](https://github.com/izumiando) and [Victoria Pergola](https://github.com/vpergola22)

[10 minutes] This is a tutorial of Foldseek, a tool that allows you to search through 
multiple databases for similar proteins based on structure, not just alignment. It takes 
in either a protein sequence or a PDB file / accession and returns a list of proteins that
are similar in structure by doing an alignment of the 3Di sequence. (3Di sequence : 
The developers created an alphabet that captures the nearest neighbor interactions of a 
protein which is used in Foldseek to find proteins similar in structure but have very 
different protein sequences.) This tool can be used for Virus Discovery as a starting 
point to find hints on the characteristics of the Oblin the Obelisk encodes and to find 
structurally similar viruses. Foldseek is particularly valuable for viral discovery because it can identify structural homologs even when proteins share very low sequence identity (<20%)—critical for highly divergent viral proteins where sequence-based methods fail.

This tool was created as a response to the explosion of predicted 3D protein structures (Largely due to AlphaFold) and lack of an efficient search tool at the time.
The tool was successful in decreasing computation times by four to five orders of magnitude (10,000-100,000 times faster) compared to traditional structural alignment methods like TM-align and Dali, while maintaining 86% of Dali's sensitivity and 88% of TM-align's sensitivity, enabling rapid annotation of unknown viral proteins and discovery of distant evolutionary relationships across viral families.

**Tutorial Objective**: Pick up hints on how to find a protein with a structure that 
is similar to the Oblin encoded by Izumi's Obelisk, and learn to interpret Foldseek's confidence metrics (E-values, TM-scores, and LDDT) to identify true structural homologs.

## Input / Prerequisites
- [Tool Weblink](https://search.foldseek.com/)
- Required Inputs: either a protein structure (PDB/CIF), PDB accession, or protein sequence (FASTA). Foldseek accepts PDB and macromolecular crystallographic information file (mmCIF) formats, including .gz compressed files.
- The webserver provided for this tool should be enough for most users, but if you 
would like to install the tool on your computer you can refer to their GitHub for 
installation & set up. [Fold Seek GitHub](https://github.com/steineggerlab/foldseek)
- Sample Input: Izumi's Obelisk's protein sequence generated with the Biostring R 
package  [Download Here](https://drive.google.com/file/d/1oL9xgQQk4j44UJfJKJd1MtCDoJumQos5/view?usp=sharing)
- [R script used to generate the protein sequence above](https://drive.google.com/file/d/1m8uXUS3BAtTPnSg0PWIGKHg0fJr-Wiau/view?usp=sharing)
- **Installation verification (if using local installation):**

**foldseek --version**
**# Should output: foldseek Version: [version number]**

## Output

Foldseek will return a list of proteins similar in structure to the query. For each result,
the user can explore each result by looking at the protein sequence alignemnt, viewing 
the superposed 3D structure, and checking the TM score all within the online tool. 
You can also download the **PDB structure** or its **PNG** to use outside this tool in 
software such as Chimera or pymol. The output provides multiple metrics for each hit:
E-values for statistical significance, TM-scores for global structural similarity on a scale from 0-1 (1 indicating high quality), 
LDDT scores for local structure quality on a scale from 0-100 (100 incicating high quality), 
bit scores for normalized alignment quality,
sequence identity percentage, and alignment length/coverage.
Results can be downloaded in tab-separated value (TSV) format or viewed as interactive HTML
visualizations with superposed 3D structures.

### 1. Download protein sequence FASTA file & upload to Foldseek

- First, download the protein sequence FASTA file from the link provided above. 
This protein sequence was generated from the whole nucleotide sequence of Obelisk_001739_000001_000001 using the R package Biostrings. The script used for this also provided above for reference and reproducibility. 
- (new note) Better practice would be to find an open reading frame using a tool like 
ORFfinder (https://www.ncbi.nlm.nih.gov/orffinder/) and using the output protein sequence
rather than crudely converting the whole DNA sequence into a protein sequence. 
- Next, drag the FASTA file into the input box and click "Predict" for "Structure with 
ESMFold". This will call the ESMFold protein structure predictor made by Meta to predict 
the structure of the Obelisk. This step is necessary because there are no structures currently
available for this Obelisk. If there was, (for example from a previous AlphaFold run,) the 
structure from that could be used as a search query instead in Step 2 of this tutorial.

![**Figure 1. Screenshot of Foldseek when going from protein sequence to structure prediction**](img/Foldseek/predict_structure.png)

### 2. Run the search query

- After a few seconds, the sequence should be replaced by the results of ESMFold as can be seen in the image below. The "Search" button should also now be clickable, so click "Search" to continute. 
- If you are using your own data and already have a structure ready for input, you can skip Step 1 of the tutorial, upload your structure in the query box and proceed directly to Search.


![**Figure 2. Screenshot of Foldseek when submitting (predicted) protein structure as a query**](img/Foldseek/search.png)

### 3. Examine the search results

- Scrolling through the results, we see that most of the hits come from the Big Fantastic Virus Database (BFVD) set up by the Steinegger Lab containing predicted protein structure of viral sequences generated by ColabFold. [About BFVD](https://bfvd.steineggerlab.workers.dev/)
- We notice also that sequence identity is quite low, even for the hits with higher scores (click on "Numeric" to view all statistics). However, it is important to notice that for this search, we used the entire provided nucleotide sequence of the Obelisk to generate the protein sequence ignoring the start codon so with adjustments on how we generate the protein sequence, these results may differ even if we do the search on the same Obelisk.
- Let's do some exploration on the top hit. Click on the 3 bar icon under "Alignment". You should be able to move around the predictied structure of the Obelisk superposed on the predicted structure of the "uncultured Caudovirales phage". Notice that by highlighting parts of the target sequence on the left hand side of the screen you can see which parts of the structure it corresponds to (refer to screenshot below). You are also able to download this structure in PDB format as well as an image by clicking on the icons below the structure. The two circles next to those buttons extends the structure to the regions of each structure that did not align at all. 
- Highlighting some of the hits with higher matching scores, we can notice that the "uncultured Caudovirales phage" from BFDV has an overall score of 28 which is much higher than the rest of the hits and the "Dictyostelium discoideum" from the cath50 database has a TM score (a metric of similarity of two protein structure) of 0.3 which is significantly higher than the rest of the hits, despiting having a lower overall score.
- These two hits may be a good place to start for further exploration using third-party software / data.

![**Figure 3. Screenshot of Foldseek's search results page**](img/Foldseek/search_results_structure.png)



### 4. Understanding the Database Selection
When performing Foldseek searches, you can select from multiple databases depending on your research goals. The Foldseek webserver provides access to several pre-built databases:

- Big Fantastic Virus Database (BFVD): Contains predicted viral protein structures—ideal for viral discovery projects. Access at bfvd.foldseek.com
- AlphaFold/UniProt: Comprehensive database containing over 214 million predicted structures across all domains of life
- AlphaFold/Swiss-Prot: Curated subset with 542,000 high-quality annotated protein structures
- AlphaFold/Proteome: 564,000 reference proteome structures
- PDB: Experimentally determined structures from X-ray crystallography, NMR, and cryo-EM
- ESM Atlas: Over 617 million metagenomic protein structures from environmental samples
- CATH50: Clustered at 50% sequence identity for representative domain structures

For Obelisk research, BFVD is particularly valuable as it specifically targets viral sequences and may contain related viroid-like elements.


### Interpreting Results
Understanding Foldseek's output metrics is critical for distinguishing true structural homologs from spurious matches. This section explains how to interpret confidence scores and apply appropriate thresholds based on the methods described in the Foldseek Nature Biotechnology publication.

\

**How Confidence is Measured**
Foldseek uses multiple complementary metrics to assess alignment quality:

1. E-value (Expectation value): The primary statistical significance metric representing the expected number of alignments with this score or better occurring by chance in the database. E-values are calculated using an extreme-value distribution with parameters predicted by a neural network based on the 3Di sequence composition and query length. Lower E-values indicate more significant matches.
\
**Technical details from the paper:**

To reduce false positives, Foldseek subtracts the reversed query alignment score from the forward alignment score

- Compositional bias correction is applied within a local 40-residue sequence window
- The E-value estimation neural network was trained on 100,000 structures from AlphaFoldDB

2. Bit score: A normalized score that accounts for database size and scoring system, making scores comparable across different searches. Higher bit scores indicate better alignments.
3. TM-score (Template Modeling score): Measures global structural similarity on a 0-1 scale, where higher values indicate better overall structural alignment. TM-score is length-independent, making it ideal for comparing proteins of different sizes. The score is based on RMSD of aligned residues normalized by target protein length.
4. LDDT (Local Distance Difference Test): Assesses local structural similarity on a 0-100 scale. LDDT calculates for each residue the fraction of neighboring residues within a 15 Å radius that maintain similar distances between query and target structures. Higher LDDT values indicate better preservation of local geometry.
5. Structural bit score (ranking metric): Foldseek ranks hits by a "structural bit" score calculated as: alignment bit score × √(TM-score × LDDT). This combines global alignment quality, global structural similarity, and local structural accuracy into a single ranking metric.
6. Probability of homology: Foldseek reports the probability that each match represents true homology, based on a fit of true and false matches from the SCOPe structural classification database. This probability is calculated from structural bit score distributions of true positive and false positive matches.
7. Sequence identity (fident): Percentage of identical amino acids in the aligned region—useful for context but less reliable than structural metrics for divergent proteins.
8. Alignment coverage: Percentage of query and target sequences included in the alignment—important for assessing whether similarity is global or limited to specific domains.

**Significance Thresholds**

Apply these evidence-based thresholds when evaluating Foldseek results, based on benchmarks from the Foldseek publication:

E-value thresholds:

- < 10^-3: Highly significant—strong evidence of structural similarity
- < 0.01 to 0.1: Significant—likely represents true structural relationship
- 0.1-1: Borderline significance—requires manual inspection and supporting evidence
- > 1: Not significant—likely spurious match

TM-score thresholds (most reliable for assessing structural similarity):

- > 0.5: Same fold—generally indicates homology and structural relationship
- 0.3-0.5: Possible structural similarity—borderline cases requiring additional evidence from other metrics
- < 0.3: Different folds—considered false positive in Foldseek benchmarks

LDDT thresholds:

- > 80: High-quality local structural alignment
- > 60: Good local similarity—used as true positive threshold in Foldseek multi-domain benchmarks
- 0.25-0.60: Moderate similarity—requires careful evaluation
- < 0.25: Poor local similarity—considered false positive in Foldseek benchmarks

Sequence identity guidance:

- > 30%: Strong evidence of homology when combined with structural metrics
- 20-30%: Twilight zone—structural evidence becomes more important than sequence
- < 20%: Structural similarity is the primary reliable indicator (common for divergent viral proteins)


### Updated Output Figure and Interpretation
**Interpreting the Structural Alignment Output**

To complement the thresholds provided above, the figure below shows the structural superposition of the Obelisk-encoded protein (blue) aligned to the top Foldseek hit from the updated BFVD search: Achromobacter phage phiAxp-2 (A0A0K2FH39) (gold). This visualization helps contextualize the numerical confidence metrics by showing where the structures agree or diverge.

![**Figure 4. Since the creation of the previous Foldseek tutorial, the BFVD database has expanded and now returns a different top hit for the Obelisk protein. The new top hit is the Achromobacter phage phiAxp-2 protein (A0A0K2FH39), which shows a substantially higher structural alignment score (38) compared to the earlier tutorial’s top hit (score = 28).**](img/Foldseek/foldseek_updated_match.png)



#### Regions of Good Structural Agreement

The yellow–blue regions represent residues that Foldseek successfully aligned. These are areas where the backbone geometry and local neighborhood interactions are similar enough for the algorithm to consider them structurally equivalent.

In the image we observe:

- The central helical bundle shows the strongest alignment.
- The helices overlay with similar curvature and spatial orientation.
- These aligned regions contribute most to the TM-score (0.493).

#### Divergent or Unaligned Regions

The light blue and light gold segments extending outward indicate portions of each protein that Foldseek could not align.
These may represent regions predicted with low confidence by ESMFold


**Example Figure Legend for the Final Project**

Figure 4. Structural alignment between the Obelisk-encoded protein (query, blue) and the top BFVD hit Achromobacter phage phiAxp-2 protein A0A0K2FH39 (target, gold), superposed using Foldseek. The alignment reveals a moderately conserved helical core, reflected by the TM-score of 0.493 (borderline for shared fold) and RMSD of 5.31 Å across aligned residues. Unaligned regions (faded segments) represent low-confidence predictions from each model. The search was performed on November 28, 2025 using the BFVD database with default Foldseek parameters and an ESMFold-predicted Obelisk structure. This visualization demonstrates how Foldseek aligns only structurally compatible regions and how TM-score reflects global similarity between predicted viral protein structures.

**References for this phage:**

- **Achromobacter phage phiAxp-2: NCBI Taxonomy ID 1664246**
- **BFVD entry: https://bfvd.foldseek.com/cluster/A0A0K2FH39**


### Conclusion

That's it! You've used the Foldseek to find hints to uncover new leads to figure out 
what proteins may have a structure similar to the Oblin coded by Izumi's Obelisk **and learned to critically evaluate structural alignment confidence metrics using evidence-based thresholds!**
Based on the analysis in this tutorial, we now know:

- The predicted structure of the Obelisk does not match almost any **experimentally** confirmed protein or RNA structure with the exception of the hit on 
Dictyostelium discoideum (cellular slime molds). 
- The predicted structure of the Obelisk is structurally similar to the **predicted** structures of "uncultured Caudovirales phage" from BFDV and "Dictyostelium discoideum" from the cath50 database.

With this information, we can now further our exploration by searching for any available 
data on the organisms or search for any available annotations on the protein sequence region 
that aligned with the Obelisk. Hopefully, you are now comfortable using Foldseek for you Obelisk exploration as well.


### See Also:

- [Fast and accurate protein structure search with Foldseek (Nature publication for this tool)](https://www.nature.com/articles/s41587-023-01773-0)
- [Video Tutorial of Foldseek on the SBGrid Consortium YouTube Channel](https://www.youtube.com/watch?v=k5Rbi22TtOA)

Generative AI Usage Statement: This information was drafted with the use of a generative large language model (Claude, Sonnet 4.5, 2025-11-28)
