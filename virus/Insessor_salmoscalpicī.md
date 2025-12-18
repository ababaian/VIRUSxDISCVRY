# Insessor Salmoscalpicī bugs the Salmon Louse: the latest head-scratcher in the increasingly animal toti-like clusterfunk.  

Written by: [Mark N. Metri](https://github.com/mnmetri4-sketch)

(https://youtu.be/9LtbfNcHAt8)

### *Insessor Salmoscalpicī*
*Insessor- Settler, occupant of.
Salmoscalpicī: Genitive (of Salmoscalpicus) Salmoscalpicus: Scalpicus->scratching, irritating of
Salmo: Salmon
Altogether: Settler/occupant of the scratch/itcher of the salmon. I chose the term Inessor rather than something more aggressive because I did not conduct any analysis to demonstrate Inessor's negative impact on the salmon louse.*

![Thumbnail](virus/img/Insessor_Salmoscalpicī/thumbnail.png)

## Abstract

Historically, the family Totiviridae (now Orthototiviridae) was characterized by double-stranded RNA (dsRNA) viruses that primarily infect fungi and protozoa (Sandlund et al. 2021). In the last two decades, the rise of next-generation sequencing (NGS), high-throughput technologies, and viral metagenomics tools such as Serratus has driven an explosion in virus discovery (Edgar et al., 2022). As a consequence, the ever-increasing discoveries of novel toti-like viruses in animals have dramatically shifted toti-like virus classification and their host boundaries (Tighe et al., 2022). Here, we characterize Insessor salmoscalpicī, a novel toti-like virus.
Insessor was initially detected by Serratus, a tool which scans short-read sequences in RNA-sequencing datasets for RNA-dependent RNA polymerase (RdRp) similarity. Serratus flagged Insessor’s RdRp palmprint in 193 RNA-seq runs across six studies, most of which conducted transcriptomics on salmon louse, while one study conducted transcriptomics on salmon louse-infected salmon skin, implicating the salmon louse as the likely host species. BLASTp searches of the RdRp palmprint demonstrate similarity to a variety of animal-infecting viruses classified as Orthototiviridae and toti-like(Supplementary data 1).
To further support these findings, the Insessor genome was assembled and annotated, revealing a 7 kb genome with two overlapping ORFs encoding a putative capsid and RdRp, respectively. Genome annotation also revealed candidates for an internal ribosome entry site (IRES), a slipping sequence, as well as 3’ and 5’ UTR characteristics. The Insessor RdRp ORF was phylogenetically analyzed by MUSCLE-alignment with BLASTp hit ORFs, the salmon-infecting totivirus PMCV, and NC Saccharomyces cerevisiae virus L-A. The phylogenetic analysis revealed Insessor and its BLASTp hits are distinct from PMCV and classical totiviruses.
These findings provide strong evidence that Insessor salmoscalpicī is a toti-like virus with the salmon louse as its primary host.}

## Results

### *Insessor salmoscalpicī* is a novel toti-like virus infecting *Lepeophtheirus salmonis*

# Initial surface-level observations

## *Insessor salmoscalpicī*’s discovery context establishes *Lepeophtheirus salmonis* as a candidate host.

My first goal was to formulate a hypothesis about which species *Insessor salmoscalpicī* infected. Out of 193 total “gluedFester” entries, 155 were found in RNA-sequencing runs of the salmon louse *Lepeophtheirus salmonis*, while 38 were found in the Atlantic salmon *Salmo salar*. At this point, I had two candidates in mind for the likely host. I hypothesized that it was more likely to be *L. salmonis*; I reasoned that if the virus infected salmon, it would be more likely to appear in RNA-seq datasets of other species. Because the salmon louse has a much narrower range of interactions as a salmon parasite, it is not surprising that *Insessor* appears in salmon RNA-sequencing. Moreover, the salmon study in which *Insessor* is found consists of salmon skin RNA-seq after infection with salmon louse. The studies provide strong circumstantial evidence in support of my hypothesis. However, to more definitively resolve my hypothesis that the host is more likely the salmon louse than the salmon itself, I needed to characterize the virus.

## BLASTp of palmID supports toti-like identity for *Insessor*.

To characterize *Insessor*, I first conducted a BLASTp search on its RdRp amino acid palmprint. The majority of the “gluedFester” samples had nearly, if not completely, identical palmprints, so I chose the palmprint corresponding to SRA run SRR12073838, due to its node coverage of 34, the highest of any run . The first ten hits corresponded to the RdRp of virus isolates named Hattula totivirus 2. Besides Hattula totivirus, 80 of the top 100 hits were identified as members of the *Orthototiviridae* family, while most others were poorly classified “toti-like” isolates . This demonstrates that the novel virus amino acid palmprint has high similarity to the RdRp of Hattula totivirus 2 and a range of other orthototiviruses and toti-like viruses. As a result of this search, I formulated another hypothesis: my novel virus possesses characteristics consistent with those of *Orthototiviridae*.

# *Insessor* *de-novo* genome assembly strengthens initial hypotheses

## *Insessor* genome annotation reveals toti-like characteristics

*Orthototiviridae* are characterized by their double-stranded RNA (dsRNA) genome. Ranging from 4.6–7 kb in length, the genome encodes two proteins: a capsid and an RdRp. The positive strand is the only expressed strand. The negative strand is transcribed to produce new dsRNA with complementary positive-strand transcripts, but it is not translated by host machinery. The term “toti” stems from the virus’s non-segmented genome, in which the capsid and RdRp open reading frames (ORFs) overlap. The capsid is more highly expressed, and RdRp translation occurs via a ribosomal frameshift, promoted by slippery sequences and secondary RNA structures (ICTV, 2024). To test my hypothesis that the novel virus belongs to the family *Orthototiviridae*, I aimed to demonstrate that it possesses the family's characteristic features. While the genome assembly and annotation depicted in question three provide evidence supporting this hypothesis, the following analyses strengthen the case for both *Insessor*’s toti-like identity and the salmon louse as its host.

## *Insessor* RdRp ORF phylogenetics supports its identification with a distinct class of recently characterized toti-like viruses.

*Orthototiviridae* traditionally infect fungi and protozoa. However, there has been a significant rise in the characterization of novel *Orthototiviridae* and toti-like viruses infecting other hosts—arthropods, crustaceans, and fish. Piscine myocarditis virus (PMCV) is a double-stranded RNA (dsRNA) virus that infects salmon; it is a rare example of an *Orthototiviridae* known to infect fish (Sandlund et al., 2021). This was a surprising finding, as I had previously hypothesized that my novel virus infected the salmon louse. To more confidently rule out Atlantic salmon as a host and further characterize my novel virus, I formulated a new hypothesis: the novel virus and its palmprint BLASTp hits are phylogenetically distinct from both PMCV and classical, well-characterized *Totiviridae*. To test this, I used MUSCLE to align the RdRp open reading frame (ORF) of PMCV with that of *Insessor* and 11 of the top 15 palmprint BLASTp hits, using the classical totivirus NC *Saccharomyces cerevisiae* virus L-A as the outgroup (Purav Gupta, MUSCLE collab). The phylogenetic tree provides evidence for *Insessor* and its BLASTp hits clustering in a clade, distinct from that of the classical totivirus and PMCV. The divergence of PMCV could suggest that it evolved later from the salmon louse or a related virus, but there is currently little evidence to support this conclusion (Fig. 1).

![Figure 1A](virus/img/Insessor_Salmoscalpicī/Fig.1A.png)

Broadly, the three phylogenetic groups display distinct genomic architectures. NC *S. cerevisiae* virus L-A is approximately 4.5 kb in length and possesses two characteristic overlapping ORFs. *Insessor* and its related sequences possess larger genomes of 6–7 kb with two slightly overlapping ORFs. The PMCV genome contains two overlapping ORFs and is about 6.5 kb in length; it also encodes a third ORF, p33, which functions as a cytotoxic chemokine (Fig. 1B). The phylogenetic distance between PMCV and *Insessor* (and the palmprint BLASTp hits) supports the hypothesis that *Insessor* does not infect *Salmo salar*. These results also provide evidence for the divergence of *Insessor* and its palmprint hits from classical *Totiviridae*.

### Characterizing the *Insessor salmoscalpicī* genome

![Figure 2A](virus/img/Insessor_Salmoscalpicī/Fig.2A.png)
**Fig.2A**: Annotation of the positive strand of *Insessor salmoscalpicī* genome. 
"Insessor_assembly" was opened in SnapGene and annotated. ORFs were determined using ORFfinder, RdRP motifs were determined as mentioned in (Fig.3). Slippery site was manually searched using command F; the site was chosen due to its position slightly upstream of the RdRP ORF.The putative downstream hairpin structure was determined by copying the 20nt sequence 10nt downstream of the slippery site into Mfold, generating the structure in (Fig.2D).The polyA signal was found by command F, the site was chosen from other candidates due to its placement in the 3' UTR. Finally GC content is depicted in the chart above the sequence.

![Figure 2B–C](virus/img/Insessor_Salmoscalpicī/Fig.2BC.png)
**Fig.2B-D**: Secondary structures of region of 5' UTR with highest IRES probability as determined by IRESpy (B), whole 3'UTR(C), and haripin 9nt downstream of slippery site (D). Secondary structures were generated using Mfold. Gibbs free energy and sequence labels are visible below structures.

![Figure 3](virus/img/Insessor_Salmoscalpicī/Fig.3.png)
**Fig.3**: Conservation of RdRP palm motifs in between *Incessor* and BLASTp hits. MUSCLE alignment was performed on "insessor RdRP hits AAs", sourced from BLASTp hits of the completed RdRP of Insessor salmoscalpicī "Insessor_RdRp_complete_AA". The alignment was then visualized using Jalview. RdRP palm motifs were determined using Alpha fold structure visualized in PYMOL "insessor_RdRP_forfold" as well as conservation within Jalview. Motifs are labeled, with Motifs A-C being highlighted in Blue, Green, and Red, respectively.


### The structural phylogeny of *Insessor salmoscalpicī* RdRp


![Figure 4](virus/img/Insessor_Salmoscalpicī/Fig.4.png)
**Fig. 4**: Predicted structure of *Insessor* RdRP. "Insessor_RdRp_complete_AA" was uploaded to AlphaFold servers, and the highest confidence .cif file was uploaded to PyMol. Motifs were determined as mentioned in (Fig.3).


![Figure 5A](virus/img/Insessor_Salmoscalpicī/Fig.5A.png)
![Figure 5B](virus/img/Insessor_Salmoscalpicī/Fig.5B.png)
**Fig.5**
In addition to using my RdRp AlphaFold results to annotate the protein, I loaded the.cif file onto FoldSeek. This generated a phylogenetic tree containing the top 1000 hits corresponding to my RdRP (A). Interestingly, the highest structural match found by FoldSeek (Aedis Aegypti virus 2) is different than the highest match found by BlastP (Hattula totivirus 2) (B).

## Discussion

{In studying *Insessor salmoscalpicī*, I have encountered what looks like a massive shift in the classification of totiviruses. It is fascinating that totiviruses went from primarily infecting fungal/protozoan hosts to infecting an increasingly diverse set of vertebrates and invertebrates. I read a handful of papers discussing this trend, and it is clear that we are still early on in uncovering large clusters of animal-infecting totiviruses. The way that totiviruses evolve to infect drastically different hosts was not intuitive to me when I first encountered it. Although they are relatively phylogenetically distant, it would be interesting to find out if PMCV descends from *Insessor* or a similar virus e due to the parasite-host relationship between salmon louse and salmon. }

## References

{
**cited in background**
Borchel A, Heggland EI, Nilsen F. The transcriptomic response of adult salmon lice (Lepeophtheirus salmonis) to reduced salinity. Comparative Biochemistry and Physiology Part D: Genomics and Proteomics. 2021;37:100778. doi:10.1016/j.cbd.2020.100778

Tighe AJ, Ruane NM, Carlsson J. Potential origins of fish toti‑like viruses in invertebrates. Journal of General Virology. 2022;103:001775. doi:10.1099/jgv.0.001775

Sandlund L, Nylund S, et al. Comparative molecular characterization of novel and known piscine toti‑like viruses. Viruses. 2021;13(6):1063. doi:10.3390/v13061063

Poulos BT, et al. Characterization of two novel toti‑like viruses co‑infecting the Atlantic blue crab (Callinectes sapidus) in its northern range of the United States. Frontiers in Microbiology. 2022;13:855750. doi:10.3389/fmicb.2022.855750

de Souza WM, et al. Metagenomic of liver tissue identified at least two genera of totivirus‑like viruses in Molossus molossus bats. Microorganisms. 2024;12(1):206. doi:10.3390/microorganisms12010206

**Papers containing *Insessor* **

Borchel A, Heggland EI, Nilsen F. The transcriptomic response of adult salmon lice (Lepeophtheirus salmonis) to reduced salinity. Comparative Biochemistry and Physiology Part D: Genomics and Proteomics. 2021;37:100778. doi:10.1016/j.cbd.2020.100778

Borchel A, Komisarczuk AZ, Nilsen F. Sex differences in the early life stages of the salmon louse Lepeophtheirus salmonis (Copepoda: Caligidae). PLoS ONE. 2022;17:e0266022. doi:10.1371/journal.pone.0266022

Cai W, Cheng Y, Wang Z, et al. Transcriptome analysis of Atlantic salmon (Salmo salar) skin in response to sea lice (Lepeophtheirus salmonis) and infectious salmon anemia virus co-infection under different functional diets. Frontiers in Immunology. 2022;12:787033. doi:10.3389/fimmu.2021.787033

Carmona-Antoñanzas G, Carmichael SN, Heumann J, Taggart JB, Gharbi K, Bron JE, et al. A survey of the ATP-binding cassette (ABC) gene superfamily in the salmon louse (Lepeophtheirus salmonis). PLoS ONE. 2015;10(9):e0137394. doi:10.1371/journal.pone.0137394

Joshi J, Flores AM, Christensen KA, Johnson H, Siah A, Koop BF. An update of the salmon louse (Lepeophtheirus salmonis) reference genome assembly. G3: Genes, Genomes, Genetics. 2022;12(6):jkac087. doi:10.1093/g3journal/jkac087

Zhou Z, Eichner C, Nilsen F, et al. A novel approach to co-expression network analysis identifies modules and genes relevant for moulting and development in the Atlantic salmon louse (Lepeophtheirus salmonis). BMC Genomics. 2021;22:832. doi:10.1186/s12864-021-08054-7

Sturm A, Carmona-Antoñanzas G, Humble JL, et al. QTL mapping provides new insights into emamectin benzoate resistance in salmon lice (Lepeophtheirus salmonis). BMC Genomics. 2024;25:1212. doi:10.1186/s12864-024-11096-2

**Resources**

Zuker M. Mfold web server for nucleic acid folding and hybridization prediction. Nucleic Acids Res. 31(13):3406–3415 (2003). https://doi.org/10.1093/nar/gkg595

Edgar RC. MUSCLE: multiple sequence alignment with high accuracy and high throughput. Nucleic Acids Res. 32(5):1792–1797 (2004). https://doi.org/10.1093/nar/gkh340

Minh BQ et al. IQ‑TREE: a fast and effective stochastic algorithm for estimating maximum‑likelihood phylogenies. Mol Biol Evol. 32:268–274 (2015). https://doi.org/10.1093/molbev/msu300

Letunic I & Bork P. Interactive Tree Of Life (iTOL) v5: an online tool for phylogenetic tree display and annotation. Nucleic Acids Res. 49(W1):W293–W296 (2021). https://doi.org/10.1093/nar/gkab301

Altschul SF et al. Basic Local Alignment Search Tool. J Mol Biol. 215:403–410 (1990). https://doi.org/10.1016/S0022-2836(05)80360-2

van Kempen M et al. Fast and accurate protein structure search with Foldseek. Nat Biotechnol. (2024). https://doi.org/10.1038/s41587-023-01773-0

Jumper J et al. Highly accurate protein structure prediction with AlphaFold. Nature. 596:583–589 (2021). https://doi.org/10.1038/s41586-021-03819-2

Waterhouse AM et al. Jalview Version 2 — a multiple sequence alignment editor and analysis workbench. Bioinformatics. 25:1189–1191 (2009). https://doi.org/10.1093/bioinformatics/btp033

The UniProt Consortium. UniProt: the Universal Protein Knowledgebase in 2023. Nucleic Acids Res. 51(D1):D523–D531 (2023). https://doi.org/10.1093/nar/gkac1049

Schrödinger, LLC. The PyMOL Molecular Graphics System, Version 3.0 (2021). https://pymol.org/support}

# Viral Short Story

```
Somwhere in the rich and spirited Natural World of the Pacifick Northwest lies *Insessor Salmoscalpicī*. Nordick Scientists, Sushi Chefs, Lox Enthusiasts, Farm-fishers, Ice-fishers, bears, and even cats possess a vested interest in the study of this elusive Creature. Our novel Totivirus is believed to infeckt the lowly,lousy and parasitick Salmon Louse. This putative Creature contains an RDRP, which any man of Reason would see as evidence for its being a Virus. The Creature's RDRP domain is typickal of many other Totiviridae, which are often known to infeckt Fungi and Crustaceans. Will *Insessor* hurt or harm our beloved Sake? The scientifick and genetickally inclined minds in Toronto will employ Bioinformatick witchcraft to find out.

```
