# Identification of Hemiptinidovirus metis, a novel insect-infecting Nidovirus related to Arnidovirineae
written by: [Vedika Jha](https://github.com/vedikajha)

### Hemiptinidovirus metis
The genus *Hemiptinidovirus* is named so because it refers to Nidoviruses that infect bugs, specifically those in the order Hemiptera (which comes from Greek and means "half winged"). Many of the closest related viral species to my species (based on Rdrp BLAST results and phylogenetic trees) are unidentified Nidoviruses in Hemiptera hosts, and thus could fall into this category.

*Metis* is latin for "cunning" or "wit". I have named my virus "metis" because it appears to be pervasive among many species in different parts of the world and different studies but has avoided detection (maybe due to our lack of virome understanding, but maybe due to the virus' own cunning and wit!). An additional layer to this meaning is that in Greek mythology, Metis was the Greek goddess of wisdom who was turned into a fly (similar to how my sequence is transferred to insect hosts) and swallowed by the god Zeus.


## Abstract

Nidovirales represent a diverse order of RNA viruses that can infect many different hosts. Nidovirales include Coronaviridae, Roniviridae, and Arnidovirineae. Viruses in this order share common characteristics of having two open reading frames separated by a frameshift, which both encode for polyprotein precursors, as well as other structural proteins. There are many undiscovered or uncharacterized viruses within the Nidovirus order. Here, I present a previously unidentified virus Hemiptinidovirus metis, which infects mainly treehoppers and leafhoppers. I found that this virus is closest related to other uncharacterized Nidoviruses that infect insects, and among the Nidovirales order it is most closely related to Arnidovirineae.My results suggest that H. metis may represent a previously unidentified class of Nidovirales which have a small genome size and infect invertebrates. Other uncharacterized -- or yet to be discovered -- Nidoviruses or nido-like viruses that infect insects may fall into this class. This study demonstrates the need for characterizing more Nidoviruses from a variety of hosts to better understand the diversity of viruses. It also shows the utility of using global screens for viruses among publically available sequence data for virus discovery.

## Results

**Initial detection of Hemiptinidovirus metis**
The index case reporting the presence of this virus comes from a research group at the University of Connecticut in 2017. This group generated RNA sequencing data of the keeled treehopper (Entylia carinata) and its close leafhopper relative, the glassy-winged sharpshooter (Homalodisca vitripennis), using Illumina sequencing. The virus was found in 29 sequencing runs across both species. They later published a study containing this transcriptomics data in 2020, titled “Co-option of wing-patterning genes underlies the evolution of the treehopper helmet” [@Fisher2020]. This dataset was generated in order to explore the developmental origin of the treehopper insect's "helmet". The transcriptomes of treehoppers and leafhoppers were compared to understand their divergence overtime and the development of the "helmet" [@Fisher2020].

**Subsequent reports of Hemiptinidovirus metis**
The virus has since been identified in other sequencing runs. One project by the same group from the University of Connecticut detected the virus in 43 Illumina sequencing runs, spanning the same two species of treehopper and leafhopper. Another project out of Peking University identified the virus in 10 Illumina sequencing runs in another leafhopper species Nephotettix cincticeps, also found a sequencing run from Japan’s Agrobiological Sciences institute. Other studies have identified the virus in the red-streaked leafhopper (Balclutha rubrostriata), as well as Xibalbanus tulumensis, a venomous crustacean, and Citrus maxima, a citrus fruit. All run information above was identified from the SRA, where all sequences were pulled from in a global screen [@Sayers2022].

**Ecology of host species**
The majority of sequencing results were found in species of treehoppers and leafhoppers. These species of leafhoppers and treehoppers are native to different parts of the world such as North America, South America, and Asia, but in general these insects have been introduced to other parts of the world and are found globally [@Matsumoto2018]. Leafhoppers are known to be viral vectors, carrying viruses that can be passed onto plants, such as the Rice rice tungrovirus (from the order Picornavirales), Rice dwarf virus (from the order Reovirales), and Potato yellow dwarf virus (from the order Mononegavirales) [@Bhat2020]. Some leafhoppers including Homalodisca vitripennis can be found on citrus trees, potentially explaining how a citrus fruit species contained the virus [@Williams2017]. It remains unclear how a crustacean only found in the caves of the Yucatan peninsula in Mexico could have obtained the virus [@VR2014], but it is likely that species of leafhoppers are found around this area.

### Predicted genomic structure of H. metis

![image](/virus/img/H_metis_img/Hmetisgenome.png)
**Figure 1: Genome structure of H. metis.** The virus contains 2 ORFs connected by a ribosomal frameshift site, characteristic of Nidovirales. The ORFs contain some expected proteins such as Protease, RNA polymerase, and Helicase, but some conserved domains of Nidovirales were not detected. Additional ORFs encoding for structural proteins were not detected.

### Multiple sequence alignment and phylogenetic tree construction

I generated two alignments and resulting phylogenetic trees.

H_metis_img
![image](img/H_metis_img/Hmetisalignment.png)
**Figure 2: Sequence alignments** A: Alignment of Rdrp protein sequences of top hits from BLASTp. B: Alignment of Rdrp protein sequences from the Nidovirales order. Alignments created using Clustal W and visualized in Jalview.

The first tree and alignment is of BLASTp sequences [@Altschul1990]. BLAST results on the Rdrp sequence of H. metis returned nine sequences with query coverage greater than 80%. Percent identity of these sequences ranged from 16% to 60%. Alignment of Rdrp sequences of BLASTp hits with >80% query coverage was done using EBI's protein alignment tool Clustal W [@Sievers2011]. Alignments were visualized using Jalview [@Waterhouse2009]. Tree generation was done in IQ-TREE using the BLOSUM62+G4+I substutition model (which had the lowest BIC value when testing different models) [@Nguyen2015]. The tree was visualized using FigTree [@Rambaut2010].

The second tree and alignment aimed to identify how the unknown virus was related to other viruses in the Nidovirus order. I used the NCBI Virus search to find Rdrp sequences of Nidoviruses from each family within [@Wheeler2003]. I was unable to find sequences for Abnidovirineae, Monidovirineae, Nanidovirinae, or Tornidovirineae. For the other four families, I used Rdrp sequences that best matched the length of my virus' Rdrp (420 amino acids), as highly disparate lengths can disrupt proper alignment [@Lassmann2002]. I also included two picornavirus sequences from insects to see if the unknown virus may in fact not be a nidovirus. Alignment of Rdrp sequences was done using EBI's protein alignment tool Clustal W [@Sievers2011]. Alignments were visualized using Jalview [@Waterhouse2009]. Tree generation was done in IQ-TREE using the BLOSUM62+G4 [@Nguyen2015] substutition model (which had the lowest BIC value when testing different models). The tree was visualized using FigTree [@Rambaut2010].

![image](/img/H_metis_img/Hmetisphylogenetictrees.png)
**Figure 3: Phylogenetic trees**. A: Phylogenetic tree of Rdrp protein sequences of top hits from BLASTp. BLAST result name and NCBI taxid are listed. H. metis is more related to predicted nidoviruses and unknown viruses than predicted picornaviruses. B: Phylogenetic tree of of Rdrp protein sequences from the Nidovirales order. H. metis is cloest related to other Nidovirales and not Picornaviruses, specifically the Nidovirus family of small viruses (Arnidovirineae). Family, virus name, and host animal are listed.


## Discussion

Nidovirales are a diverse order of viruses [@GORBALENYA200617]. They vary greatly in size and proteins expressed, but are united by their conserved ORF (split into ORF 1a and 1b by a ribosomal frameshift) and their nested mRNAs [@GORBALENYA200617]. In this analysis, I show that my unknown virus, which I have named Hemiptinidovirus metis, shares many of the characteristics of Nidoviruses from the data available thus far.

H. metis' genome size is ~14kb based on the index sequence found in Entylia carinata in 2017. This matches the small class of Nidovirales. In terms of genomic structure, H. metis shows the structure of ORF1a and 1b, separated by a frameshift, according to ORF finder. InterProScan results analyzing these ORFs for known domains found a peptidase in ORF1a as well as an RNA polymerase  a helicase in ORF1b. ORF finder does not show the structural proteins, potentially because the RNA sequence is incomplete.

Top BLAST results on the Rdrp sequence of H. metis largely came from other uncharacterized virus genes, including ORFs or hypothetical proteins nido-like viruses, picorna-like viruses, or picornaviruses. These viruses were either found in insect hosts or did not have an identified host. Alignment and phylogenetic analysis of these nine sequences and H. metis showed that H. metis clusters unidentified nidoviruses, and separate from the picornaviruses, further pointing to the identity of H. metis as a nidovirus. Phylogenetic analysis of Hemiptinidovirus metis and other Nidoviruses and Picornaviruses showed that H. metis is closest related to the family Arnidoviruses. This agrees with the small genome size H. metis that also resembles Arnidoviruses.

However, Arnidoviruses are generally not found in invertebrates [@Lauber2013]. Thus, there may be an unidentified family of viruses within the Nidovirales order representing a small class that infects invertebates. The first insect nidovirus was only identified in 2011 [@Zirkel2011], and there are other viruses in this family that infect insects and are not yet characterized (including the top BLAST results). There are likely many more undiscovered Nidoviruses that infect insects that could make up this family along with H. metis.

## References

Altschul, Stephen F., Warren Gish, Webb Miller, Eugene W. Myers, and David J. Lipman. 1990. “Basic Local Alignment Search Tool.” J Mol Biol 215 (3): 403–10. https://doi.org/10.1016/S0022-2836(05)80360-2.

Bhat, Alangar Ishwara, and Govind Pratap Rao. 2020. “Transmission of Viruses by Leafhoppers.” In Characterization of Plant Viruses : Methods and Protocols, 77–82. New York, NY: Springer US. https://doi.org/10.1007/978-1-0716-0334-5_12.

Blum, Matthias, Hsin-Yu Chang, Sara Chuguransky, Tiago Grego, Swaathi Kandasaamy, Alex Mitchell, Gift Nuka, et al. 2021. “The InterPro Protein Families and Domains Database: 20 Years On.” Nucleic Acids Res 49 (D1): D344–54. https://doi.org/10.1093/nar/gkaa977.

Fisher, Christopher R, Jill L Wegrzyn, and Elizabeth L Jockusch. 2020. “Co-Option of Wing-Patterning Genes Underlies the Evolution of the Treehopper Helmet.” Nat Ecol Evol 4 (2): 250–60. https://doi.org/10.1038/s41559-019-1054-4.

Gorbalenya, Alexander E., Luis Enjuanes, John Ziebuhr, and Eric J. Snijder. 2006. “Nidovirales: Evolving the Largest RNA Virus Genome.” Virus Research 117 (1): 17–37. https://doi.org/https://doi.org/10.1016/j.virusres.2006.01.017.

King, Andrew M. Q., Michael J. Adams, Eric B. Carstens, and Elliot J. Lefkowitz, eds. 2012. “Order - Nidovirales.” In Virus Taxonomy, 784–94. San Diego: Elsevier. https://doi.org/https://doi.org/10.1016/B978-0-12-384684-6.00066-5.

Lassmann, Timo, and Erik L. L Sonnhammer. 2002. “Quality Assessment of Multiple Alignment Programs.” FEBS Letters 529 (1): 126–30. https://doi.org/https://doi.org/10.1016/S0014-5793(02)03189-7.

Lauber, Jelle J. AND Parquet, Chris AND Goeman. 2013. “The Footprint of Genome Architecture in the Largest Genome Expansion in RNA Viruses.” PLOS Pathogens 9 (7): 1–13. https://doi.org/10.1371/journal.ppat.1003500.

Matsumoto, Yu, and Makoto Hattori. 2018. “The Green Rice Leafhopper, Nephotettix Cincticeps (Hemiptera: Cicadellidae), Salivary Protein NcSP75 Is a Key Effector for Successful Phloem Ingestion.” PLoS One 13 (9): e0202492. https://doi.org/10.1371/journal.pone.0202492.

Nguyen, Lam-Tung, Heiko A. Schmidt, Arndt von Haeseler, and Bui Quang Minh. 2015. “IQ-TREE: a fast and effective stochastic algorithm for estimating maximum-likelihood phylogenies.” Mol Biol Evol 32 (1): 268–74. https://doi.org/10.1093/molbev/msu300.

Park, Gyu Jin, Adam Osinski, Gabriel Hernandez, et al. 2022. “The Mechanism of RNA Capping by SARS-CoV-2.” Nature 609: 793–800. https://doi.org/10.1038/s41586-022-05185-z.

Rambaut, Andrew. 2010. FigTree V1.3.1. Edinburgh: Institute of Evolutionary Biology, University of Edinburgh.

Sayers, Eric W, Evan E Bolton, J. Rodney Brister, Kathi Canese, Jenny Chan, Donald C Comeau, Richard Connor, et al. 2022. “Database Resources of the National Center for Biotechnology Information.” Nucleic Acids Res 50 (D1): D20–26. https://doi.org/10.1093/nar/gkab1112.

Sievers, Fabian, Andreas Wilm, David Dineen, Toby J Gibson, Kevin Karplus, Weizhong Li, Rodrigo Lopez, et al. 2011. “Fast, Scalable Generation of High-Quality Protein Multiple Sequence Alignments Using Clustal Omega.” Molecular Systems Biology 7 (1): 539. https://doi.org/https://doi.org/10.1038/msb.2011.75.

Von Reumont, Björn, Lahcen Campbell, and Ronald Jenner. 2014. “Quo Vadis Venomics? A Roadmap to Neglected Venomous Invertebrates.” Toxins 6 (December): 3488–3551. https://doi.org/10.3390/toxins6123488.

Vries, A. A. F. de, M. C. Horzinek, P. J. M. Rottier, and R. J. de Groot. 1997. “The Genome Organization of the Nidovirales: Similarities and Differences Between Arteri-, Toro-, and Coronaviruses.” Semin Virol 8 (1): 33–47. https://doi.org/10.1006/smvy.1997.0104.

Waterhouse, Andrew M., James B. Procter, David M. A. Martin, Michele Clamp, and Geoffrey J. Barton. 2009. “Jalview Version 2 - a Multiple Sequence Alignment Editor and Analysis Workbench.” Bioinformatics 25: 1189–91. https://doi.org/10.1093/bioinformatics/btp033.

Wheeler, David L., Deanna M. Church, Scott Federhen, Alex E. Lash, Thomas L. Madden, Joan U. Pontius, Gregory D. Schuler, et al. 2003. “Database Resources of the National Center for Biotechnology.” Nucleic Acids Res 31 (1): 28–33. https://doi.org/10.1093/nar/gkg033.

Williams, Douglas, and J Michael Brick. 2017. “Trends in U.S. Face-To-Face Household Survey Nonresponse and Level of Effort.” Journal of Survey Statistics and Methodology 6 (2): 186–211. https://doi.org/10.1093/jssam/smx019.

Ziebuhr, John, Eric J. Snijder, and Alexander E. Gorbalenya. 2000. “Virus-Encoded Proteinases and Proteolytic Processing in the Nidovirales.” Journal Article. Journal of General Virology 81 (4): 853–79. https://doi.org/https://doi.org/10.1099/0022-1317-81-4-853.

Zirkel, Florian, Andreas Kurth, Phenix L. Quan, Thomas Briese, Heinz Ellerbrok, Georg Pauli, Fabian H. Leendertz, et al. 2011. “An Insect Nidovirus Emerging from a Primary Tropical Rainforest.” mBio 2 (3): e00077–11. https://doi.org/10.1128/mBio.00077-11.

# Viral Short Story

Renaissance fairytale/fable

```
Once upon a time, in a faraway land called "Virome", the royal court was throwing
a ball. All the fairest viruses would be in attendance, hoping to win favour of 
the prince and enter the royal realm. All the families sent their young maidens 
and gentlemen: Adenoviridae, Coronaviridae, Herpesviridae, and countless others.
Yet among all the shimmering gowns and dazzling jewels, one maiden stood out to 
the prince as the most infectious. She was an unkown enigma, and the prince was 
enchanted -- he knew he must identify her. He rushed over to her, paying no mind
to the stares and gasps from his other guests at his breach of royal etiquette.

Over her ball gown, she was wearing an intricate cape depicting her sequence, 
unlike any other sequence the prince had seen before. There were similarities, 
the **two open reading frames** flowing down from either shoulder, **one longer** 
**than the other, likely containing multiple proteins when decoded**. Yet these 
**sequences bared little resemblance to the others**, and the prince could not 
detect her lineage. "What family are you from?" he asked her breathlessly. 
"**The Nidoviridae**" she replied coyly. The prince was puzzled -- this was a 
large family with many descendents, some of them present at the ball.

He questioned her more. "Where do you live?" "**I live amongst the treehoppers**".
The prince wracked his brain, he had seen his whole kingdom including the treehoppers,
and did not know how he could have never met her before. "Are there others like you?"
he demanded. "Yes" she began, "**there are others like me amongst tree and leafhoppers**.
**Some relatives of mine also reside among citrus plants, and crustaceans**". 

The prince blinked, and the next moment, she was gone. All he had left washer cape
with her sequence. He would have to scour the whole kingdom to find any matches 
and locate the infectious virus before she became a pandemic. "Ready my BLAST horse"
he declared, "And tell the Phylogenetic guard to stay ready. This search must commence now".
```
