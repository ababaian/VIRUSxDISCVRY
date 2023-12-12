# A Novel Dicistrovirus Found in Human CD8+ Tumor Infiltrating Lymphocytes 
written by: [Matea Maurice](https://github.com/MAM122)

*Cripavirus inexspectatus*

This dicistrovirus of the genus cripavirus was found in human cells which was very unexpected since dicistroviruses are usually only found to infect insects. Therefore, I gave it the latin name of *inexspectatus* which means unexpected.

## Abstract
Dicistroviruses infect insects but are not associated with evident disease. They have a monopartite positive sense RNA genome which contains two non-overlapping ORFs and is usually 8 to 10 kilobases. Its 5'ORF encodes for non-structural proteins (including RdRP) while its 3'ORF encodes for structural proteins (capsid viral proteins). A novel dicistrovirus was detected in two subsets of CD8+ tumor infiltrating lymphocytes in samples from human non-small cell lung cancer patients; however, dicistroviruses are mainly only known to infect insects and not humans. In this study, we show that this novel dicistrovirus is indeed likely a dicistrovirus. We reveal that the virus has two separate ORFs. The 5'ORF also encodes for RNA dependent RNA polymerase (RdRP). Our results demonstrate that the effector and effector memory TILs have a dicistrovirus. These cells were also found to contain plasmodium which is usually contracted when a mosquito bites a human. This provides a possible mechanism of entry of the dicistrovirus into humans (through the mosquito). This study shows that dicistroviruses are able to be recovered from and enter in human CD8+ TILs. This provides evidence to contradict the textbook definition of dicistroviruses only infecting and being found in insects.   

## Results

### Ecology - Index Case in CD8+ Tumor Infiltrating Lymphocytes

In the publication titled “A burned-out CD8+ T-cell subset expands in the tumor microenvironment and curbs cancer immunotherapy”, the authors took samples from non-small cell lung cancer (NSCLC) human patients in the United States (Sanmamed et al. 2021). Using single-cell mass cytometry, they found three subsets of CD8+ tumor infiltrating lymphocytes (TILs) in the samples. The Effector (Eff) CD8+ TILs, Effector Memory (Em) CD8+ TILs, and the burned out CD8+ TILs (Ebo). The authors isolated total RNA from the cell samples. They sequenced and analyzed three samples in each of the three groups (Eff, Em, and Ebo) by Illumina HiSeq 2000 RNA-sequencing. Thus, a total of nine samples were sequenced (all runs: SRR13764153, SRR13764152, SRR13764151, SRR13764150, SRR13764149, SRR13764148, SRR13764147, SRR13764146, and SRR13764145). They used the RNA-sequencing data to find differentially expressed genes between the TIL subsets to determine what was causing the Ebo cells to display a proliferative phenotype in the tumor microenvironment (TME).

The virus named dicistroviridae was found in the sample runs SRR13764152 (GSM5100145: P90p5_Em) and SRR13764153 (GSM5100146: P90p6_Eff). This was determined by copying the index run into serratus.io (Edgar et al. 2022). Both of these samples had many more reads (around 100M) while the other samples of the same CD8+ TIL cell type had less reads (around 20M) thus it may have only been detected in these Eff and Em samples since they had higher read counts. This virus was not detected in the Ebo subset of cells (it was not in SRR13764151 nor the other Ebo datasets). This dicistroviridae is highly related to the ancient Northwest Territories cripavirus. Cripavirus is within the dicistroviridae family. After doing a blastx search on the transcript from SRR13764152 which contains the palmprint of the dicistrovirus, the top results were Rdrp for picornavirales and dicistroviridae is in the picornavirales order. A dicistrovirus Rdrp did not arise as the top hit which confirms that this is a novel virus that has not yet been characterized.

For the SRR13764151 (Ebo) and SRR13764152 (Em) dataset, the analysis tab of the metadata shows the taxonomical species in the sample. However, unfortunately for the SRR13764153 (Eff) dataset, it does not allow me to see the taxonomy. For both SRR13764151 and SRR13764152 datasets, I see Plasmodium was detected (the RNA sequence of Plasmodium was detected). This parasite is transferred from mosquitoes to humans (Churcher et al. 2017). In addition, discistrovirdiae are known to only infect insects (Steward, Culley, and Wood-Charlson 2013). In a study by Fauver et al., dicistrovirus was found in the Anopheles species of mosquitoes (Fauver et al. 2016). Female Anopheles mosquitoes are known to be hosts of Plasmodium (Mota and Mello-Vieira 2019). Therefore, it is possible that the humans were bit by Anopheles mosquitoes who then transferred a dicistrovirus into them. Although Plasmodium is also in SRR13764153 (Ebo) but dicistrovirus is not in those cells, the Ebo cells may have a phenotype that prevents the dicistrovirus from being able to infect or replicate in that cell.

### RNAfold Structure of Dicistrovirus Contig 

![](img/Dicistrovirus/RNAfold_structures.png)

**Figure 1**: Predicted RNAfold structures of the sequence of my dicistrovirus (Node_1134). The confidence scores are labelled by color (red is highest confidence). There is a predicted RNA element in the middle of the sequence which may be an IRES (dicistroviruses have an IRES between two ORFs). 

### Dicistrovirus Genome Fragment

![](img/Dicistrovirus/Genome_map.png)

**Figure 2**: Genome annotation of the contig of my virus. This node_1143 is not the complete contig as we see that there is no full 5'UTR and 3'UTR. I got two large ORFs from ORFfinder (separated by a gap) and got the domains from InterproScan. The position of the A, B, and C motifs of RdRP are indicated on the map. 

### AlphaFold Predicted 3D Structure of this Dicistrovirus Strain RNA-dependent RNA Polymerase (RdRp)

![](img/Dicistrovirus/RdRp_structure.png)

**Figure 3**: AlphaFold structure of RdRp with motifs A (blue), B (green), and C (red) visualized. Most of the residues of this AlphaFold structure had a pLDDT > 90. 

### Multiple Sequence Alignment of the Dicistrovirus RdRp sequence

The novel dicistrovirus has an Rdrp sOTU number of u257616 and SRA number SRR13764152. From the blast runs with just the palmprint sequence, it hit the Ancient Northwest Territories cripavirus species and the Dicistroviridae family.

I ran virusRdRpCandidates.fa, then I took Node_1143 which had all three palmprint motifs A, B, and C and the longest sequence. I used the amino acid sequence of Node_1143 for this problem. I determined all the other RdRP sequences in the dicistroviridae family using NCBI (blastp and then the taxonomy tab which specified dicistrovirus). I put these sequences with the sequence of the Node_1143 Rdrp into MUSCLE. Then I visualized the alignment in Jalview.

[Figure 4](img/Dicistrovirus/Sequence_alignment_final.png)

**Figure 4**: The top sequence is the Rdrp sequence and the lower sequences are the other Rdrp sequences in the dicistrovirus family. This alignment was made in MUSCLE and viewed in Jalview. 

![](img/Dicistrovirus/Tree.png)

**Figure 5**: Phylogenetic tree generated in IQTree of the multiple sequence alignment in Figure 4 and visualized in Dendroscope.


## Discussion

This virus is a novel dicistrovirus which was found in two subsets of human CD8+ TILs in non-small cell lung cancer patients. Specifically, effector CD8+ TILs and effector memory CD8+ TILs. From the genome map there are two ORFs separated by sequence which does not encode for a domain. However, I ran my contig in Infernal and found no hits for non-coding RNA sequences. However, the RNAfold structure shows an interesting RNA structure between the two ORFs that resembles a IRES (Figure 1). If it were an IRES between the two ORFs, this would agree with the known structure of dicistroviruses. There is an RdRP in ORF1a as seen in Figure 2. In addition, the AlphaFold strucuture of the RdRP in Figure 3 does look like the known structure of RdRPs with motif A being a small loop, motif B being an alpha helix, and motif C being a beta sheet. This is consistent with the known structure of dicistroviruses as we know that it encodes an RdRP in its 5'UTR. The contig of this virus was not the full contig as we do not see a 5'UTR nor a 3'UTR. This information would have been useful to even further characterize if the virus is consistent with the known dicistroviruses. The 5'ORF may actually extend even further to the left. From the genome map, we see that the virus is only 989 nucleotides which is much shorter than 8-10 kilobases and the 5'UTR is not from nucleotides 709 nt to 6024 nt. Both ORF 1a and 1b are likely to actually be longer. The full sequence may not have been sequenced during RNA sequencing due to fragmentation of the genome or misassembly of the genome and the contigs. From the sequence alignment in Figure 4, my contig did somewhat align with other known dicistroviruses, but it was missing a lot of sequence towards the left side. 

Despite some dissimilarities to known dicistroviruses, it does match the structure of dicistroviruses the most. When I run the nucleotide sequence of Node_1143 in blastx, I get hits to picornaviruses as being similar to this virus (which makes sense as they are in the same order as dicistroviruses), but picornaviruses do not have two ORFs, they only have one. It is very interesting that this virus was found in human CD8+ TILs since dicistroviruses are usually found in insects. This pushes against the textbook definition of dicistroviruses infecting only insects and not human cells. The dicistrovirus may have first infected mosquitoes, which infected humans, which then infected and replicated in CD8+ TILs. 

## References

Christian, P. D., and P. D. Scotti. 2008. “Dicistroviruses.” In Encyclopedia of Virology, 37–44. https://doi.org/10.1016/B978-012374410-4.00608-7.

Churcher, Thomas S et al. 2017. “Probability of Transmission of Malaria from Mosquito to Human Is Regulated by Mosquito Parasite Density in Naïve and Vaccinated Hosts.” PLoS Pathogens 13 (1): e1006108. https://doi.org/10.1371/journal.ppat.1006108.

Edgar, R. C., B. Taylor, V. Lin, et al. 2022. “Petabase-Scale Sequence Alignment Catalyses Viral Discovery.” Nature 602: 142–47. https://doi.org/10.1038/s41586-021-04332-2.

ExPASy - ViralZone. 2023. “Dicistroviridae.” https://viralzone.expasy.org/36.

Fauver, Joseph R., Nathan D. Grubaugh, Benjamin J. Krajacich, James Weger-Lucarelli, Steven M. Lakin, Lawrence S. Fakoli, Fatorma K. Bolay, et al. 2016. “West African Anopheles Gambiae Mosquitoes Harbor a Taxonomically Diverse Virome Including New Insect-Specific Flaviviruses, Mononegaviruses, and Totiviruses.” Virology 498: 288–99. https://doi.org/10.1016/j.virol.2016.07.031.

Hertz, Marla I, and Sunnie R Thompson. 2011. “Mechanism of Translation Initiation by Dicistroviridae IGR IRESs.” Virology 411 (2): 355–61. https://doi.org/10.1016/j.virol.2011.01.005.

ICTV. 2023. “ICTV Report - Dicistroviridae.” 2023. https://ictv.global/report/chapter/dicistroviridae/dicistroviridae.

Mota, Maria M., and João Mello-Vieira. 2019. “Parasitism: Anopheles Mosquitoes and Plasmodium Parasites Share Resources.” Current Biology 29 (13): R632–34. https://doi.org/10.1016/j.cub.2019.05.030.

Sanmamed, Miguel F., Xin Nie, Sonia S. Desai, et al. 2021. “A Burned-Out CD8+ t-Cell Subset Expands in the Tumor Microenvironment and Curbs Cancer Immunotherapy.” Cancer Discov. 11 (7): 1700–1715. https://doi.org/10.1158/2159-8290.CD-20-0962.

Steward, Grieg F., Alexander I. Culley, and Elisha M. Wood-Charlson. 2013. “Marine Viruses.” In Encyclopedia of Biodiversity (Second Edition), edited by Simon A Levin, 127–44. Academic Press. https://doi.org/10.1016/B978-0-12-384719-5.00401-9.

# Viral Short Story for a Picornavirus (not a Dicistrovirus)

```
The new virus in town has been identified. It goes by the name of picornavirus. **It's going around infecting animals and humans, causing diseases in the heart, liver, and central nervous system.** It's horrifying, the virus is turning humans and animals into zombies. The virus takes over people from the inside out by **shutting down cellular processes disruptive to its replication.** You don't want to see what is happening inside these people. Just like the zombies are making others explode, **the virus is making the cells inside them explode to allow for viral release**. The body is working hard to get rid of this virus just like all the normal people are frantically trying to protect their loved ones and kill the zombies. Its a warzone. More and more people are becoming zombies. Normal humans are getting eaten by the zombies. **The virus has developed ways to avoid being eradicated by the innate immune system -- they are evading host pathogen recognition receptors (PRRs), blocking activation of kinases, etc.** The zombies themselves have also figured out ways to avoid the weapons humans are using -- not only are they attacking in packs, they have developed sharp teeth, claws, and an appearance that will scare off the human. Although the zombies kill humans by their sharp teeth, if they just bite the human, humans with cancer may survive and even be cured from cancer due to the spread of the virus. This is because **picornaviruses are oncolytic viruses and have been used in cancer therapy since they do not encode oncogenes and do not integrate into the host's genome so they will spread and kill the cancer cells**. That's the only benefit. Nonetheless, STAY AWAY from these zombies and seek shelter in your home with the door baracaded.
```
