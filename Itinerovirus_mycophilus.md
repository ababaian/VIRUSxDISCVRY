# Digital ecology of Itinerovirus mycophilus reveals cross-kingdom circulation between fungi and plants
written by: [Jiayi (Kenny) Man]

### Itinerovirus Mycophilus
```text
Itinerovirus
From Latin iter, itineris meaning “journey” or “road,” combined with virus.
This reflects how the mitovirus was first noticed not in a single host, but wandering through many sequencing libraries including fungi, plant, animal and human. The name emphasizes the idea that this virus is a traveler.

Mycophilus
From Greek mykes (fungus) and philos (loving).
Although it appears in plants and animal-derived samples, the sequence and context suggest a fungal origin.
```

![](virus/img/Itinerovirus_mycophilus/AI_image.png)

## Abstract

Mitoviruses are positive-strand RNA viruses that replicate in host mitochondria and are 
classically described from fungal hosts, yet their true diversity, host range, and ecological 
distributions remain unresolved in many cases. Public RNA sequencing repositories now contain vast, 
underexploited records of viral genomes and their environmental contexts, providing a route to 
revisit long-standing assumptions about these viruses. Here, we explore Itinerovirus mycophilus, 
a previously unrecognized mitovirus, and define its putative genome, phylogenetic placement, and 
digital ecology across publicly available RNA-seq datasets. We characterize the open reading frame, 
the RNA-dependent RNA polymerase domain, six conserved RdRp motifs, and an AlphaFold-predicted 
architecture consistent with a well-ordered catalytic core, firmly placing I. mycophilus within the 
family Mitoviridae. We identify I. mycophilus’s cross-kingdom presence across fungal, plant, and 
animal samples, food metatranscriptomes, and human gut communities. By applying an RPKM-based 
detection threshold to distinguish substantial viral signal from statistical noise and likely 
contamination, we find that high-abundance infections are concentrated in fungal and plant libraries, 
whereas signals in mammalian cell-line and thyroid datasets are best explained by low-level 
cross-sample contamination or protocol bias. The virus is also detected in plant samples without 
the co-occurrence of fungi. Together, the evidence suggests that I. mycophilus is a mitovirus with 
a primary fungal host, capable of moving between fungi and plants and transiting animal gut 
environments, thereby confirming the expected expansion of the ecological and host range of mitoviruses.

{Upload your video to a web platform, and include a link here (optional)}

## Results
**Ecology of Itinerovirus mycophilus**

According to the information from Serratus and the SRA, we retrieved all SRA runs
in which I. mycophilus was detected and used their metadata to analyze its digital ecology, 
that is, the relationship between the virus, its hosts, and the sampling environments 
(Table 1). This virus was identified in 12 samples, spanning 7 sample categories (five 
species plus two metagenomic sample types), and originating from 9 independent BioProjects. 


**Table 1. Summary of SRA datasets in which the novel mitovirus (u133191) was detected.**  For 
each positive run, the corresponding BioProject, publication, study description, 
sequencing technique, annotated host or sample type, and geographical locale are listed. 
Cell shading indicates the type of sample in which virus reads were identified: grey for fungi, 
green for plant, and light red for animal, including human and human gut samples.

![](virus/img/Itinerovirus_mycophilus/Summary_Table.png)

The seven sample categories that I. mycophilus is detected in are Agaricus bisporus and Neurospora crassa, Oryza sativa, 
Mus musculus and Homo sapiens, food metagenome, and human gut metagenomic communities. This means that 
I. mycophilus occurs in cross-kingdom sample types, including fungal, plant-, and animal-associated sequencing 
libraries. **We hypothesize that I. mycophilus has a genuinely broad host range and is capable of horizontal 
cross-kingdom infection across fungi, plants, and animals.**

For each sequencing run, we first obtained the corresponding FASTA assembly and screened it for 
contigs containing the conserved region of the viral protein using tblastn (BLAST+). The contig 
showing 100% amino-acid identity to the conserved viral region was selected as the candidate viral 
genome fragment. Raw FASTQ reads from each run were then mapped to this contig, and the number of 
mapped reads together with the total library size was used to calculate RPKM (reads per kilobase per 
million reads) as a proxy for within-run viral abundance. These RPKM values were used to distinguish 
runs with substantial viral signal from those most consistent with low-level contamination and 
statistical noise, and are summarized in Table 2 and visualized in Figure 1. Raw reads for 
SRR20000645 are not publicly available, so RPKM could not be calculated for this run.

**Table 2.** Summary of mitovirus abundance parameters used to calculate RPKM for each SRA run. 
Cross lines denotes low abundance runs. Reads were downloaded from the NCBI Sequence Read Archive 
using the SRA Toolkit [8], screened with BLAST+ tblastn [9], aligned with Bowtie2 [10], and processed using 
SAMtools [11].

![](virus/img/Itinerovirus_mycophilus/RPKM_summary_table.png)

![](virus/img/Itinerovirus_mycophilus/RPKM.png){width=650 height=500}

**Figure 1.**Mitovirus abundance per sequencing run grouped by sample category. Bars are colored by 
sample category: blue for fungal libraries, green for plant libraries, and red for animal associated libraries, 
including human and human gut metagenomic datasets. Plot drawn in RStudio with packages of dplyr, ggplot2 and readxl.

We defined an operational detection threshold of RPKM ≥ 2 and ≥ 20 mapped reads. Signals below this 
threshold are considered low-abundance hits that can arise from a mixture of sources, including true 
low-level infection, reagent or cross-sample contamination, and statistical noise. Therefore, we 
flagged SRR5865453, SRR3703037, SRR13572910, SRR3123539, and SRR3123547 as low-signal detections and 
examined SRA metadata, library-preparation protocols, and taxonomic composition for evidence of 
contamination. In SRR5865453 (Mus musculus primary osteoblasts), only 18 of approximately 6.9 × 10⁷ 
reads mapped to the viral contig (RPKM = 1.67), and NCBI taxonomic profiling indicates about 0.97% of 
reads are classified as fungal, consistent with a low-abundance fungal contaminant carrying the virus 
into a mammalian library. SRR13572910 and SRR3703037 are human thyroid RNA-seq libraries generated 
with the Illumina TruSeq Stranded Total RNA Sample Prep Kit with Ribo-Zero Gold on a HiSeq 2500, 
a protocol that includes rRNA and mitochondrial RNA depletion and was not designed for viral discovery. 
Although rare viral reads could in principle represent residual true viral RNA that escaped depletion, 
mitoviruses are thought to replicate in host mitochondria and would be strongly depleted by this 
workflow. The extremely low RPKM and the absence of other evidence for infection therefore make 
low-level cross-sample contamination or index mis-assignment the most parsimonious explanation. 
Lastly, SRR3123539 and SRR3123547 are Agaricus bisporus RNA-seq libraries generated using oligo-dT 
selection, which is expected to deplete non-polyadenylated mitoviral RNA. Their very low RPKM 
therefore provides only limited evidence for infection and may reflect a combination of low viral 
load and method bias rather than clear contamination.

In the remaining runs, we can observe relatively high RPKM values, suggesting potential 
genuine viral signals. These high-abundance signals are present in fungal and plant libraries, 
as well as in a human gut metagenomic sample. The human gut metatranscriptome SRR5949512 shows 
yet another configuration. Approximately two-thirds of reads in this run are bacterial, and 0.51% 
of reads are assigned to single-stranded RNA viruses, predominantly plant viruses such as Tomato 
mosaic virus and Pepper mild mottle virus. I. mycophilus is detectable at an RPKM of 10.55 in this context, 
but there is no strong fungal signal and only minimal representation of plant or human eukaryotic 
reads in the STAT summary. This taxonomic profile is most consistent with I. mycophilus being associated with 
ingested fungal or plant material transiting the gut, rather than active replication in human cells, 
and we therefore interpret it as evidence of transient carriage rather than infection of the human host. 
Together, these patterns support cross-kingdom movement of I. mycophilus between fungi and plants and motivate 
a closer examination of which taxa act as true replicative hosts. 

We further consulted the NCBI SRA Taxonomy Analysis Tool (STAT) for I. mycophilus positive runs to assess 
the co-occurrence of fungal reads and I. mycophilus [12]. In the two Agaricus bisporus RNA-seq libraries 
(SRR15044029 and SRR15044030), STAT reports that 44-60% of identified reads are classified as fungi, 
with the vast majority assigned to A. bisporus and only minor bacterial and plant contributions. 
Viruses account for 0.16-0.36% of reads, and SRR15044030 in particular exhibits one of the highest 
I. mycophilus RPKM values among all runs. The combination of a simple fungal community, strong enrichment for 
A. bisporus, and high viral abundance strongly supports the idea that fungi, specifically A. bisporus, 
are important replicative hosts of I. mycophilus. In contrast, I. mycophilus-positive plant-associated runs show different patterns. The food (salad) 
metatranscriptome ERR2819902 is taxonomically dominated by fungi with 61.4% of reads, with 
approximately half of all reads assigned to A. bisporus, while plant reads constitute only a
minor fraction. I. mycophilus RPKM is extremely high in this run, indicating that the salad sample is a 
fungal-rich environment in which A. bisporus and I. mycophilus are both abundant, consistent with a fungal
host carrying the virus within a mixed food matrix. The rice leaf total RNA-seq library SRR9916760, 
by contrast, is composed of up to 95.94% plant reads, with no fungal signal reported in the STAT 
taxonomy summary, yet I. mycophilus is detected at moderate RPKM. This pattern is compatible with plants acting 
as replicative hosts of I. mycophilus and argues against a strictly fungi-only host range. 

Taken together, these observations provide substantial support for horizontal cross-kingdom 
transmission of I. mycophilus between fungi and plants and argue against a strictly fungi-only host range. 
However, additional plant datasets and direct evidence of replication in plants will be 
required to firmly establish plant as true host.

### Virus Genome 
I. mycophilus is a previously uncharacterized virus first identified in the Serratus database with palmID u133191. 
Using the node sequence provided by Serratus under the same palmID, I queried the NCBI non-redundant 
protein database with BLASTp to obtain a preliminary characterization of this virus (Figure 2) [13]. 
The top cluster representatives show that all top hits are RNA-dependent RNA polymerases from 
mitoviruses, indicating that this virus is likely a mitovirus with an RNA genome, and the names 
in brackets with host names show that these viruses were recovered mainly from fungal hosts, 
indicating a similar ecological context. The high Max and Total scores reflect strong alignments, 
and the 100% query coverage indicates that our entire protein is homologous to these reference RdRps 
rather than only a short conserved motif. Very low E-values (10⁻³²–10⁻³⁵) show that each match is 
statistically robust, while amino-acid identities of roughly 55–61% suggest a clear but divergent 
relationship to known mitovirus polymerases.

![](virus/img/Itinerovirus_mycophilus/node_blastq_top_hits.png)
**Figure 2.**  Node sequence BLASTq top hits [13].

In the phylogenetic tree [14] obtained from the BLASTP search, I. mycophilus clusters within a well-supported clade 
of mitoviruses together with Tianjin Mitov tick virus 1 and several Rhizoctonia and Lentinula 
mitoviruses, providing strong evidence that I. mycophilus is a novel member of the family Mitoviridae, 
supporting its classification as a mitovirus (Figure 3).

![](virus/img/Itinerovirus_mycophilus/Phylogentic_Tree_From_RDRP.png)

**Figure 3.** NCBI Phylogentic Tree of I. mycophilus node sequence [14].

To find and characterize the virus genome, we first found the RdRp contig (hereafter 
referred to as contig 0) from the RdRp file provided by Serratus for run SRR9916760 (node 2). 
ORFfinder was used to predict open reading frames (ORFs) on this contig [15]. This analysis revealed 
a single long ORF (ORF0). However, the qualifiers indicated a partial stop, meaning that the 
extracted node sequence does not capture the complete ORF (Figure 4).

![](virus/img/Itinerovirus_mycophilus/ORFinder1.png)
**Figure 4.** ORF finding using ORFinder on contig 0 [15].

By downloading the FASTA file using the SRA Toolkit from the same accession run SRR9916760 on 
NCBI, we were able to find a longer contig, SRR9916760_8009 (hereafter contig 1), that contains 
contig 0, identified by direct text search. Inputting contig 1 into ORFfinder with genetic code 
4 (mold/protozoan/mitochondrial), allowing ATG and alternative start codons, and ignoring nested ORFs, 
a single ORF is identified that is 2283 nt (760 aa) long (Figure 5). This open reading frame is 
predicted, by InterProScan [16], to encode a protein with a mitovirus-like RdRp functional domain (Figure 6).

![](virus/img/Itinerovirus_mycophilus/ORFinder2.png)
**Figure 5.** ORF finding using ORFinder on contig 1 [15].

![](virus/img/Itinerovirus_mycophilus/InterProScan.png)
**Figure 6.** Predicted protein domain of contig 1 by InterProScan [16].

Contig 1, which contains a single open reading frame of the expected length for a 
mitovirus RNA-dependent RNA polymerase, was treated as the putative coding-complete genome 
of I. mycophilus in this study. We then mapped raw reads from SRA run SRR9916760 to Contig 1 to generate 
a depth-of-coverage profile, and used the RdRp domain predicted by InterProScan to annotate its 
position along the genome (Figure 7).

![](virus/img/Itinerovirus_mycophilus/coverage_genes.png)
**Figure 7.** Read coverage and putative genomic organization of contig 1 of the novel I. mycophilus 
mitovirus. Top: depth of mapped RNA-seq reads across the viral contig, showing continuous 
coverage along the ∼4.2 kb genome. Bottom: gene map indicating a 5′ untranslated region (5′UTR), 
a single long open reading frame (ORF1) containing the RNA-dependent RNA polymerase (RdRp) domain, 
and a 3′ untranslated region (3′UTR). Reads were downloaded from the NCBI Sequence Read Archive 
using the SRA Toolkit [8], aligned with Bowtie2 [10], and processed using 
SAMtools [11].Plots were created in RStudio using the packages readr, ggplot2, 
tibble, gggenes, patchwork, and grid.

Mitoviruses have six conserved amino acid motifs in their RNA-dependent RNA polymerase (RdRp), 
which are characteristic signature features of the family Mitoviridae []. To verify that, a 
multiple sequence alignment of the RdRp region from I. mycophilus and six reference mitoviruses (top BLASTp 
hits) was generated with MUSCLE [17] and visualized in Jalview using the ClustalX color scheme
(Figure 8). The alignment clearly shows the six canonical RdRp motifs (I–VI) within the mitovirus RdRp 
domain, including the highly conserved GDD tripeptide in motif IV that is characteristic of Mitoviridae.

![](virus/img/Itinerovirus_mycophilus/Top_6_alignment_with_unknown 1.png)

![](virus/img/Itinerovirus_mycophilus/Top_6_alignment_with_unknown 2.png)
**Figure 8.** Multiple sequence alignment of the RdRp region of the novel I. mycophilus mitovirus 
(unknown, red star) and six reference mitoviruses (top BLASTp hits), generated with MUSCLE 
and visualized in Jalview using the Clustal color scheme [17]. The upper panel shows motifs I and II, 
and the lower panel shows motifs III–VI, including the highly conserved GDD tripeptide in motif IV. 
Bars below the alignment indicate positional conservation, alignment quality and consensus sequence, 
confirming that the novel virus shares the six canonical RdRp motifs characteristic of the family Mitoviridae.

The tertiary structure of the RdRp domain was predicted with AlphaFold using the full ORF1 amino-acid sequence as input [18]. 
The resulting model shows a single large, globular core domain with the overall architecture expected 
for a viral RdRp and a high global confidence (pTM ≈ 0.74). Most residues in this core have very high 
pLDDT scores (>90) and low predicted aligned error, indicating a reliable fold for the catalytic region 
that contains motifs I–VI and the conserved GDD active site identified in the multiple sequence alignment. 
In contrast, the C-terminal ~150–200 residues are predicted with low confidence and appear as an extended, 
flexible tail, suggesting an intrinsically disordered or mobile region rather than an additional 
structured domain. These predictions are consistent with a mitovirus ORF that composed of 
RdRp well-ordered catalytic core and a non-catalytic, flexible extension.

![](virus/img/Itinerovirus_mycophilus/AlphaFold.png)
**Figure 9.** AlphaFold-predicted structure of ORF1 from the novel mitovirus [18].

Based on all the analysis and characterization above, features of mitovirus and observations made are summarized in Table 3.

**Table 3.** Features and observations summary of I. mycophilus mitovirus

![](virus/img/Itinerovirus_mycophilus/Feature_and_observation_summary.png)

## Discussion
By mining SRA datasets with abundance thresholds, Itinerovirus mycophilus appears at high levels in Agaricus bisporus and in rice leaves, even when fungi are not detected, indicating infections in fungi and possible replication in plants. Mitoviruses were traditionally thought to be strictly fungal, but recent publications show they can circulate across kingdoms [19,20], which is consistent with what we observe for I. mycophilus. In metagenomic and metatranscriptomic datasets, this virus often appears in complex food-associated communities where the surrounding taxonomic profile suggests it is hitchhiking on fungal and plant material rather than truly infecting animal or human cells. Future studies should use controlled infection experiments and mitochondrial-enriched, strand-specific RNA-seq in both plants and animal models to confirm which hosts support active replication. Overall, this combination of a textbook mitovirus genome with a surprisingly broad digital ecology suggests that mitochondrial RNA viruses can move along food webs, blurring boundaries between fungal, plant-, and animal-associated niches.

## References

1. S. H. Duttke et al., "Decoding transcription regulatory mechanisms associated with Coccidioides immitis phase transition using total RNA," mSystems, vol. 7, no. 1, 2022, doi: https://doi.org/10.1128/msystems.01404-21. 

2. S. H. Duttke et al., "Identification and dynamic quantification of regulatory elements using total RNA," Genome Res., vol. 29, no. 11, 2019, doi: https://doi.org/10.1101/gr.253492.119. 

3. C. Wylezich et al., "A versatile sample processing workflow for metagenomic pathogen detection," Sci. Rep., vol. 8, no. 1, 2018, doi: https://doi.org/10.1038/s41598-018-31496-1. 

4. Y. Zhang et al., "Discovery of bioactive microbial gene products in inflammatory bowel disease," Nature, vol. 606, no. 7915, 2022, doi: https://doi.org/10.1038/s41586-022-04648-7. 

5. J. F. Pelkmans et al., "The transcriptional regulator c2h2 accelerates mushroom formation in Agaricus bisporus," Appl. Microbiol. Biotechnol., vol. 100, no. 16, 2016, doi: https://doi.org/10.1007/s00253-016-7574-9. 

6. H. He et al., "Transcriptome analysis discloses dysregulated genes in normal-appearing tumor-adjacent thyroid tissues from patients with papillary thyroid carcinoma," Sci. Rep., vol. 11, 2021, doi: https://doi.org/10.1038/s41598-021-93526-9. 

7. S. Liyanarachchi et al., "Genome-wide expression screening discloses long noncoding RNAs involved in thyroid carcinogenesis," J. Clin. Endocrinol. Metab., vol. 101, no. 11, 2016, doi: https://doi.org/10.1210/jc.2016-1991.

8. R. Leinonen, H. Sugawara, and M. Shumway, "The Sequence Read Archive," Nucleic Acids Res., vol. 39, suppl. 1, pp. D19–D21, 2011, doi: https://doi.org/10.1093/nar/gkq1019.

9. C. Camacho et al., "BLAST+: architecture and applications," BMC Bioinformatics, vol. 10, p. 421, 2009, doi: https://doi.org/10.1186/1471-2105-10-421.

10. B. Langmead and S. L. Salzberg, "Fast gapped-read alignment with Bowtie 2," Nat. Methods, vol. 9, no. 4, pp. 357–359, 2012, doi: https://doi.org/10.1038/nmeth.1923.

11. H. Li et al., "The Sequence Alignment/Map format and SAMtools," Bioinformatics, vol. 25, no. 16, pp. 2078–2079, 2009, doi: https://doi.org/10.1093/bioinformatics/btp352.

12. K. S. Katz et al., “STAT: a fast, scalable, MinHash-based k-mer tool to assess Sequence Read Archive next-generation sequence submissions,” Genome Biol., vol. 22, no. 1, 2021, doi: 10.1186/s13059-021-02490-0.

13. M. Johnson et al., "NCBI BLAST: a better web interface," Nucleic Acids Res., vol. 36, Web Server issue, pp. W5–W9, 2008. Available: https://blast.ncbi.nlm.nih.gov/Blast.cgi

14. National Center for Biotechnology Information (NCBI), "NCBI Tree Viewer," Bethesda, MD, USA, 2017–. Available: https://www.ncbi.nlm.nih.gov/tools/treeviewer/

15. D. L. Wheeler et al., "Database resources of the National Center for Biotechnology Information," Nucleic Acids Res., vol. 35, suppl. 1, pp. D5–D12, 2007. (Used for ORFfinder.) Available: https://www.ncbi.nlm.nih.gov/orffinder/

16. P. Jones et al., "InterProScan 5: genome-scale protein function classification," Bioinformatics, vol. 30, no. 9, pp. 1236–1240, 2014. Available: https://www.ebi.ac.uk/interpro/

17. R. C. Edgar, "MUSCLE: multiple sequence alignment with high accuracy and high throughput," Nucleic Acids Res., vol. 32, no. 5, pp. 1792–1797, 2004. Available: https://www.drive5.com/muscle/

18. Jumper J et al., “Highly accurate protein structure prediction with AlphaFold,” Nature, vol. 596, no. 7873, pp. 583–589, 2021. Available: https://www.nature.com/articles/s41586-021-03819-2

19. Nibert, M.L., Vong, M., Fugate, K.K., Debat, H.J., “Evidence for contemporary plant mitoviruses,” Virology, 518:14–24, 2018. Available: https://pubmed.ncbi.nlm.nih.gov/29438872

20. Shahi S, Eusebio-Cope A, Kondo H, Hillman BI, Suzuki N. Investigation of host range of and host defense against a mitochondrially replicating mitovirus. J Virol. 2019;93(6):e01503-18. doi:10.1128/JVI.01503-18. Available: https://pmc.ncbi.nlm.nih.gov/articles/PMC6401429/

21. S. Shahi, A. Eusebio-Cope, H. Kondo, B. I. Hillman, and N. Suzuki, “Investigation of host range of and host defense against a mitochondrially replicating mitovirus,” Journal of Virology, vol. 93, no. 6, e01503-18, 2019. doi: 10.1128/JVI.01503-18. Available: https://pmc.ncbi.nlm.nih.gov/articles/PMC6401429/

22. Nerva, L., Vigani, G., Di Silvestre, D., Ciuffo, M., Forgia, M., Chitarra, W., Turina, M., “Biological and molecular characterization of Chenopodium quinoa mitovirus 1 reveals a distinct small RNA response compared to those of cytoplasmic RNA viruses,” Journal of Virology, 93(7):e01998-18, 2019. Available: https://pubmed.ncbi.nlm.nih.gov/30651361

23. T. Ezawa et al., “Structurally distinct mitoviruses: Are they an ancestral lineage of the Mitoviridae exclusive to arbuscular mycorrhizal fungi (Glomeromycotina)?,” mBio, vol. 14, no. 4, e00240-23, 2023. doi: 10.1128/mbio.00240-23. Available: https://journals.asm.org/doi/10.1128/mbio.00240-23

# Viral Short Story

```
The neon windows of Sector Fungi were humming when I caught the case.
The client was an anxious mycologist from the Agri Domes. Her mushrooms were clean, she said, but the databases were telling a different story. I lit a cigarette and pulled up the Serratus grid. There it was, flickering in cyan: an RNA dependent RNA polymerase encoding mitovirus from the family Mitoviridae.
Name in the file: Itinerovirus mycophilus, Serratus palmID u133191, first flagged in the reanalysis of public SRA sequencing data. No mugshot, just a barcode of amino acids and a reputation for hiding in mitochondrial back alleys.
I traced its signal through the city’s datastreams. Every time I followed the trail, I wound up in the same neighborhood: the strongest and most consistent hits came from Agaricus bisporus RNA seq runs, button mushrooms grown in endless stacks under LED suns, now harboring a ghost in their mitochondria. But the case notes had a twist. In rice leaf libraries, the virus showed up at solid RPKM with no fungal reads in sight.
The map lit up like a crime board: the same barcode turned up in rice, food metatranscriptomes, and human gut communities, with faint smudges in mouse and human thyroid datasets. If you believed the raw readouts, this little mitovirus had pulled off a cross kingdom heist, moving from fungi into plants and catching a ride through animal guts without putting down roots in human cells.
I poured another coffee and looked closer. Different labs. Different continents. Often the same kits. In my line of work, coincidences smell like bleach and plastic. The mammalian hits looked like low level contamination and protocol bias, but the mushroom farms, the rice leaves, the salad bowl, and the gut sample told a different story: a fungal primary host, a plant side gig, and a habit of traveling along the food web.
Case still open: a mitochondrial drifter haunting mushrooms, stepping into plants, and leaving its digital shadow smeared across the city’s sequencing archives like a data glitch in the rain.
```