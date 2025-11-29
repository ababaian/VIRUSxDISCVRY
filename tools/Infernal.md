# Infernal
written by: [Matea Maurice](https://github.com/MAM122)
edited by: [Aruzhan Bekbolatova] (https://github.com/arubek25/VIRUSxDISCVRY)

[10 minutes] Infernal is a tool that takes in a sequence and analyzes it against 
the Rfam database to search for conserved elements in your sequence that likely 
encode for non-coding RNAs. Infernal takes a nucleotide sequence—typically
provided in FASTA format—as its input for analysis. It uses statistical models 
of RNA consensus structures (structural motifs or conserved sequences) in the database called 
covariance models (CMs) and determines if your sequence matches any of these 
conserved structures. The tool outputs a ranked list of matching RNA families, 
along with alignment coordinates and statistical scores (E-values and bit scores) 
that indicate how strongly your sequence matches each known non-coding RNA model.If 
you are looking at a new virus sequence, you can begin
to characterize it by using this tool to determine if it encodes for any 
non-coding RNAs which play vast roles in biological processes. Identifying 
conserved non-coding RNAs is important because these structured elements often 
regulate viral replication, translation, and host interactions, offering 
insights into both viral biology and potential 
therapeutic targets. Some RNA viruses encode non-coding RNA molecules 
(e.g., in this [Nature study] (https://www.nature.com/articles/cmi201786), 
the Flaviviridae genome encodes a 
non-coding RNA in its 3'UTR). By supplying a raw RNA sequence and receiving 
structured RNA family predictions in return, users can quickly determine whether 
a novel viral genome harbors functional RNA motifs that may influence 
pathogenicity or replication efficiency.

**Tutorial Objective**: We will use Infernal to determine if the sequence of a 
novel RNA virus related to the Dicistroviridae family of viruses contains 
regions that are predicted to encode for non-coding RNAs. 

## Input / Prerequisites
- Web Browser
- [Tool Weblink](https://www.ebi.ac.uk/jdispatcher/rna/infernal_cmscan)
- A nucleic acid sequence in the format described at: https://www.ebi.ac.uk/jdispatcher/docs/formats/

## Output
The identification of potential non-coding RNA families or motifs in your sequence. These will be your hits which will have a corresponding E-value, it will show the alignment of the RNA family sequence (target) to the similar region in your query sequence (specified by the start and end positions), and it will tell you the name of the RNA family or motif matched. The output will show up on the web browser and can also be downloaded as a text file. You can use it to identify any regions in your sequence that resemble known non-coding RNA families or motifs.

### 1. Navigate to https://www.ebi.ac.uk/jdispatcher/rna/infernal_cmscan

### 2. Enter Your Sequence 

Paste in your sequence. Below I have pasted in the sequence of a novel dicistrovirus. 

![](img/Infernal/Infernal_Screenshot_1.png)
**Figure 1**: Textbox for entering your sequence. 

You can copy the sequence from your fasta file into the textbox (fasta format). You can also use a sequence of a [different format](https://www.ebi.ac.uk/jdispatcher/docs/formats/) as mentioned above. 

### 3. Selecting Your Parameter

There is a dropdown menu that gives you the option of choosing either GA - gathering cutoffs, NC - noise cutoffs, or TC - trusted cutoffs as your parameter.

![](img/Infernal/Infernal_Screenshot_2.png)

**Figure 2**: The dropdown menu to choose your parameter. 

GA gives hits that are above the GA threshold which is the bit score of the lowest-scoring sequence considered part of the family. The hits that are above the threshold are considered to be more significant and reliable matches. 

NC gives hits that are below the noise cutoff. These hits are considered to be noise or false positives, thus this parameter helps to filter out the matches that occurred just by chance due to noise. 

TC gives hits that are above the trusted threshold (a higher threshold than the GA threshold). These matches are ones that are highly significant and reliable (they may be included in the hits from GA but the lower significant hits will show up in GA but not in TC). 

You can choose one of the parameters based on your preference. You can also repeat the procedure trying all three of the parameters.  

### 4. Title Your Submission and Submit

Add a title to your submission then click the submit button.

![](img/Infernal/Infernal_Screenshot_3.png)

**Figure 3**: The title and submission options on the tool.

You will then get an output in the browser that tells you that your job has been submitted and to wait. This will take a few seconds or longer.  

### 5. Analyze the results (example with no hits)

My novel virus got no hits as seen from the results below. This tells me that there are no regions in my virus that are predicted to encode for non-coding RNAs. If you get the same result, you can try submitting your sequence again using a different parameter/threshold model or you can move on to using another bioinformatics tool to characterize your novel virus. 

![](img/Infernal/Infernal_Screenshot_5.png)

**Figure 4**: The output results for the novel dicistrovirus. 

### 6. Analyze the results (example with hits)

To show an example of an output where the sequence does have hits, I submitted the sequence of the Hepatitis C virus core protein (2157 bp) into the tool. I got this sequence from the NCBI database: https://www.ncbi.nlm.nih.gov/nuccore/AH014196.2.  

![](img/Infernal/Infernal_Screenshot_6.png)

**Figure 5**: Entry of the Hepatitis C virus core protein nucleic acid sequence and selection of the TC parameter.


I got the output results below: 

![](img/Infernal/Infernal_Screenshot_7.png)

**Figure 6**: The output results for the Hepatitis C virus core protein RNA sequence. 


As seen from the results, we got four hits ranked based on the most confident (lower E-value and higher score) to the least confident hits. The region in the sequence from base pair 1 to 279 is likely to encode for IRES_HCV which is a Hepatitis C virus internal ribosome entry site. I learned this by searching "IRES_HCV" in the [Rfam database](https://rfam.org/) which is the database for non-coding RNA families and motifs. The links it provides directs you to wikipedia pages that explain the function of the non-coding RNA structure. You can repeat this for all other hits: HCV_ARF_SL, HCV_SL669, and HCV_SL588. You can also see the alignments of the non-coding RNA family or motif sequence to the region in your RNA sequence (you can see the matches and mismatches between the sequences). The middle sequence is the consensus sequence. 


![](img/Infernal/Infernal_Screenshot_8.png)

**Figure 7**: One of the wikipedia pages for IRES_HCV in the Rfam database.  

### Interpreting Results 

Infernal reports “confidence” using two statistics: the bit score and the E-value. 
The bit score is a log-odds measure that compares how likely it is that the query 
sequence matches the covariance model versus the probability that the same sequence 
would arise by chance under a null model. Conceptually, it represents 
log2( P(sequence given CM) / P(sequence given null model) ); therefore, higher 
bit scores reflect stronger similarity to a conserved ncRNA family. The E-value 
estimates how many hits with this score or better would be expected to occur by 
chance in a database of the same size, so lower E-values indicate higher 
confidence. 

In practice, hits with E-values less than 1e-5 are generally considered 
significant, values between 1e-3 and 1e-5 are borderline but may still be 
biologically relevant, and values over 1e-2 are typically considered non-significant. 
Bit scores above roughly 20–25 are often used as informal markers of meaningful 
similarity. 

For visualization in the Final Project, Infernal output can be used 
to generate a genome schematic that shows the positions of any predicted ncRNA 
hits along the viral genome, along with their bit scores or E-values. If 
no significant hits are found, the figure should clearly document this. To ensure 
reproducibility, the figure legend must include the tool name and version 
(e.g., Infernal cmscan v1.1.4), the Rfam database version used, the query 
sequence name or accession, the significance thresholds applied, all relevant 
parameters (default or custom), and the EMBL-EBI job ID or URL. An example 
figure legend would be: “Genome-wide covariance model search for conserved
non-coding RNAs using Infernal cmscan v1.1.4 against Rfam 14.10. 

No significant ncRNA families were detected (all E-values > 1e-2; 
significance threshold defined as E < 1e-5 and bit score > 20). Schematic 
shows viral genome with predicted hit positions; absence of highlighted 
regions indicates no significant matches. Analysis performed on EMBL-EBI 
Job ID: infernal_cmscan-I20251127-205358-0936-96964980-p1m.”

### Updated Output Figure for Hit 

knitr::include_graphics("infernal_figure.png")

Figure 1. Infernal cmscan analysis identifies multiple non-coding RNA elements 
in a novel Dicistroviridae-related virus sequence.

The query sequence (AH014196.2, Hepatitis C virus core protein, NS2, 
and NS5B genes, partial cds; 2,157 nt) was analyzed using Infernal v1.1.5
cmscan against the Rfam covariance model database (5 Mb filter threshold, 
4 worker threads). The linear genome representation shows the position and 
extent of four significant hits (E-value < 0.05) corresponding to conserved 
RNA structural elements identified through covariance model matching.

**Colored boxes indicate ncRNA elements:** (1) IRES_HCV internal ribosome 
entry site (positions 1-279, E-value = 4.2e-97, bit score = 309.8) shown in 
red; (2) HCV_ARF_SL alternative reading frame stem-loop (positions 410-545, 
E-value = 3.6e-31, bit score = 157.3) shown in orange; (3) HCV_SL669 non-coding 
RNA (positions 693-772, E-value = 4.1e-22, bit score = 98.2) shown in green; 
(4) HCV_SL588 non-coding RNA (positions 610-690, E-value = 1.6e-21, bit score = 
96.0) shown in blue.

All hits were identified using gathering threshold (GA) cutoffs for 
model-specific scoring. The highly significant IRES element (E-value = 4.2e-97)
represents the most conserved structural feature, consistent with its critical 
role in translation initiation in hepatitis C virus and related RNA viruses. 
The overlapping positions of HCV_SL588 and HCV_SL669 (610-690 and 693-772, 
respectively) suggest a region of complex secondary structure within the 
viral genome.

**Analysis parameters:** Model-specific thresholding with GA cutoffs, no 
HMM-only mode, database size filter set to 5.0 Mb, executed with 4 worker 
threads. The presence of multiple conserved non-coding RNA structures 
indicates functional importance of RNA secondary structure elements in this 
Dicistroviridae-related viral sequence.

### Paper that used this tool 
Infernal was originally described by Nawrocki & Eddy (2013), who demonstrated 
how covariance models can be used for fast and accurate detection of structured 
non-coding RNAs across genomes. The paper shows that Infernal 1.1 improved 
search speed nearly 100-fold while maintaining high sensitivity, enabling 
genome-scale scans for ncRNAs such as riboswitches, snoRNAs, and viral structured
elements. The authors benchmarked Infernal against other RNA homology search 
tools and used it to identify conserved RNA structures across multiple species, 
illustrating its utility in both genome annotation and comparative genomics.

Nawrocki, E. P., & Eddy, S. R. (2013).
“Infernal 1.1: 100-fold faster RNA homology searches.”
Bioinformatics, 29(22), 2933–2935.
https://doi.org/10.1093/bioinformatics/btt509

##Cool Links

https://rnacentral.org/r2dt

R2DT generates high-quality RNA secondary structure diagrams using standardized 
templates. It complements Infernal by allowing users to visualize predicted 
structured RNAs in an aesthetically clean and interpretable format.

### Conclusion

That's it! You've used the Infernal tool to determine if your sequence has any matches to non-coding RNA families or motifs!

Using this tool, you can determine if your sequence has any regions that encode for non-coding RNAs. The matches/hits that you get to non-coding RNA families or motifs can tell you information about what that region of your sequence potentially encodes for. Non-coding RNAs have vast roles in biological processes. This tool will take you one step forward towards characterizing your novel virus.

### See Also:

- [Publication Name](https://europepmc.org/article/MED/35412617)
- [Additional useful link](https://www.ebi.ac.uk/seqdb/confluence/display/THD/Infernal+cmscan)
- [Learning more about the Rfam database](https://rfam.org/)
- [Understanding E-values and Bit scores](https://www.metagenomics.wiki/tools/blast/evalue)
