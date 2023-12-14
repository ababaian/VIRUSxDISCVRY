<div align="center">    

# EMBOSS Sixpack

Written by: [Alston Lo](https://alstonlo.github.io)

5-10 minutes

</div>

---


**Overview.** Sixpack is described succinctly on its website: 

> Sixpack reads a DNA sequence and outputs the three forward and (optionally) three reverse translations in a visual manner.

In each reading frame, sixpack will also return a list of proteins that can be translated, which is done by 
enumerating [open reading frames (ORFs)](https://en.wikipedia.org/wiki/Open_reading_frame). For virus discovery, 
sixpack can then be used to enumerate the proteins encoded by a viral genomic sequence.

**Tutorial objective.** We will use sixpack to conduct a simple sanity check, namely, to recover the palmprint in a viral genomic sequence.

## Inputs

The EMBOSS sixpack webtool can be accessed through the [EMBL-EBI website](https://www.ebi.ac.uk/Tools/st/emboss_sixpack/).
We note that other APIs are available (see the [sixpack documentation](https://www.ebi.ac.uk/seqdb/confluence/display/JDSAT/EMBOSS+sixpack+Help+And+Documentation) for further details).
The main input box of sixpack `STEP 1` requires a DNA or RNA sequence, 
given in any one of [the supported formats](https://www.ebi.ac.uk/seqdb/confluence/display/JDSAT/Sequence+Translation+%28ST%29+Input+examples), which include FASTA, GCG, EMBL, and GenBank.
Our DNA sequence is an assembled contig from the SRA run `SRR17250291` that was detected to contain an RdRp palmprint.
The detected palmprint sequence (with A, B, C motifs annotated) is: 

```
LEIDISKYDKSQGALVLEFEIKMMRLFGVDEELCFYWRKAHECTTLWDRLNGVKCKVLYQRKSGDASTYLGNTLFLMAVICCLFDLSRVTMGLFSGDDSLI
|----A-----|                                                  |------B-----|                 |---C--|
```

For this tutorial, we will provide the DNA sequence in a FASTA file, uploaded at `tools/img/sixpack/contig.fasta` : 

```bash 
$ head tools/img/sixpack/contig.fasta
>SRR17250291_NODE_133
CACAGGACAGAACAACACAAATTTGGCAGGAATCACATGATAACGGTTCACGCTCTTTAG
TTAGAGTTTCACCTTTTCATTGTCTCTTTTGGATTCTGTCTGTTTGGTGCTTAGGCCCTG
GCGGACATTTCTTGAGAATTTCTGTTTTCTTTGACCTTTAACGGTGCGTTTAGCTCGTTT
TTGGTCTCTGGATTTGGATTATTCTTTGGATTTTTCTTTAAGAGATTTCATTTTCCTTTT
TCAATTTTTCATTTTCAAATTTCTAATTTAAATTTTCATTTTCATTGAAACATTGTTTTG
GATTTTCTTTCATAGAACCGTTATCATGTGATTCCTGCCAAATTTGTGTTGTTCTGTCCT
GTGCCGGGTGTTCTTTTGAACATTAGGTGCAATATTTACCTTTTGTGTTCTGTGTTCATA
TTTACTTTATTTTGTATATATTTATATTTTCTTTTGTATATATATATTTTGTATTATTAT
TTTGTGCAATATTTTGTGTTTTTCTGGTTCCTAATATCACCATGTCTGTGTCTCGCTTGC
```

To use sixpack, in the `STEP 1` box, either (1) copy and paste the contents of `contig.fasta` into the prompt
or (2) upload the file itself. Next, hit the `Submit` button in the `STEP 3` box to launch the tool. 

### Parameters

The `STEP 2` box contains some parameters that can be toggled. We use the default settings, but 
we document them for completeness below:

- Codon table: the genetic code to use for translation (see the [NCBI documentation](https://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi))
- First ORF: whether input sequence prefixes should be considered as ORFs, disregarding the minimum ORF size
- Last ORF: whether input sequence suffixes should be considered as ORFs, disregarding the minimum ORF size or if they end in a stop codon
- Reverse: whether to return translations for the reverse-compliment of the input sequence
- ORF min. size: the minimum protein size for returned ORFs

Further details are given in the [sixpack documentation](https://www.ebi.ac.uk/seqdb/confluence/display/JDSAT/EMBOSS+sixpack+Help+And+Documentation).

## Output

The webtool will redirect you to a new page with a couple of tabs near the top. 
We are primarily interested in the `Result Summary` (which you should be on to begin)
and `Tool Output` tabs, and describe them in the following. The results 
can be downloaded by clicking the `Download ...` button underneath the tabs. 

### Result Summary

This page begins by visualizing the input sequence and (optionally) its reverse compliment 
and the codons obtained by translating the sequences in various reading frames. The following 
are the first few lines of the page (line numbers `LX` added for reference):

```
  H  R  T  E  Q  H  K  F  G  R  N  H  M  I  T  V  H  A  L  *     F1   (L1)
   T  G  Q  N  N  T  N  L  A  G  I  T  *  *  R  F  T  L  F  S    F2   (L2)
    Q  D  R  T  T  Q  I  W  Q  E  S  H  D  N  G  S  R  S  L  V   F3   (L3)
1 CACAGGACAGAACAACACAAATTTGGCAGGAATCACATGATAACGGTTCACGCTCTTTAG 60     (L4)
  ----:----|----:----|----:----|----:----|----:----|----:----|        (L5)
1 GTGTCCTGTCTTGTTGTGTTTAAACCGTCCTTAGTGTACTATTGCCAAGTGCGAGAAATC 60     (L6)
   X  L  V  S  C  C  L  N  P  L  F  *  M  I  V  T  *  A  R  *    F6   (L7)
  X  C  S  L  V  V  C  I  Q  C  S  D  C  S  L  P  E  R  E  K     F5   (L8)
    V  P  C  F  L  V  F  K  A  P  I  V  H  Y  R  N  V  S  K  L   F4   (L9)
```

The sequence is shown in `L4` and its reverse compliment in `L6`. The flanking numbers `1` and `60` 
indicate that we are looking at the 1-st to 60-th (inclusive) bps of the input sequence. Each row
above and below gives the amino acids (AAs) obtained by translating the input sequence in a specific reading frame, 
labelled `FX` for "frame `X`".
`F1-3` correspond to the forward sequence while `F4-6` correspond to the reverse-compliment.
Each AA is aligned with the first nucleotide of the codon from which it was translated. For example, the
first AA `H` of `F1` was produced from the `CAC` codon, and the fourth AA `N` of `L2` was 
produced from `AAC`. We clarify this with bars: 

```
  H  R  T  E  Q  H  K  F  G  R  N  H  M  I  T  V  H  A  L  *     F1   (L1)
  |T  G  Q  N  N  T  N  L  A  G  I  T  *  *  R  F  T  L  F  S    F2   (L1)
  |         |                                                         (L3 omitted) 
1 CACAGGACAGAACAACACAAATTTGGCAGGAATCACATGATAACGGTTCACGCTCTTTAG 60     (L4)
```

Note that a `*` denotes a stop codon. For `F4-6`, care must be taken since these 
are translations of the sequence's reverse compliment. Hence, `L6-9` should be read from
right to left for all intents and purposes. For example, the `S` in the following is produced by the 
codon `TCC`, not `CCT` or `TGT`:

```
1 GTGTCCTGTCTTGTTGTGTTTAAACCGTCCTTAGTGTACTATTGCCAAGTGCGAGAAATC 60     (L6)
        |                                                             (L7 omitted)
  X  C  S  L  V  V  C  I  Q  C  S  D  C  S  L  P  E  R  E  K     F5   (L8)
```

Finally, at the very end of the page, there will also be some summary statistics that count
the number of ORFs in each reading frame:

```
Minimum size of ORFs : 1

Total ORFs in frame 1 :   139
Total ORFs in frame 2 :   408
Total ORFs in frame 3 :    20
Total ORFs in frame 4 :   217
Total ORFs in frame 5 :   144
Total ORFs in frame 6 :   122

Total ORFs :  1050
```


### Tool Output

This page contains a FASTA file enumerating the proteins translated from all possible ORFs in all 
of the three or six reading frames in the `Result Summary`. Indeed, we find that our palmprint sequence 
is contained in an entry (although split across two lines): 

```
>SRR17250291_NODE_133_3_ORF6  Translation of SRR17250291_NODE_133 in frame 3, ORF 6, threshold 1, 3009aa
VQYLPFVFCVHIYFILYIFIFSFVYIYFVLLFCAIFCVFLVPNITMSVSRLRSGFCYVKW
                            ...
SLDKLEIDISKYDKSQGALVLEFEIKMMRLFGVDEELCFYWRKAHECTTLWDRLNGVKCK  <-
VLYQRKSGDASTYLGNTLFLMAVICCLFDLSRVTMGLFSGDDSLIVGEGINHDRNQECAL  <-
LFNLESKFFRSYKYMYFCSKFLIPYAGGFKFIPDPVKLITKMGRHDLVNFDHVEEYRVSM
CDLTKDFSNGIINEILSEAINERYLCYGNHSMVFSCIHNLTKNSKLFRELYYTNEGDVLC
MDVSRPSLD
```

The entry title aptly indicates the reading frame (`frame 3`), ORF number (`6`), and AA length of the 
translated sequence (`3009aa`).


## Conclusion

That's it, we have used EMBOSS sixpack to recover the palmprint in our viral contig! In summary, sixpack 
translates a DNA sequence across multiple reading frames, and outputs the results as a human-interpretable 
text page and a FASTA file of translated ORFs. These can be used to better understand what proteins may
be encoded in a viral genomic sequence.

