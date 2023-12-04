[Cobalt Phylogenetic Tree.pdf](https://github.com/DerekTea/VIRUSxDISCVRY/files/13552490/Cobalt.Phylogenetic.Tree.pdf)[MGY441 A3 Virus Seq Runs.csv](https://github.com/DerekTea/VIRUSxDISCVRY/files/13552458/MGY441.A3.Virus.Seq.Runs.csv)[MGY441 A3 Virus Seq Runs.csv](https://github.com/DerekTea/VIRUSxDISCVRY/files/13552448/MGY441.A3.Virus.Seq.Runs.csv)# {Q1A Paper Title}
written by: [Derek Tea](https://github.com/DerekTea)
A Proposed Microbiota Stool Bus as a Mode of Infection for a Novel Posa-like Virus

### {Q1B Virus Name}
Virus name: Posasimilis Intestiviridae. I gave my virus this latin binomial name because it is 1) related to the unclassified family of posa-like viruses and 2) it, along with its relatives, are found in stool samples of its associated host. This relates to the story of my virus because I propose a mechanism whereby this virus, and presumably other posa-like viruses, infects the host through the gut microbiota (located in the intestinal tracts). 

Cover art:
![Posasimilis Intestiviridae](https://github.com/DerekTea/VIRUSxDISCVRY/assets/86479477/622afcb1-19f4-4040-abce-f1cd86152e35)

## Abstract

RNA viruses have become the new craze in virology. Over the past few years, an RNA virus in particular, SARS-CoV-2, was the subject of widespread media coverage and scientific inquiry. After all, it was responsible for the spread and subsequent outbreak of a novel coronavirus that has put the world to its knees. Therefore, it would be advantageous to identify and characterize viruses well before they breach wider society. Despite their notoriety in nature, we are only scratching the surface of RNA virus discovery, as much looms in Earth's undiscovered virome. We used public sequencing databases to identify novel RNA viruses through candidate RNA-dependent RNA polymerase (RdRp) sequences. We uncovered a virus, tentatively named Posasimilis Intestiviridae, that matched with rasavirus and other posa-like viruses. Previously, posa-like viruses were identified in the stool samples of their respective host organism. However, very little is known about their mechanism of action and biological relevance. Through sequence alignment tests of many viral "hit" databases, the Posasimilis Intestiviridae genome was found in microbiome-inhabitant bacteria. These results suggest a potential mode of infection whereby Posasimilis Intestiviridae infects microbiota populations in the gut and intestinal tracts. This supports the observations of posa-like viral species having only been sampled in fecal matter. Although experimental procedures are needed to validate such a proposal, it provides possible avenues to explore bacterial-viral relationships in the gut and its effects on host organisms.

## Results

The novel virus was discovered with the Serratus.io framework [Edgar, 2022]. In essence, the palmprint sequence of a detected RNA virus (which covered the RNA-dependent RNA polymerase structural motifs A, B, and C) was used to identify candidate viral RNA-dependent RNA polymerase (RdRp) sequences which correspond to a "node". The "node" identity was then cross-referenced to a database of assembled genomes to extract the full viral genome of interest. This protocol made way for the discovery of sequence runs (datasets) in which the virus is found. 

The index dataset has a run accession code of ERR3143221. Retrieved data from the EMBL-EBI database reveals that this particular sequence run originates from the paper "Discovery of novel astrovirus genotype species in small ruminants", published by Kauer et al in 2019. The study was performed in 2018 and employed Illumina sequencing on fecal matter from various ruminant species in Switzerland. This virus, tentatively named Posasimilis Intestiviridae, derives from the Capra hircus (goat) genome. The paper sought to investigate the occurrence of neurotrophic astroviruses (single-stranded, positive-sense RNA viruses) in feces to characterize and analyze novel astroviruses and to examine potential interspecies transmission. This has implications in humans because astroviruses are known to cause diarrhea, and recent studies suggest an association between astroviral infection and encephalitis. However, the only neurotrophic astroviruses identified thus far were found in ruminants. The discovery of a new virus in this context would be valuable, as it may explain the transmission and/or mechanism by which these symptoms arise in humans. Naturally, it would be wise to determine whether virus ERR3143221 is indeed an astrovirus. 

The Posasimilis Intestiviridae (ERR3143221) RdRp genomic sequence was run through Blastx (NCBI) and top hits suggest that this unknown virus is most similar to rasavirus sp, with a percent identity of ~30%. Since the virus of interest contains a candidate RdRp sequence, it is an RNA virus (Riboviria) [Venkataramen, 2018]. Rasaviruses are a species of RNA virus that is currently unclassified as very little is known of its genomic structure, mode of replication, and viral family. However, it branches off the Picornavirales order of viruses to form a cluster with other viruses - an unrecognized family known as "posa-like viruses" [Duraisamy, 2018]. Rasaviruses resemble posaviruses and other posa-like viruses, such as husavirus and fisavirus [Munnink, 2017]. The key difference is that rasaviruses are defined as rat-stool associated RNA viral genomes, whereas posaviruses (porcine stool), husaviruses (human stool), and fisaviruses (fish stool) are found in different host organisms [Munnink, 2017]. These viruses have been documented in areas around the globe, such as the USA [Shan, 2011], China [Zhang, 2014] [Han, 2020], and Vietnam [Munnink, 2017]. Although the genomic sequences of Picornavirales are highly divergent, the polyprotein sequence is usually conserved with a replication block of containing a helicase, protease, and RdRp [Han, 2020]. 

In general, posa-like viruses are not associated with disease and were first isolated in stool samples of healthy vertebrates. That is, posavirus was found in feces of healthy pigs, fisavirus in healthy carp, and husavirus in healthy humans [Munnink, 2017]. However, a study did find the presence of husavirus in children with acute gastroenteritis [Ramos, 2021]. 

To further confirm the genealogical identity of Posasimilis Intestiviridae, its viral nucleotide sequence was converted into an amino acid equivalent with the OFRfinder tool (NCBI). The program searches for an 'ATG' start codon and counts the number of codons until it reaches a stop codon. The program identified 61 OFS, with ORF38 being the longest one and spanning 3006 amino acids (Figure 1). This amino acid sequence was ran back into Blastp (NCBI) and the resulting top hit produces a similar percent identity score with rasavirus sp. It hits a polyprotein found in rasavirus, as well as other polyproteins found in posa-like viruses further down the percent identity pecking order. Moreover, this protein product is closely related to other posa-like virus RdRps via the phylogenetic tree in NCBI (Figure 2). This provides further evidence that the virus of interest is a posa-like virus because amino acid similarity is often less than 40% within this group [Munnink, 2017]. 

Subsequent analysis into the other hit datasets may point to a viral mechanism of action by which this RNA virus ends up in its host organism. Whilst some datasets did not produce any candidate RdRp sequences, those datasets were all derived from sources related to fecal matter communities, with the exception of one (SRR3056448). Of the runs that did produce a candidate RdRp sequence, Blastx (NCBI) was used to isolate alignment top hits. 

In addition to dataset ERR3143221, the Posasimilis Intestiviridae was also found in dataset ERR3143231, which belongs to the same study by Kauer et al. Notably, the source of this hit was Ovis aries (sheep) fecal matter rather than goat. Ensuing Blastx alignment tests match the candidate RdRp sequence with Caudovirales sp., Lachnospiraceae bacterium, and Bacteroidales bacterium as the top hits. These hits are peculiar as the percent identity score is two-fold greater compared to rasavirus sp. of the previous analysis. Furthermore, these hits are vastly different than posa-like viruses. For instance, Caudovirales sp. is species of virus within the Caudovirales order, a classification of double-stranded DNA bacteriophages [Tisza, 2021]. It could be that Posasimilis intestinum is an RNA bacteriophage. However, the known classes of RNA bacteriophages to date, Leviviridae (single-stranded RNA viruses) [Tars, 2020] and Cystoviridae [Mantynen, 2023], were not among the alignment match hits. Nonetheless, it remains a possibility that our virus of interest is in actuality an RNA bacteriophage that is evolutionarily related to double-stranded DNA bacteriophages. This proposal is supported by the Lachnospiraceae and Bacteroidales bacterium matches. Lachnospiraceae is abundant in the digestive tracts of mammals, humans included [Meehan, 2014], and Bacteroidales have been documented in the gastrointestinal tracts of homeothermic animals [Ormerod, 2016]. These bacteria are considered members of their host microbiome and could act as an avenue for which the virus of interest penetrates into the resulting fecal matter. The theory that posaviruses may infect a third-party rather than the host itself has previously been explored. Blast analysis of posavirus sequences has shown similarity to RNA sequences from a sample of the parasite Ascaris suum [Munnink, 2017]. 

The proposal for a bacterial-mediated entry into the host organism is reflected by the results from another dataset, SRR5830110 (accessible via the SRA database). The sample containing the Posasimilis Intestiviridae hit derives from the fecal community of Tule Elk. Blastx analysis matches the virus with Caudovirales sp. and Candidatus Scalindua sp. as the top hits. The presence of Caudovirales may strengthen the notion that our virus of interest operates in a bacteriophage-like manner. Moreover, Candidatus Scalindua is a genus of marine-associated bacteria first discovered in a waster water treatment plant [Schmid, 2003]. This highlights the capacity for Posasimilis intestinum to infect bacteria, specifically bacteria that may be found in the water supply of wild-life. 

All figures and related information pertaining to dataset runs and Posa can be found in the "MGY441 A3 Virus Seq Runs" csv file.
[Uploading MGY441 A3 Virus Seq Runs.csv…]()

### Ecology subsection A...

Facts about Posa-like viruses:
Posa-like viruses have an RNA genome (Riboviria) [Munnink, 2017]
- Posa-like viruses have a positive-sense genome [Munnink, 2017]
- Posa-like viruses have a single-stranded genome [Munnink, 2017]
- They are non-enveloped RNA viruses [Aoki, 2019]
- They are small and typically approximately 30 nm in diameter [Yinda, 2017]
- These viruses are an unclassified family of the Picornavirales order [Munnink, 2017]
- The length of Picornavirales viruses typically range from 7.2 to 10.2kb [Han, 2020]
- Posa-like viruses are typically around 2500-3000 amino acids in length [Han, 2020]
- Viruses within the Picornavirales order are highly diverse, but typically encode a polyprotein composed of a conserved replication block. This replication block contains a helicase, protease, and a RNA-dependent RNA polymerase [Han, 2020]
- Generally, members of the Picornavirales order are monopartite (all genes are on a single nucleic acid strand) [Munnink, 2017]
- Posa-like viruses are found in stool samples of various host organisms (posavirus in pigs, hursavirus in humans, rasavirus in rats, fisavirus in fish) [Munnink, 2017]
- They have been found to infect vetebrates and invertebrates [Han, 2020]
- Posa-like viruses are generally not associated with pathogenic traits and are typically found in the stool samples of healthy organisms [Munnink, 2017]
- Posa-like viruses have a broad genetic diversity as amino acid similarity is often less than 40% [Munnink, 2017]
- There are 3 main genomic organizations within Picornavirales [Han, 2020]
1) Non-structural module located at the 5' end, structural module located at the 3' end, intergenic region in between
2) The two modules are located in separate genomic segments 
3) Non-structural module located at the 3' end, structural module located at the 5' end, intergenic region in between
- The in Picornavirales genome, the RNA is linked to the viral protein at its 5' end [Jiang, 2014]
- Picornavirales have a poly-A at its 3' end [Jiang, 2014]
- The OFR of the Picornavirales genome is flanked by a long 5' non-translated region and a short 3' non-translated region [Jiang, 2014]
- A prominent conserved RNA secondary structure among Picornavirales includes an internal ribosomal entry site (IRES) towards the 5' end [Witwer, 2015]
- Picornavirales have a capsid protein with icosahedral symmetry [Jiang, 2014]

### Virus Genome {Q3}

[MGY441 A3 Viral Genome.pdf](https://github.com/DerekTea/VIRUSxDISCVRY/files/13552439/MGY441.A3.Viral.Genome.pdf)

### Other (bonus) sections

**Predicted 3D Structure**
![Phyre2 3D Structure Motifs](https://github.com/DerekTea/VIRUSxDISCVRY/assets/86479477/5ffb69be-11b9-469f-aade-7a391094007b)

**Predicted Phylogenetic Lineage**
[%PDF-1.7
%����������
27 0 obj
<</Author(National Center for Biotechnology Information)/Creator(NCBI Genome Workbench http://www.ncbi.nlm.nih.gov/tools/gbench/)/Producer(NCBI PDF Generator)/Title()>>

endobj
28 0 obj
<</Outlines 29 0 R/PageLabels<</Nums[0<</S/D/P(Panel )>>]>>/PageLayout/SinglePage/PageMode/UseNone/Pages 25 0 R/Type/Catalog/ViewerPreferences<</DisplayDocTitle true>>>>

endobj
29 0 obj
<</Count 0/Type/Outlines>>

endobj
32 0 obj
<</CA 1/Type/ExtGState/ca 1>>

endobj
33 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
35 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
37 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
0086177999666666
0086178665666666
007B787DA5666666
017B788259666666
017B087DDE666666
017B088220666666
017AA67E2D666666
017AA681D1666666
017A557E90666666
017A55816E666666
017A197F01666666
017A1980FD666666
0179F37F7E666666
0179F38080666666
0179E77FFF666666
 >
endstream
endobj
39 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
41 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
43 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
45 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
47 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
49 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -10 11 -10 10  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 257/ShadingType 4>>

stream
008617799900FF00
008617866500FF00
007B787DA500FF00
017B78825900FF00
017B087DDE00FF00
017B08822000FF00
017AA67E2D00FF00
017AA681D100FF00
017A557E9000FF00
017A55816E00FF00
017A197F0100FF00
017A1980FD00FF00
0179F37F7E00FF00
0179F3808000FF00
0179E77FFF00FF00
 >
endstream
endobj
51 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -200 200 -200 200  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 716/ShadingType 4>>

stream
007FAD8051FFFFFF
0080A37FFF666666
0080A18019666666
02809B8032666666
0280918049666666
028084805F666666
0280738073666666
02805F8084666666
0280498091666666
028032809B666666
02801980A1666666
027FFF80A3666666
027FE580A1666666
027FCC809B666666
027FB58091666666
027F9F8084666666
027F8B8073666666
027F7A805F666666
027F6D8049666666
027F638032666666
027F5D8019666666
027F5B7FFF666666
027F5D7FE5666666
027F637FCC666666
027F6D7FB5666666
027F7A7F9F666666
027F8B7F8B666666
027F9F7F7A666666
027FB57F6D666666
027FCC7F63666666
027FE57F5D666666
027FFF7F5B666666
0280197F5D666666
0280327F63666666
0280497F6D666666
02805F7F7A666666
0280737F8B666666
0280847F9F666666
0280917FB5666666
02809B7FCC666666
0280A17FE5666666
0280A37FFF666666
 >
endstream
endobj
53 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -200 200 -200 200  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 716/ShadingType 4>>

stream
007FAD8051FFFFFF
0080A37FFF00FF00
0080A1801900FF00
02809B803200FF00
028091804900FF00
028084805F00FF00
028073807300FF00
02805F808400FF00
028049809100FF00
028032809B00FF00
02801980A100FF00
027FFF80A300FF00
027FE580A100FF00
027FCC809B00FF00
027FB5809100FF00
027F9F808400FF00
027F8B807300FF00
027F7A805F00FF00
027F6D804900FF00
027F63803200FF00
027F5D801900FF00
027F5B7FFF00FF00
027F5D7FE500FF00
027F637FCC00FF00
027F6D7FB500FF00
027F7A7F9F00FF00
027F8B7F8B00FF00
027F9F7F7A00FF00
027FB57F6D00FF00
027FCC7F6300FF00
027FE57F5D00FF00
027FFF7F5B00FF00
0280197F5D00FF00
0280327F6300FF00
0280497F6D00FF00
02805F7F7A00FF00
0280737F8B00FF00
0280847F9F00FF00
0280917FB500FF00
02809B7FCC00FF00
0280A17FE500FF00
0280A37FFF00FF00
 >
endstream
endobj
69 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ 928 1842 -721 -592  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 70/ShadingType 4>>

stream
0002F011E3FFFF00
00FD5811E3FFFF00
0002F0EA94FFFF00
01FD58EA94FFFF00
 >
endstream
endobj
72 0 obj
<</BitsPerComponent 8/BitsPerCoordinate 16/BitsPerFlag 8/ColorSpace/DeviceRGB/Decode [ -5 121 5 55  0 1 0 1 0 1 ]/Filter/ASCIIHexDecode/Length 70/ShadingType 4>>

stream
0014513333B2B2B2
00EC763333B2B2B2
001451CCCCB2B2B2
01EC76CCCCB2B2B2
 >
endstream
endobj
73 0 obj
<</CA 0.4/Type/ExtGState/ca 0.4>>

endobj
76 0 obj
<</CA 0.6/Type/ExtGState/ca 0.6>>

endobj
31 0 obj
<</Length 2419>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
1 1 1 RG
1 w
1 J
1 j
[] 0 d
/A100 gs 
0.6 0.6 0.6 RG
8.145146 235.05687 m 8.145146 270.220459 l s
8.145146 270.220459 m 106.110344 270.220459 l s
8.145146 235.05687 m 8.145146 199.893295 l s
8.145146 199.893295 m 106.110405 199.893295 l s
106.110405 199.893295 m 106.110405 248.993866 l s
106.110405 248.993866 m 191.218552 248.993866 l s
106.110405 199.893295 m 106.110405 150.79274 l s
106.110405 150.79274 m 109.877686 150.79274 l s
109.877686 150.79274 m 109.877686 217.2267 l s
109.877686 217.2267 m 137.770279 217.2267 l s
109.877686 150.79274 m 109.877686 84.358772 l s
109.877686 84.358772 m 121.873077 84.358772 l s
137.770279 217.2267 m 137.770279 227.767258 l s
137.770279 227.767258 m 201.362396 227.767258 l s
137.770279 217.2267 m 137.770279 206.686157 l s
137.770279 206.686157 m 148.075348 206.686157 l s
121.873077 84.358772 m 121.873077 155.932922 l s
121.873077 155.932922 m 134.780899 155.932922 l s
121.873077 84.358772 m 121.873077 12.784616 l s
121.873077 12.784616 m 139.079376 12.784616 l s
134.780899 155.932922 m 134.780899 181.725159 l s
134.780899 181.725159 m 226.737839 181.725159 l s
134.780899 155.932922 m 134.780899 130.140686 l s
134.780899 130.140686 m 149.270218 130.140686 l s
149.270218 130.140686 m 149.270218 161.994751 l s
149.270218 161.994751 m 308.924438 161.994751 l s
149.270218 130.140686 m 149.270218 98.286621 l s
149.270218 98.286621 m 158.440048 98.286621 l s
158.440048 98.286621 m 158.440048 139.303574 l s
158.440048 139.303574 m 168.459915 139.303574 l s
158.440048 98.286621 m 158.440048 57.269676 l s
158.440048 57.269676 m 165.917526 57.269676 l s
165.917526 57.269676 m 165.917526 77.901848 l s
165.917526 77.901848 m 171.043655 77.901848 l s
165.917526 57.269676 m 165.917526 36.637508 l s
165.917526 36.637508 m 169.536179 36.637508 l s
171.043655 77.901848 m 171.043655 99.435776 l s
171.043655 99.435776 m 173.552826 99.435776 l s
171.043655 77.901848 m 171.043655 56.367912 l s
171.043655 56.367912 m 285.82663 56.367912 l s
173.552826 99.435776 m 173.552826 114.496895 l s
173.552826 114.496895 m 219.443222 114.496895 l s
173.552826 99.435776 m 173.552826 84.374664 l s
173.552826 84.374664 m 202.759384 84.374664 l s
202.759384 84.374664 m 202.759384 94.415405 l s
202.759384 94.415405 m 219.853363 94.415405 l s
202.759384 84.374664 m 202.759384 74.333916 l s
202.759384 74.333916 m 227.890549 74.333916 l s
Q
endstream
endobj
34 0 obj
<</Length 133>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
25.587323477773 0 0 13.426786384202 189.218558671115 248.99386126163  cm

/A100 gs 
/sh0 sh
Q
endstream
endobj
36 0 obj
<</Length 134>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
28.610345178517 0 0 13.279918768657 146.075350827099 206.686153001416  cm

/A100 gs 
/sh1 sh
Q
endstream
endobj
38 0 obj
<</Length 133>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
27.277970475882 0 0 12.161372575073 137.079376698286 12.784616688273  cm

/A100 gs 
/sh2 sh
Q
endstream
endobj
40 0 obj
<</Length 133>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
25.241560614853 0 0 11.91647347512 224.737842489875 181.725154226826  cm

/A100 gs 
/sh3 sh
Q
endstream
endobj
42 0 obj
<</Length 134>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
27.800805455729 0 0 14.905181188358 166.459918488457 139.303570192173  cm

/A100 gs 
/sh4 sh
Q
endstream
endobj
44 0 obj
<</Length 132>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
27.082295242868 0 0 11.91647347512 167.536189781732 36.637510292472  cm

/A100 gs 
/sh5 sh
Q
endstream
endobj
46 0 obj
<</Length 134>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
19.527465767286 0 0 10.135437560723 217.443232982936 114.496897019128  cm

/A100 gs 
/sh6 sh
Q
endstream
endobj
48 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
27.040940500468 0 0 10.135437560723 217.853370602475 94.4154066362  cm

/A100 gs 
/sh7 sh
Q
endstream
endobj
50 0 obj
<</Length 133>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
25.511073195275 0 0 10.135437560723 225.890550659146 74.333915467228  cm

/A100 gs 
/sh8 sh
Q
endstream
endobj
52 0 obj
<</Length 129>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 8.145146795568 235.056872545923  cm

/A100 gs 
/sh9 sh
Q
endstream
endobj
54 0 obj
<</Length 132>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
3.000000088977 0 0 3.000000022142 106.11034657182 270.220459052828  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
55 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 106.110407917628 199.893298615723  cm

/A100 gs 
/sh9 sh
Q
endstream
endobj
56 0 obj
<</Length 130>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 109.87768462173 150.792735969817  cm

/A100 gs 
/sh9 sh
Q
endstream
endobj
57 0 obj
<</Length 132>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 137.770283853902 217.226701947571  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
58 0 obj
<</Length 130>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 121.873080207973 84.358769992062  cm

/A100 gs 
/sh9 sh
Q
endstream
endobj
59 0 obj
<</Length 133>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
3.000000088977 0 0 3.000000022142 201.362390662615 227.767250893727  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
60 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 134.780892435979 155.93292329585  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
61 0 obj
<</Length 132>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 149.270220026841 130.140692364875  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
62 0 obj
<</Length 133>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
3.000000088977 0 0 3.000000022142 308.924432088499 161.994756709733  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
63 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 158.440048173769 98.286624875841  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
64 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 165.917519308207 57.269677987421  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
65 0 obj
<</Length 130>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 171.04365676728 77.901844896326  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
66 0 obj
<</Length 130>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 173.552822980732 99.43577883891  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
67 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
3.000000088977 0 0 3.000000022142 285.82663138544 56.367910953741  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
68 0 obj
<</Length 131>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
4.000000012133 0 0 4.00000016053 202.759377836872 84.374661051714  cm

/A100 gs 
/sh10 sh
Q
endstream
endobj
70 0 obj
<</Length 130>>

stream
q
0 0 m
633 0 l
633 285 l
0 285 l h W n
0.167780006655 0 0 0.103391142408 8.157967447904 80.295988210491  cm

/A100 gs 
/sh11 sh
Q
endstream
endobj
71 0 obj
<</Length 1218>>

stream
0 0 0 rg
/A100 gs 
BT
/F17 12 Tf
1 0 0 1 0 0  Tm

111.110344 265.095459 Td
(polyprotein [Picornavirales Bu-3]) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

216.805878 243.868866 Td
(viruses | 16 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

206.362396 222.642258 Td
(RNA-dependent RNA polymerase [Riboviria sp.]) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

176.685699 201.561157 Td
(viruses | 15 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

166.357346 7.659616 Td
(viruses and unknown | 9 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

251.979401 176.600159 Td
(viruses | 8 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

313.924438 156.869751 Td
(hypothetical protein [Changjiang picorna-like virus 5]) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

196.260712 134.178574 Td
(viruses | 30 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

196.618484 31.51251 Td
(viruses | 8 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

290.82663 51.242912 Td
(TPA: polyprotein [Apostichopus japonicus associated picornavirus 5]) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

238.970688 109.371895 Td
(viruses | 3 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

246.894302 89.290405 Td
(viruses | 3 leaves) Tj
ET
/A100 gs 
BT
1 0 0 1 0 0  Tm

253.401627 69.208916 Td
(viruses | 3 leaves) Tj
ET
endstream
endobj
74 0 obj
<</Length 127>>

stream
q
0 0 m
633 0 l
633 285 l
0 285 l h W n
1.001582278481 0 0 1.003521126761 0.500791139241 0.50176056338  cm

/A40 gs 
/sh12 sh
Q
endstream
endobj
75 0 obj
<</Length 211>>

stream
q
0 0 m
633 0 l
633 285 l
0 285 l h W n
0 0 0 RG
2 w
[] 0 d
/A60 gs 
10.516614 20.572184 m 10.516614 40.642605 l s
10.516614 30.607395 m 107.055283 30.607395 l s
107.055283 20.572184 m 107.055283 40.642605 l s
Q
endstream
endobj
77 0 obj
<</Length 115>>

stream
q
0 0 m
632 0 l
632 284 l
0 284 l h W n
0 0 0 rg
/A60 gs 
BT
/F17 12 Tf
1 0 0 1 0 0  Tm

15.5 35.5 Td
(0.6) Tj
ET
Q
endstream
endobj
78 0 obj
<</Length 39>>

stream
-1 -1 m 632 -1 l 632 284 l -1 284 l W n
endstream
endobj
26 0 obj
<</Contents[78 0 R 31 0 R 34 0 R 36 0 R 38 0 R 40 0 R 42 0 R 44 0 R 46 0 R 48 0 R 50 0 R 52 0 R 54 0 R 55 0 R 56 0 R 57 0 R 58 0 R 59 0 R 60 0 R 61 0 R 62 0 R 63 0 R 64 0 R 65 0 R 66 0 R 67 0 R 68 0 R 70 0 R 71 0 R 74 0 R 75 0 R 77 0 R]
/Parent 25 0 R/Type/Page/UserUnit 1>>

endobj
25 0 obj
<</Count 1/Kids[26 0 R]
/MediaBox[0 0 631 283]
/Resources<</ExtGState<</A100 32 0 R/A40 73 0 R/A60 76 0 R>>
/Font 30 0 R/ProcSet[/PDF /Text]
/Shading<</sh0 33 0 R/sh1 35 0 R/sh10 53 0 R/sh11 69 0 R/sh12 72 0 R/sh2 37 0 R/sh3 39 0 R/sh4 41 0 R/sh5 43 0 R/sh6 45 0 R/sh7 47 0 R/sh8 49 0 R/sh9 51 0 R>>
>>
/Rotate 0/Type/Pages>>

endobj
1 0 obj
<</BaseFont/Helvetica/Name/F1/Subtype/Type1/Type/Font>>

endobj
2 0 obj
<</BaseFont/Helvetica-Bold/Name/F2/Subtype/Type1/Type/Font>>

endobj
3 0 obj
<</BaseFont/Helvetica-Oblique/Name/F3/Subtype/Type1/Type/Font>>

endobj
4 0 obj
<</BaseFont/Helvetica-BoldOblique/Name/F4/Subtype/Type1/Type/Font>>

endobj
5 0 obj
<</BaseFont/Times-Roman/Name/F5/Subtype/Type1/Type/Font>>

endobj
6 0 obj
<</BaseFont/Times-Bold/Name/F6/Subtype/Type1/Type/Font>>

endobj
7 0 obj
<</BaseFont/Times-Italic/Name/F7/Subtype/Type1/Type/Font>>

endobj
8 0 obj
<</BaseFont/Times-BoldItalic/Name/F8/Subtype/Type1/Type/Font>>

endobj
9 0 obj
<</BaseFont/Courier/Name/F9/Subtype/Type1/Type/Font>>

endobj
10 0 obj
<</BaseFont/Courier-Bold/Name/F10/Subtype/Type1/Type/Font>>

endobj
11 0 obj
<</BaseFont/Courier-Oblique/Name/F11/Subtype/Type1/Type/Font>>

endobj
12 0 obj
<</BaseFont/Courier-BoldOblique/Name/F12/Subtype/Type1/Type/Font>>

endobj
13 0 obj
<</BaseFont/Courier/Name/F13/Subtype/Type1/Type/Font>>

endobj
14 0 obj
<</BaseFont/Courier-Bold/Name/F14/Subtype/Type1/Type/Font>>

endobj
15 0 obj
<</BaseFont/Courier-Oblique/Name/F15/Subtype/Type1/Type/Font>>

endobj
16 0 obj
<</BaseFont/Courier-BoldOblique/Name/F16/Subtype/Type1/Type/Font>>

endobj
17 0 obj
<</BaseFont/Times-Roman/Name/F17/Subtype/Type1/Type/Font>>

endobj
18 0 obj
<</BaseFont/Times-Bold/Name/F18/Subtype/Type1/Type/Font>>

endobj
19 0 obj
<</BaseFont/Times-Italic/Name/F19/Subtype/Type1/Type/Font>>

endobj
20 0 obj
<</BaseFont/Times-BoldItalic/Name/F20/Subtype/Type1/Type/Font>>

endobj
21 0 obj
<</BaseFont/Courier/Name/F21/Subtype/Type1/Type/Font>>

endobj
22 0 obj
<</BaseFont/Courier-Bold/Name/F22/Subtype/Type1/Type/Font>>

endobj
23 0 obj
<</BaseFont/Courier-Oblique/Name/F23/Subtype/Type1/Type/Font>>

endobj
24 0 obj
<</BaseFont/Courier-Bold/Name/F24/Subtype/Type1/Type/Font>>

endobj
30 0 obj
<</F1 1 0 R/F10 10 0 R/F11 11 0 R/F12 12 0 R/F13 13 0 R/F14 14 0 R/F15 15 0 R/F16 16 0 R/F17 17 0 R/F18 18 0 R/F19 19 0 R/F2 2 0 R/F20 20 0 R/F21 21 0 R/F22 22 0 R/F23 23 0 R/F24 24 0 R/F3 3 0 R/F4 4 0 R/F5 5 0 R/F6 6 0 R/F7 7 0 R/F8 8 0 R/F9 9 0 R>>

endobj
xref
0 79
0000000000 65535 f 
0000016902 00000 n 
0000016974 00000 n 
0000017051 00000 n 
0000017131 00000 n 
0000017215 00000 n 
0000017289 00000 n 
0000017362 00000 n 
0000017437 00000 n 
0000017516 00000 n 
0000017586 00000 n 
0000017663 00000 n 
0000017743 00000 n 
0000017827 00000 n 
0000017899 00000 n 
0000017976 00000 n 
0000018056 00000 n 
0000018140 00000 n 
0000018216 00000 n 
0000018291 00000 n 
0000018368 00000 n 
0000018449 00000 n 
0000018521 00000 n 
0000018598 00000 n 
0000018678 00000 n 
0000016559 00000 n 
0000016267 00000 n 
0000000021 00000 n 
0000000207 00000 n 
0000000394 00000 n 
0000018755 00000 n 
0000007081 00000 n 
0000000438 00000 n 
0000000485 00000 n 
0000009552 00000 n 
0000000942 00000 n 
0000009736 00000 n 
0000001399 00000 n 
0000009921 00000 n 
0000001856 00000 n 
0000010105 00000 n 
0000002313 00000 n 
0000010289 00000 n 
0000002770 00000 n 
0000010474 00000 n 
0000003227 00000 n 
0000010657 00000 n 
0000003684 00000 n 
0000010842 00000 n 
0000004141 00000 n 
0000011024 00000 n 
0000004598 00000 n 
0000011208 00000 n 
0000005518 00000 n 
0000011388 00000 n 
0000011571 00000 n 
0000011753 00000 n 
0000011934 00000 n 
0000012117 00000 n 
0000012298 00000 n 
0000012482 00000 n 
0000012664 00000 n 
0000012847 00000 n 
0000013031 00000 n 
0000013213 00000 n 
0000013395 00000 n 
0000013576 00000 n 
0000013757 00000 n 
0000013939 00000 n 
0000006438 00000 n 
0000014121 00000 n 
0000014302 00000 n 
0000006712 00000 n 
0000006979 00000 n 
0000015572 00000 n 
0000015750 00000 n 
0000007030 00000 n 
0000016012 00000 n 
0000016178 00000 n 
trailer
<</Info 27 0 R/Root 28 0 R/Size 79>>

startxref
19023
%%EOF
Uploading Cobalt Phylogenetic Tree.pdf…]()


## Discussion

Research into Posasimilis Intestiviridae draws new insights into the characterization of this unclassified family. Very little research has been afforded to delineate the structure and viral properties of posa-like viruses. Specifically, previous findings into posa-like viruses had not described a means by which these viruses end up in the fecal matter of their respective host organism. Here, we propose a new trait, whereby a potential mode of transport into a host organism is through the infection of bacterial species in the microbiome. This finding is consistent with previous suggestions that posa-like viruses perpetuate via a third-party vector [Munnink, 2017]. As the current proposal is based solely on sequencing analyses, future experimental protocols are needed to establish a causative conclusion. If true, the mechanisms by which the virus enters the bacterium and replicates would be of interest. Moreover, whether Posasimilis Intestiviridae, and subsequently other posa-like viruses, preferentially infect certain microorganisms would be useful. Should certain posa-like viruses preferentially infect microbiome populations, it may suggest an in vivo function and/or relationship on the overarching fitness and development of the host. 

## References

1. Edgar RC, Taylor B, Lin V, et al. 2022. Pentabase-scale sequence alignment catalyses viral discovery. Nature, 602:142-147. https://doi.org/10.1038/s41586-021-04332-2. 
2. Kauer RV, Koch MC, Hierweger MM, et al. 2019. Discovery of novel astrovirus genotype species in small ruminants. PeerJ, 7:e7338. doi: 10.7717/peerj.7338.
3. Venkataramen S, Prasad BVLS, Selvarajan R. 2018. RNA Dependent RNA Polymerases: Insights from Structure, Function and Evolution. Viruses, 10(2):76. doi: 10.3390/v10020076. 
4. Duraisamy R, Akiana J, Davoust B, et al. 2018. Detection of novel RNA viruses from free-living gorillas, Republic of the Congo: genetic diversity of picobirnaviruses. Virus Genes, 54(2): 256-271. doi: 10.1007/s11262-018-1543-6. 
5. Munnink BBO, Phan MVT, VIZIONS Consortinum, et al. 2017. Characterization of Posa and Posa-like virus genomes in fecal samples from humans, pigs, rats, and bats collected from a single location in Vietnam. Virus Evolution, 3(2):vex022, https://doi.org/10.1093/ve/vex022.  
6. Shan T, Li L, Simmonds T, et al. 2011. The fecal virome of pigs on a high-density farm. J Virol, 85(22):11697-708. doi: 10.1128/JVI.05217-11.
7. Zhang B, Tang C, Yue H. 2014. Viral metagenomics analysis demonstrates the diversity of viral flora in piglet diarrhoeic faeces in China. J Gen Virol, 95(Pt 7):1603-1611. doi: 10.1099/vir.0.063743-0. 
8. Han Z, Xiao J, Song Y. 2020. The Husavirus Posa-Like Viruses in China, and a New Group of Picornavirales. Viruses, 12(9): 995. doi: 10.3390/v12090995. 
9. Tisza MJ, Buck CB. 2021. A catalog of tens of thousands of viruses from human metagenomes reveals hidden associations with chronic diseases. Proc Natl Acad Sci U S A, 118(23): e2023202118. doi: 10.1073/pnas.2023202118. 
10. Tars K. 2020. ssRNA Phages: Life Cycle, Structure and Applications. Biocommunication of Phages, 30:261–92. doi: 10.1007/978-3-030-45885-0_13. 
11. Mantynen S, Salomaa MM, Poranen MM. 2023. Diversity and Current Classification of dsRNA Bacteriophages. Viruses, 15(11):2154.  https://doi.org/10.3390/v15112154. 
12. Meehan CJ, Beiko RG. A Phylogenomic View of Ecological Specialization in the Lachnospiraceae, a Family of Digestive Tract-Associated Bacteria, Genome Biology and Evolution, Volume 6, Issue 3, March 2014, Pages 703–713, https://doi.org/10.1093/gbe/evu050. 
13. Ormerod KL, Wood DLA, Lachner N. 2016. Genomic characterization of the uncultured Bacteroidales family S24-7 inhabiting the guts of homeothermic animals. Microbiome, 4(36). https://doi.org/10.1186/s40168-016-0181-2. 
14. Schmid M, Walsh K, Webb R. 2003. Candidatus “Scalindua brodae”, sp. nov., Candidatus “Scalindua wagneri”, sp. nov., Two New Species of Anaerobic Ammonium Oxidizing Bacteria. Systematic and Applied Microbiology, Volume 26, Issue 4, Pages 529-538, https://doi.org/10.1078/072320203770865837. 
15. Ramos ESF, Rosa UA, Ribeiro GO. 2021. Multiple clades of Husavirus in South America revealed by next generation sequencing. PLos One.  https://doi.org/10.1371/journal.pone.0248486
16. Aoki H, Sunaga F, Ochiai H, et al. 2019. Phylogenetic analysis of novel posaviruses detected in feces of Japanese pigs with posaviruses and posa-like viruses of vertebrates and invertebrates. Arch Virol, 164:2147–2151. https://doi.org/10.1007/s00705-019-04289-8. 
17. Yinda CK, Zell R, Deboutte W. 2017. Highly diverse population of Picornaviridae and other members of the Picornavirales, in Cameroonian fruit bats. BMC Genomics, 18:249. doi 10.1186/s12864-017-3632-7. 
18. Jiang P, Liu Y, Ma HC, et al. 2014. Picornavirus Morphogenesis. Microbiol Mol Biol Rev, 78(3): 418–437. doi: 10.1128/MMBR.00012-14. 
19. Witwer C, Rauscher S, Hofacker IL, et al. 2001. Conserved RNA secondary structures in Picornaviridae genomes. Nucleic Acids Res., 29(24): 5079–5089.
doi: 10.1093/nar/29.24.5079. 

# Viral Short Story

```
There once was a virus that no one knew. It wasn't unpopular, just too shy to say hi to you! It traveled far and wide to find a home, yet no one was accepting and so it remained alone. People and animals were scared alike, as its name - **Rasavirus**, was hard to like. It was a social outcast with **no recognized family**, only a bunch of look-a-likes...oh what a misery! **Posavirus, husavirus, fisavirus...so many species!** Yet they were able to find homes in the unlikeliest of place...**feces**! Each of them finding their way into animals, a peculiar tactic that may seem irrational. But Rasa saw it all and wondered to itself, could it find a home too? Even in a clump of doo-doo?! But that was no fun, it would just smell so bad! And so it thought and sat until it turned sad. There was no other way around it...until suddenly it had a great idea. It would disguise itself in food and make its way into animals. Then help their digestive tract, gut virome, and microbiota! So Rasa did just that. And sooner than not, it was in **sheep, elk, and yak**! None of these animals had any idea, and they remained **healthy**...no diarrhea! And that was the story of Rasa, so what's there to learn? That not all viruses are bad, and some just need a home... even if its in your turd!
```
