is this a good final draft? Am i forgetting any citations?

# Bridging the Biological Divide: Exploiting universal codons to viru-late the sense and antisense boundaries

**Written by:** [Neyo](https://github.com/ney0)

### *Novus bilinguis*
###Etymology:

#### Novus (Latin for New): This was chosen to show that this virus is a "new" addition to the Narnaviridae family, an undiscovered virus that brings new things to the coding table.

#### bilinguis (Latin for bilingual): This was chosen to show the viruses unique ability to translate 600+ aa protein using both the sense and antisense. The virus "speaks" both languages, forward and reverse.

## Abstract

The Narnaviridae family comprises the simplest known RNA viruses, defined by only coding an RNA-dependent RNA polymerase (RdRp). However, the recent identification of ambigrammatic narnaviruses, which have a massive, uninterrupted open reading frames (ORF) on the reverse complement strand challenge this initial assumption of genomic simplicity. Whether these ORFs are functional coding sequences or statistical artifacts remains poorly understood. I report the discovery and characterization of Novus bilinguis, a novel narnavirus identified in the transcriptome of Aspergillus hiratsukae. Although the viral genome contains a 633 amino acid reverse ORF devoid of stop codons, a feature with a calculated null probability of P ≈ 9 × 10⁻¹⁰, structural proteomics using AlphaFold 3 and IUPred2A reveal a predominantly disordered polypeptide with low confidence scores and no significant structural homology. While this lack of structure could be indicative of viral intrinsically disordered proteins (IDPs) that fold upon binding to host proteins, the absence of sequence conservation across related narnaviruses suggests an alternative hypothesis: this ORF may be a statistical artifact coming from the high-GC content needed for stability and the need to conserve for RdRp, rather than a product of selection for a functional protein.

## Results

## Ecology and Distribution

### Viral Population Structure
In order to define the species boundary, all 12 initial RNA-dependent RNA polymerase (RdRP) sequence hits given by Serratus [Edgar. 2022] were aligned using MUSCLE [Edgar. 2004, Edgar. 2022]. The alignment’s percent identity matrix, shown in Figure 1 revealed two distinct viral populations: a "Blue" cluster (sharing >95% identity) and a "Red" cluster (sharing 93-100% pairwise identity). These two clusters shared only ~50% nucleotide identity with each other, indicating they are distinct viral species. All downstream analysis was done on the "Red" cluster (the 5 samples described below) to ensure genomic assembly accuracy.

![Figure1](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/percent_identity_matrix.png?raw=true)
Figure 1: Percent Identity Matrix of the Novus bilinguis between the 12 viral samples identified by Serratus. The alignment reveals two distinct viral populations: a blue cluster (sharing >95% identity) and a red cluster (containing the assigned case, sharing 93-100% identity). The inter-cluster identity is approximately 50%, indicating both being different species. The red cluster associated with Aspergillus hiratsukae was selected for analysis.

### The Primary Host: Aspergillus hiratsukae
The serratus operational taxonomic unit (sOTU) with the highest abundance of viral genome (Coverage: >5000x) was in transcriptomes of Aspergillus hiratsukae, sequenced by the DOE Joint Genome Institute (BioProject: PRJNA459774; Runs: SRR10513243, SRR10513244). These libraries were initially created to get a better understanding of metabolic pathways of Aspergillus hiratsukae [DOE Joint Genome Institute. 2018]. Given the extremely high viral coverage, we initially define this as the primary biological host. Aspergillus genus is a promiscuous fungus commonly found in soil and on decaying organisms. Its ecological role is that of a decomposer [Samson. 2007].

### Environmental & Laboratory Contamination
The virus was also detected in three apparently unrelated datasets. However, viral coverage in these samples was much lower (<10x). Kraken2, a metagenomic sequence classifier [Wood. 2019] was used to test whether these samples also contained any known fragments of A. hiratsukae, using the co-occurrence pattern to show that these were "incidental" findings driven by the presence of the fungal host in these environments.

### Populus deltoides:
The virus was detected in the transcriptome of the Eastern Cottonwood tree Populus deltoides (SRR10433759; coverage 4x). Since A. hiratsukae are endophytes [Saied. 2024], the virus was likely derived from a fungus inside the plant tissue. Indeed, Kraken2 analysis of the raw Populus reads revealed positive hits for the Aspergillus genus. Thus, the virus likely does not infect the plant itself, it infects the fungus that infected the decaying plant surface.

### Sediment Metagenome:
The virus was detected in a sediment metagenome (SRR14039877; coverage 1x) generated by a study attempting to classify RNA viruses across China. A Kraken2 analysis on these raw reads confirmed the presence of the Aspergillus genus. This suggests the viral signal originated from dormant fungal spores or a preserved extracellular RNA in the soil. The extremely low coverage explains why the original authors, who screened 422 samples did not report this virus as it likely fell below their detection threshold [Chen. 2022].

### Laboratory Contamination:
A viral signal was identified in a related species, Aspergillus laciniosus (SRR10513285), also sequenced by the DOE JGI. Although A. laciniosus is also in genus Aspergillus, the coverage (~1x) compared to the A. hiratsukae case (>5,000x) strongly implies physical cross-contamination within the sequencing facility. Especially since both had similar number of total reads.

## The Genome
The genome of *N. bilinguis* consists of a single linear positive-sense ssRNA molecule (>2,308 bp) with a high GC content (59.4%). It is a member of the Narnaviridae family.

![Genome](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/LINEAR_MAP.png?raw=true)
Figure 2. Genome of N. bilinguis showing the sense RdRp with conserved motifs (F, A, B, C, E) and antisense "mystery" protein.


### Illumina Artifacts:
The attempts to extend the genome using SPAdes and Trinity yielded extensions that were simply Illumina adapter sequences and not actual biological event. The regions which had 100% alignment through all three assemblers were chosen as the consensus sequence.[Edgar. 2004, Bankevich. 2012, Grabherr. 2011, Illumina. 2016]

![Adapter](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/Alignment.png?raw=true)
Figure 3. Alignment showing Illumina adapter sequences (red).

### Phylogeny
Phylogenetic analysis confirms *N. bilinguis* evolved away from mitoviruses, and is a member of the *Narnaviridae* family. The tree was constructed using IQ-TREE 2 with 1000 bootstrap replicates.

![Tree](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/tree.png?raw=true)
Figure 4. Maximum likelihood phylogeny of Novus bilinguis

### RNA & Protein Structure (RdRp)

Structural analysis reveals a highly conserved catalytic core in the viral polymerase, supported by a thermodynamically stable yet globally dynamic RNA genome

![Figure_5](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/image%20(9).png?raw=true)

Figure 5. Genome structure, protein conversion of RNA-Dependent RNA Polymerase, and thermodynamic stability of Novus bilinguis.

(A) Genome organization and proteomic characterization: The viral genome has two major Open Reading Frames (>600 aa): the sense-strand RNA-dependent RNA polymerase (RdRp, 611 aa, partial CDS) and the antisense "mystery" protein. The AlphaFold 3 predicted structure of the RdRp is shown above the linear genome, highlighting conserved viral polymerase motifs: Motif F (Yellow), Motif A (Blue), Motif B (Green), Motif C (Red), and Motif E (Pink). Shannon information plots (derived from n=8 homologous sequences) quantify amino acid conservation, showing high bit scores at catalytic site like Motif C, along with some variance among some motifs. Chemical properties of the variant amino acids remained similar with exception of Motif A where serine and lysine were changed in between and Motif F where serine and two hydrophobic residues were interchanged [Abramson. 2024, Schrödinger. 2024, SnapGene. n.d., Venkataraman. 2018]. 

(B) RNA secondary structure: Minimum Free Energy (MFE) secondary structure prediction (RNAfold) reveals a highly stable scaffold (Δ G = -1286.27 kcal/mol) likely driven by high GC content (59%). Base-pair probability coloring (Red = High probability) indicates strong local folding. However, there was zero frequency of the MFE structure in the ensemble (0.00%) and high ensemble diversity (111.25) indicating a globally dynamic RNA structure. This dynamic nature likely facilitates RdRp access during replication while maintaining sufficient stability to protect the genome in the absence of a 5' cap or 3' poly-A tail due to it being a Narnavirus [Gruber. 2008].

---

## The Characterization of Mystery

One of the defining feature of *N. bilinguis* is a 633 amino acid ORF on the reverse complement strand, perfectly aligned with the RdRp. This phenomenon, known as an ambigrammatic genome [DeRisi. 2019].

## Question: Is the absence of stop codons in the reverse ORF a result of random chance?

### Probability of random chance under null:

Probability of each nucleotide:

We utilize the nucleotide probabilities directly observed from the negative strand.

$$
\begin{aligned}
P(A) &\approx 0.223, & P(U) &\approx 0.183 \\
P(G) &\approx 0.291, & P(C) &\approx 0.303
\end{aligned}
$$

Probability of a Stop Codon:

$$
\begin{aligned}
P(UAA) &= P(U) × P(A) × P(A)  \approx 0.00910 \\

P(UAG) &= P(U) × P(A) × P(G) \approx 0.01187 \\

P(UGA) &= P(U) × P(G) × P(A) \approx 0.01187
\end{aligned}
$$

Summing these independent probabilities:

$$
P(stop) = 0.00910 + 0.01187 + 0.01187 \approx 0.03284
$$

The probability under null of a stop codon with nucleotide bias is 3.28%

How many stop codons are expected in a 633 aa long stretch:

$$

n \approx  633 × 0.0328 \approx 20.78

$$
Under null you would expect at least 21 stop codons to appear in a 633 amino acid long stretch.

Probability of seeing 0 stop codons using the poisson distribution for zero events

$$
P(X=0) = e^{-20.79} \approx 9.4 × 10^{-10}
$$

∴ It is highly unlikely to get an ORF of this magnitude by random chance. This suggests the virus is likely actively selecting against stop codons in this reading frame.

### Structural Analysis of the "Mystery Protein"

To investigate the potential function of the reverse ORF product (mystery protein), a structure prediction was performed using AlphaFold. The resulting model exhibited very low confidence (pLDDT < 50) throughout most of the sequence, besides the very end.[Abramson. 2024]

![Alphafold1](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/493D7B8EC8D49F2B.png?raw=true)

Figure 6: AlphaFold 3 predicted structure of mystery protein

Analysis using IUPred2A indicated a highly disordered protein. However, it revealed that the C-terminal region possesses disorder characteristics but it has the ability to fold upon binding. The residue composition of this region was positively charged amino acids, suggesting potential electrostatic interactions with negatively charged viral components such as RNA backbone, the RdRP Motif C, or a host protein. [Mészáros. 2018]

![IUPred2A](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/bokeh_plot%20(1).png?raw=true)

Figure 7: IUPred2A analysis of the mystery protein 

The C-terminal region was isolated and re-analyzed with AlphaFold. This specific fragment yielded a structural model with significantly improved confidence (90 > pLDDT > 70), predicting a distinct mini-helix and loop motif at the end.[Abramson. 2024]

![Alpha_2](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/6B1E042EE2DCC2E3.png?raw=true)

Figure 8: AlphaFold 3 predicted structure of isolated C-terminai of mystery protein 

To test potential biological interactions, co-folding simulations were conducted for this fragment in complex with putative binding partners, including viral RNA and the viral polymerase. Both scenarios yielded low to moderate confidence models (pLDDT < 50), indicating that the specific binding interface or partner remains unconfirmed.[Abramson. 2024]

![Alpha_3](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/CE309D60E6DBE1.png?raw=true)

Figure 9: AlphaFold 3 predicted co-folding structure of isolated C-terminai of mystery protein with RdRP. At the top the disordered loop is the C termini of mystery protein.

![Alpha4](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/B3CD3D86E354869.png?raw=true)

Figure 10: AlphaFold 3 predicted co-folding structure of isolated C-terminai of mystery protein with a RNA molecule. An interacting helix did form but most of it was low confidence with moderate confidence regions at the mini-helix end. 

A sequence conservation analysis to see whether this protein is conserved across related viruses, BLASTp and tBLASTn [Altschul. 1990] searches were performed. Hits showing 22–31% identity were aligned using MUSCLE [Edgar. 2004] to screen for conserved structural motifs. No significant motifs were identified across the aligned samples. The lack of sequence homology or folding suggests the protein may be unique and the database is incomplete or the use of this ORF maybe non-coding, structural RNA function related; but the maintenance of such a large ORF implies evolutionary pressure to preserve the sequence. However, it has not escaped my notice that the sequence conservation I have postulated could just be a statistical echo from the viruses need to preserve the RdRP genetic material.

![mystery_alignment](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/alignment_of_motif_search_mystery.png?raw=true)

Figure 11: A screenshot of Mystery Protein sequence alignment with its closest neighbors. There is little to no conservation across species. The sequence is full of gaps and random mutations

### Conclusion

Initially Novus bilinguis challenged the definition of Narnaviridae as being simple RdRP coding viruses by showing the ambigrammatic nature. A 2019 paper by DeRisi et al. demonstrates that rigidly conserving of the forward strand RdRp structure gives very little room for reverse complementary strand to evolve into such a large ORF. While the authors suggest this implies evolutionary selection [DeRisi. 2019], I propose the mystery protein is likely not a functional structural protein product based on the inability of structural modeling to resolve a stable protein fold and lack of sequence conservation. It may have some function but it is unlikely to be coding related. The evolutionary pressure to maintain the RdRp sequence and high GC content on the forward strand creates an open reading frame on the reverse strand, without encoding a functional protein.

## Tweets
> **1/3**
> Real protein or ghost? 👻 The reverse strand of *Novus bilinguis* lacks stop codons (statistically very unlikely: P < 10^-10!). But MY analysis suggests this is a statistical echo: AlphaFold gave pLDDT < 50 and there’s very little conservation seen.
> ![Genome](https://github.com/ney0/VIRUSxDISCVRY/blob/main/virus/img/Novus_bilinguis/genome.png?raw=true)

> **2/3**
> Apparently Narnaviruses evolved from Mitoviruses which escaped the mitochondria. I don’t buy it: Mitoviruses rely on UGA for Tryptophan. In the cytosol, UGA = STOP. An escape would instantly make the whole polymerase useless. The evolutionary penalty is too high. 🧬

> **3/3**
> Just because it's an Open Reading Frame doesn't mean its open for business. 🛑 Evolutionary constraints on one strand can create statistical ghosts on the other. Always check your null models! #Bioinformatics #VirusDiscovery

## Methods
Tools used:
Alignment: MUSCLE
Assembly: SPAdes, Trinity
Phylogeny: IQ-TREE 2, iTOL
Structure: AlphaFold 3, Foldseek, PyMOL, IUPred2A
Taxonomy: Kraken2, Serratus

## References

1) Edgar R. C. (2004). MUSCLE: multiple sequence alignment with high accuracy and high throughput. Nucleic acids research, 32(5), 1792–1797. https://doi.org/10.1093/nar/gkh340

2) DOE Joint Genome Institute. (2018). Aspergillus hiratsukae CBS 294.93 transcriptome or transcriptome (BioProject Accession No. PRJNA459774). National Center for Biotechnology Information. https://www.ncbi.nlm.nih.gov/bioproject/PRJNA459774

3) Samson, R. A., Hong, S., Peterson, S. W., Frisvad, J. C., & Varga, J. (2007). Polyphasic taxonomy of Aspergillus section Fumigati and its teleomorph Neosartorya. Studies in mycology, 59, 147–203. https://doi.org/10.3114/sim.2007.59.14

4) Wood, D. E., Lu, J., & Langmead, B. (2019). Improved metagenomic analysis with Kraken 2. Genome biology, 20(1), 257. https://doi.org/10.1186/s13059-019-1891-0

5) Saied, E., Abdel-Maksoud, M. A., Alfuraydi, A. A., Kiani, B. H., Bassyouni, M., Al-Qabandi, O. A., Bougafa, F. H. E., Badawy, M. S. E. M., & Hashem, A. H. (2024). Endophytic Aspergillus hiratsukae mediated biosynthesis of silver nanoparticles and their antimicrobial and photocatalytic activities. Frontiers in Microbiology, 15, Article 1345423. https://doi.org/10.3389/fmicb.2024.1345423

6) Chen, Y. M., Sadiq, S., Tian, J. H., Chen, X., Lin, X. D., Shen, J. J., Chen, H., Hao, Z. Y., Wille, M., Zhou, Z. C., Wu, J., Li, F., Wang, H. W., Yang, W. D., Xu, Q. Y., Wang, W., Gao, W. H., Holmes, E. C., & Zhang, Y. Z. (2022). RNA viromes from terrestrial sites across China expand environmental viral diversity. Nature microbiology, 7(8), 1312–1323. https://doi.org/10.1038/s41564-022-01180-2

7) Ayllón, M. A., & Vainio, E. J. (2023). Mycoviruses as a part of the global virome: Diversity, evolutionary links and lifestyle. Advances in Virus Research, 115, 1–86. https://doi.org/10.1016/bs.aivir.2023.02.002

8) DeRisi, J. L., Huber, G., Kistler, A., Retallack, H., Wilkinson, M., & Yllanes, D. (2019). An exploration of ambigrammatic sequences in narnaviruses. Scientific Reports, 9(1), 17982. https://doi.org/10.1038/s41598-019-54181-3

9) Jacquat, A. G., Theumer, M. G., & Dambolena, J. S. (2023). Putative mitoviruses without in-frame UGA(W) codons: Evolutionary implications. Viruses, 15(2), 340. https://doi.org/10.3390/v15020340

10) Nibert, M. L. (2017). Mitovirus UGA(Trp) codon usage parallels that of host mitochondria. Virology, 507, 96–100. https://doi.org/10.1016/j.virol.2017.04.010

11) Sadiq, S., Chen, Y.-M., Zhang, Y.-Z., & Holmes, E. C. (2022). Resolving deep evolutionary relationships within the RNA virus phylum Lenarviricota. Virus Evolution, 8(1), veac055. https://doi.org/10.1093/ve/veac055

12) van Kempen, M., Kim, S.S., Tumescheit, C. et al. Fast and accurate protein structure search with Foldseek. Nat Biotechnol 42, 243–246 (2024). https://doi.org/10.1038/s41587-023-01773-0

13) Abramson, J., Adler, J., Dunger, J. et al. Accurate structure prediction of biomolecular interactions with AlphaFold 3. Nature 630, 493–500 (2024). https://doi.org/10.1038/s41586-024-07487-w

14) PyMOL. The PyMOL Molecular Graphics System, Version 3.0 Schrödinger, LLC.

15) Gruber, A. R., Lorenz, R., Bernhart, S. H., Neuböck, R., & Hofacker, I. L. (2008). The Vienna RNA websuite. Nucleic acids research, 36(Web Server issue), W70–W74. https://doi.org/10.1093/nar/gkn188

16) Mészáros, B., Erdos, G., & Dosztányi, Z. (2018). IUPred2A: context-dependent prediction of protein disorder as a function of redox state and protein binding. Nucleic acids research, 46(W1), W329–W337. https://doi.org/10.1093/nar/gky384

17) SnapGene software (www.snapgene.com)

18) Minh, B. Q., Schmidt, H. A., Chernomor, O., Schrempf, D., Woodhams, M. D., von Haeseler, A., & Lanfear, R. (2020). IQ-TREE 2: New Models and Efficient Methods for Phylogenetic Inference in the Genomic Era. Molecular biology and evolution, 37(5), 1530–1534. https://doi.org/10.1093/molbev/msaa015

19) Letunic, I., & Bork, P. (2021). Interactive Tree Of Life (iTOL) v5: an online tool for phylogenetic tree display and annotation. Nucleic acids research, 49(W1), W293–W296. https://doi.org/10.1093/nar/gkab301

20) Bankevich, A., Nurk, S., Antipov, D., Gurevich, A. A., Dvorkin, M., Kulikov, A. S., Lesin, V. M., Nikolenko, S. I., Pham, S., Prjibelski, A. D., Pyshkin, A. V., Sirotkin, A. V., Vyahhi, N., Tesler, G., Alekseyev, M. A., & Pevzner, P. A. (2012). SPAdes: a new genome assembly algorithm and its applications to single-cell sequencing. Journal of computational biology : a journal of computational molecular cell biology, 19(5), 455–477. https://doi.org/10.1089/cmb.2012.0021

21) Grabherr, M. G., Haas, B. J., Yassour, M., Levin, J. Z., Thompson, D. A., Amit, I., Adiconis, X., Fan, L., Raychowdhury, R., Zeng, Q., Chen, Z., Mauceli, E., Hacohen, N., Gnirke, A., Rhind, N., di Palma, F., Birren, B. W., Nusbaum, C., Lindblad-Toh, K., Friedman, N., … Regev, A. (2011). Full-length transcriptome assembly from RNA-Seq data without a reference genome. Nature biotechnology, 29(7), 644–652. https://doi.org/10.1038/nbt.1883

22) Illumina, Inc. (2016). Illumina adapter sequences (Document #1000000002694, v01). https://eurofinsgenomics.eu/media/1610545/illumina-adapter-sequences.pdf

23) Jeppe Hallgren, Konstantinos D. Tsirigos, Mads D. Pedersen, José Juan Almagro Armenteros, Paolo Marcatili, Henrik Nielsen, Anders Krogh and Ole Winther (2022). DeepTMHMM predicts alpha and beta transmembrane proteins using deep neural networks. https://doi.org/10.1101/2022.04.08.487609

24) Teufel, F., Almagro Armenteros, J.J., Johansen, A.R. et al. SignalP 6.0 predicts all five types of signal peptides using protein language models. Nat Biotechnol 40, 1023–1025 (2022). https://doi.org/10.1038/s41587-021-01156-3

25) Venkataraman, S., Prasad, B. V. L. S., & Selvarajan, R. (2018). RNA Dependent RNA Polymerases: Insights from Structure, Function and Evolution. Viruses, 10(2), 76. https://doi.org/10.3390/v10020076

26) Edgar, R.C., Taylor, B., Lin, V. et al. Petabase-scale sequence alignment catalyses viral discovery. Nature 602, 142–147 (2022). https://doi.org/10.1038/s41586-021-04332-2

27) Altschul, S.F., Gish, W., Miller, W., Myers, E.W., Lipman, D.J. (1990) “Basic local alignment search tool.” J. Mol. Biol. 215:403-410