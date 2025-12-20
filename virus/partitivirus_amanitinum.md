# {Q1A Paper Title}
written by: [Gretl Baghdadi](https://github.com/gretlb04)

[YouTube/Video Link to your presentation video] https://youtu.be/qWHaekskyBo 

### {Q1B Virus Name}
*Partitivirus amanitinum*

[Optional: Tutorial 2 Generative AI Cover-art](img/partitivirus_amanitinum/cover.png)

## Abstract

Partitiviruses are widespread persistent double-stranded RNA viruses of fungi and plants, yet their ecological behavior and sensitivity to host physiological state remain poorly understood. Here,  the RNA virome associated with the ectomycorrhizal fungus Amanita pantherina was investigated using publicly available RNA-seq datasets generated under controlled mineral nutrient regimes, including complete nutrients, potassium limitation, phosphorus limitation, and combined stress. Serratus RdRp microassemblies were screened using a protein-guided approach to detect contigs matching a candidate partitivirus RNA-dependent RNA polymerase (RdRp). The viral lineage was detected in all twelve libraries, consistent with a persistent fungal virus. While viral presence was invariant, a coverage-weighted proxy for viral abundance varied substantially across treatments, with the highest signal observed under phosphorus limitation. Structural modeling of the RdRp using AlphaFold revealed high-confidence folding in both monomeric and trimeric configurations, suggesting potential higher-order polymerase assembly. Together, these results indicate that partitivirus activity tracks host physiological state rather than treatment identity alone, highlighting how persistent fungal viruses dynamically respond to nutrient stress.

## Results

### Ecology subsection A...


***Identification of a partitivirus-associated RdRp sequence in Amanita pantherina***

To investigate the RNA virome associated with Amanita pantherina, I analyzed publicly available RNA-seq datasets generated from fungal cultures subjected to controlled mineral nutrient conditions. These datasets consist of twelve SRA runs (SRR accessions), comprising three biological replicates for each of four treatments: no deficiency (ND), potassium deficiency (KD), phosphorus deficiency (PD), and combined potassium–phosphorus deficiency (KPD). The original study was designed to characterize fungal transcriptional responses to mineral stress, providing a controlled system to explore how viral activity may respond to host physiological state. [Taggart et al., 2023; Sun et al., 2019]

Using Serratus, these runs were previously screened for RNA-dependent RNA polymerase (RdRp) signatures, and RdRp-positive reads were assembled into per-run microassemblies. From these data, a candidate viral RdRp core sequence (approximately 120 amino acids in length) was selected as a query to guide further screening. This core region corresponds to a conserved portion of the polymerase palm domain and is suitable for detecting divergent viral homologs typical of persistent dsRNA viruses such as partitiviruses. [Edgar et al., 2022; Babaian & Edgar, 2022]

***Protein-guided screening of Serratus RdRp microassemblies***
see /virus_search

For each of the twelve runs, Serratus RdRp microassembly FASTA files were downloaded and screened using a protein-guided alignment strategy. The candidate RdRp core sequence was aligned against translated microassembly contigs using relaxed thresholds to accommodate sequence divergence. These relaxed parameters were chosen deliberately, as partitivirus RdRps often exhibit low overall sequence identity despite retaining conserved catalytic motifs.

Across all twelve runs, multiple contigs matching the RdRp core sequence were detected, with the best alignments showing a consistent alignment length (~60 amino acids) and high sequence identity to the query. The repeated recovery of closely related RdRp fragments across independent biological replicates supports the interpretation that these contigs represent a single, persistent viral lineage rather than sporadic contamination or assembly artifacts.

A representative RdRp fragment recovered from the index runs is shown below:
>node_seq
LSADWSQFDRRALFSVIDDIHDVWHSFFDWTGSYQPTNFYPDASTKPEKLQNLWDWFTYNVKHYPIALPNGDLYQWTRNGIASGYQETQLLDSWVNGVMLLTCLSQLGVDIEHKHFFKLGQDDSIV

Functional annotation of this sequence using InterProScan identified a conserved RdRP_1 family domain and RNA-directed RNA polymerase activity, consistent with a viral RdRp encoded by members of the family Partitiviridae.

***Quantification of viral signal across nutrient conditions***
see /corr_search

To move beyond simple presence–absence detection, I quantified viral signal within each run using a coverage-weighted metric. For each run, the viral signal was calculated as the sum of the product of contig length and read coverage across all contigs matching the RdRp core sequence. This approach provides a relative proxy for viral transcriptional abundance while avoiding assumptions about genome completeness or absolute viral load. [Thompson & Peersen, 2004; Xiao et al., 2014]

Using this metric, the virus was detected in all twelve runs, indicating a persistent association with Amanita pantherina regardless of nutrient condition. However, viral signal varied substantially across treatments. Phosphorus-deficient (PD) samples consistently exhibited the highest viral signal, while potassium-deficient (KD) and combined-deficiency (KPD) samples showed greater variability. No-deficiency (ND) samples displayed intermediate viral signal levels. [Sun et al., 2019]

***Ecological interpretation and hypothesis generation***

The invariant presence of the virus across all conditions is consistent with the known biology of partitiviruses, which establish persistent, often asymptomatic infections and lack an extracellular transmission phase. In contrast, the observed variation in viral signal across nutrient regimes suggests that viral transcriptional activity is modulated by host physiological state rather than by infection dynamics.

Phosphorus limitation is known to affect nucleotide metabolism, RNA synthesis, and energy balance in fungi. The elevated viral signal observed under PD conditions raises the hypothesis that partitivirus replication or RdRp activity is enhanced under altered host metabolic states. Rather than acting as an independent pathogen, this virus appears to function as a tightly coupled component of the fungal intracellular environment, responding dynamically to changes in host nutrient availability. [Sun et al., 2019]

Taken together, these observations support a model in which Partitivirus amanitinum persists across environmental conditions but modulates its activity in response to host metabolic stress, providing a clear example of virus–host ecological coupling detectable through large-scale viral discovery frameworks.

***Confidence assessment***
High confidence: Viral identity as a partitivirus RdRp; persistent presence across all datasets
Moderate confidence: Nutrient-dependent variation in viral signal
Low confidence: Mechanistic links between nutrient stress and viral replication

***other notes***
path of my research
- tblastn of db against SRR of each with provided AA node_seq (see /blast) [Gertz, et al., 2006]
why: to understand abundancy of the viral genome in each run 

- find longest open reading frame for all contigs in serratus rdrp microassembly file [Rombel et al., 2002]
why: to be able to compare with provided "canonical" viral sequence and understand sequence conservation

- multiple sequence alignment [Chenna et al., 2003]
why:
conclusion: there are few regions of this viral proteome that are conserved specifically by AA. this allows me to conclude that the sequence is not fully conserved and instead relies on common biochemical features of the amino acid sequence for its function. 


### Virus Genome {Q3}
![fig 1a](images/fig1a.png)
Figure 1.a. Schematic of the bipartite genome organization typical of the family Partitiviridae, illustrated for Partitivirus amanitinum.
Partitiviruses possess a linear, double-stranded RNA (dsRNA) genome segmented into two components. Segment 1 encodes the RNA-dependent RNA polymerase (RdRp) and is represented here based on the RdRp sequence detected in Serratus RdRp microassemblies from Amanita pantherina transcriptomes. Segment 2, which encodes the viral capsid protein, was not assembled in this study and is therefore shown as inferred based on established partitivirus genome architecture. The schematic is linearized for clarity and shown prior to protein folding or higher-order assembly. (figure made on biorender.com)
![fig 1b](images/fig1b.png)
Figure 1.b. Open reading frame (ORF) prediction across a 1,734 nucleotide viral contig recovered from Serratus RdRp microassembly data.
All six translation frames were scanned using the standard genetic code with ATG start codons. Nine candidate ORFs were identified, of which ORF6 spans 1,650 nucleotides (549 amino acids) and is substantially longer than all alternative ORFs. The length, continuity, and coding potential of ORF6 are consistent with a partial RNA-dependent RNA polymerase (RdRp) from a dsRNA virus. This longest ORF was therefore selected for downstream functional annotation, structural modeling, and comparative analyses. [Rombel et al., 2002]

![fig 2](images/fig2.png)
Figure 2. InterProScan functional annotation of a 127-amino-acid RdRp core sequence derived from Partitivirus amanitinum.
The queried RdRp core sequence corresponds to a conserved region of the viral polymerase palm domain and was identified across multiple Serratus RdRp microassemblies. InterProScan analysis assigns the sequence to the RdRP_1 family and detects conserved RNA-directed RNA polymerase domains, consistent with viral RdRp function. Gene Ontology annotations indicate RNA-directed RNA polymerase activity and RNA binding. Apparent similarity to broader DNA/RNA polymerase superfamilies reflects shared structural architecture rather than non-viral function. This conserved domain underlies subsequent structural modeling and supports classification of the virus within the family Partitiviridae. [Jones et al., 2014]

![fig 3](images/fig3.png)
Figure 3. AlphaFold structural prediction of the RdRp core from Partitivirus amanitinum modeled as a single polypeptide chain.
The 127–amino acid RdRp core sequence folds with high confidence, as indicated by uniformly high per-residue pLDDT scores and low predicted alignment error across the structure. The predicted fold consists predominantly of α-helical elements consistent with a conserved polymerase palm subdomain. The accompanying predicted alignment error (PAE) plot shows low inter-residue uncertainty, supporting a well-defined and internally consistent structure. This result confirms that the queried RdRp fragment represents a stable, independently foldable unit suitable for further oligomeric modeling. [Jumper et al., 2021; Abramson et al., 2024]

![fig 4](images/fig4.png)
Figure 4. Comparison of AlphaFold predictions for the RdRp core modeled at increasing copy numbers reveals preferential confidence for trimeric assembly.
AlphaFold was used to model the RdRp core sequence at multiple oligomeric stoichiometries, including 1, 2, 3, 4, 6, 9, and higher copy numbers. While the monomer and trimer models exhibit high confidence and coherent structural organization, assemblies not divisible by three show reduced confidence and increased predicted alignment error. Higher-order assemblies composed of multiples of three retain improved internal consistency relative to other stoichiometries. Although AlphaFold predictions cannot establish in vivo oligomerization, this pattern suggests that the RdRp core is structurally compatible with trimeric symmetry, supporting a hypothesis of higher-order polymerase assembly within viral replication complexes. [Jumper et al., 2021; Abramson et al., 2024]

### Other (bonus) sections

As a creative extension of this analysis, I explored whether structural modeling could provide insight into how viral replication responds to host nutrient state. Rather than modeling the viral RNA-dependent RNA polymerase (RdRp) as a single chain only, I systematically predicted structures at increasing oligomeric copy numbers using AlphaFold. While the RdRp core folded confidently as a monomer, models containing three copies showed similarly high confidence, whereas other stoichiometries exhibited reduced confidence and increased predicted alignment error. This pattern suggests that the RdRp is structurally compatible with trimeric assembly. Integrating this structural observation with ecological data, I propose that regulated RdRp assembly may underlie the observed nutrient-dependent variation in viral abundance, providing a hypothesis that would not be apparent from sequence or abundance analysis alone.
(see figure 3 and 4)

alt: see figure 5
![fig 5](images/fig5.png)

Figure 5. Creative schematic of the bipartite genome of Partitivirus amanitinum integrated with its ecological context.
A stylized illustration depicts the two dsRNA genome segments (RdRp and inferred capsid) alongside the host mushroom Amanita pantherina and associated mineral substrates (feldspar, apatite), symbolizing the nutrient-dependent environment in which the virus was detected. The artwork emphasizes the interaction between viral genome structure and the ecological niche of its fungal host.
This image was generated with the use of a generative large language model (ChatGPT 5.2, 2025-12-12).

## Discussion

Characterizing Partitivirus amanitinum revealed a persistent fungal virus whose presence is invariant across nutrient conditions, yet whose abundance responds dynamically to host physiology. Rather than behaving as an acute pathogen, this virus appears tightly coupled to the metabolic state of Amanita pantherina, with elevated viral signal under phosphorus limitation. Structural modeling further suggests that the viral RdRp may assemble into higher-order complexes, consistent with regulated replication rather than burst-like amplification. Together, these observations highlight partitiviruses as stable, responsive components of fungal cellular systems rather than passive genomic passengers.


## References


References
(1) Abramson J, Adler J, Dunger J, Evans R, Green T, Pritzel A, Ronneberger O, Willmore L, Ballard AJ, Bambrick J, et al. 2024. Accurate structure prediction of biomolecular interactions with AlphaFold 3. Nature. 630(8016):493–500.
(2) Babaian A, Edgar R. 2022. Ribovirus classification by a polymerase barcode sequence. PeerJ. 10:e14055.
(3) Chenna R, Sugawara H, Koike T, Lopez R, Gibson T, Higgins D, Thompson J. 2003. Multiple sequence alignment with the CLUSTAL series of programs. Nucleic Acids Res. 31:3497–500.
(4) Edgar RC, Taylor B, Lin V, Altman T, Barbera P, Meleshko D, Lohr D, Novakovsky G, Buchfink B, Al-Shayeb B, et al. 2022. Petabase-scale sequence alignment catalyses viral discovery. Nature. 602(7895):142–7.
(5) Jones P, Binns D, Chang H, Fraser M, Li W, McAnulla C, McWilliam H, Maslen J, Mitchell A, Nuka G, et al. 2014. InterProScan 5: Genome-scale protein function classification. Bioinformatics. 30(9):1236–40.
(6) Jumper J, Evans R, Pritzel A, Green T, Figurnov M, Ronneberger O, Tunyasuvunakool K, Bates R, Žídek A, Potapenko A, et al. 2021. Highly accurate protein structure prediction with AlphaFold. Nature. 596(7873):583–9.
(7) Mönttinen HAM, Ravantti JJ, Poranen MM. 2016. Common structural core of three-dozen residues reveals intersuperfamily relationships. Mol Biol Evol. 33(7):1697–710.
(8) Platt JR. 1964. Strong inference. Science. 146(3642):347–53.
(9) Rombel IT, Sykes KF, Rayner S, Johnston SA. 2002. ORF-FINDER: A vector for high-throughput gene identification. Gene. 282(1-2):33–41.
(10) Schoch CL, Ciufo S, Domrachev M, Hotton CL, Kannan S, Khovanskaya R, Leipe D, Mcveigh R, O'Neill K, Robbertse B, et al. 2020. NCBI taxonomy: A comprehensive update on curation, resources and tools. Database (Oxford). 2020:10.1093/database/baaa062.
(11) Su Hua-Poo, Youwei Y, Sridhar PG, Smith Robert F., Daniels Christopher L., Abeywickrema Pravien D., Reid John C., Marie LH, Maria K, Sujata S, et al. 2010. Structural basis for the inhibition of RNase H activity of HIV-1 reverse transcriptase by RNase H active site-directed inhibitors. J Virol. 84(15):7625–33.
(12) Sun Q, Fu Z, Finlay R, Lian B. 2019. Transcriptome analysis provides novel insights into the capacity of the ectomycorrhizal fungus amanita pantherina to weather K-containing feldspar and apatite. Appl Environ Microbiol. 85(15):e00719,19. Print 2019 Aug 1.
(13) Taggart NT, Crabtree AM, Creagh JW, Bizarria RJ, Li S, de la Higuera I, Barnes JE, Shipley MA, Boyer JM, Stedman KM, et al. 2023. Novel viruses of the family partitiviridae discovered in saccharomyces cerevisiae. PLoS Pathog. 19(6):e1011418.
(13) Thompson AA, Peersen OB. 2004. Structural basis for proteolysis‐dependent activation of the poliovirus RNA‐dependent RNA polymerase. Embo J. 23(17):3462–71.
(14) Xiao X, Cheng J, Tang J, Fu Y, Jiang D, Baker TS, Ghabrial SA, Xie J. 2014. A novel partitivirus that confers hypovirulence on plant pathogenic fungi. J Virol. 88(17):10120–33.
(15) Gertz EM, Yu Y, Agarwala R, Schäffer AA, Altschul SF. 2006. Composition-based statistics and translated nucleotide searches: Improving the TBLASTN module of BLAST. BMC Biology. 4(1):41.

(created with RefWorks)

# Viral Short Story

```
The neon haze dripped down the mycelial towers of Sector Panth-7, where nothing ever truly sleeps—especially not the fungi. I was on assignment, tracking a whisper in the data-streams: rumors of a ghost code hiding in the transcriptome logs of an Amanita syndicate. They said it wasn’t human. They said it wasn’t supposed to exist.

My break came when I caught traces of a rogue sequence—**a paired-end RNA-Seq read generated on an Illumina HiSeq 2500,** buried under layers of fungal chatter. Someone had tried to mask it, but you can’t hide everything in the neon fog.

I fed the code into my analyzer. It pulsed back instantly. A near-perfect hit: **high identity to RNA-dependent RNA polymerase sequences,** the signature enzyme no normal eukaryote should be carrying. That’s when I knew. This wasn’t fungal spillover. This was a **novel RNA virus embedded inside Amanita pantherina,** quiet and clever as a data-thief.

I dug deeper through archives and dossiers. Turns out the sequence came from **BioProject PRJNA437559, a 2019 study run by a Nanjing research crew investigating how fungi weather mineral stress.** They were looking for nutrient-uptake genes—not stowaways. But sometimes the city gives you more than you asked for.

The final clue slid into view like a knife in the dark: **the dataset had been PCR-amplified transcriptomic RNA,** meaning the virus wasn’t a contaminant. It was speaking through the fungus itself.

I lit a cigarette as the rain hissed against neon glass.
A new player had entered the fungal underworld.
And I was the only one listening.
```
