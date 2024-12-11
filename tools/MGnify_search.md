# MGnify Search
written by: [Elli Hung](https://github.com/ellihung) and [Chloe Nichole Calica](https://github.com/calicac001)

[10 minutes] [MGnify](https://www.ebi.ac.uk/metagenomics/) is a hub avaliable for the analysis and exploration of nucleic acid sequences drawn from user-submitted sequences and the [European Nucleotide Archive (ENA)](https://www.ebi.ac.uk/ena/browser/home) that specifically are related to microbiome studies. Microbiome research focuses on the study of genetic material from micro-organisms within specific environments allowing for researchers to study microbial communities, processes the community undergoes, and complex interactions. 

[MGnify](https://www.ebi.ac.uk/metagenomics) supports two types of searches: 
- [Text Search](https://www.ebi.ac.uk/metagenomics/search/studies) using names, biomes, projects, samples, or keywords
- [Sequence Search](https://www.ebi.ac.uk/metagenomics/sequence-search/search/phmmer) with a user inputted protein query sequence in FASTA format to run against the MGnify database of predicted proteins obtained from assembly analysis. 

MGnify can aid virus discovery by analyzing metagenomic data to identify viral sequences within microbial communities. This is crucial for uncovering novel viruses, understanding their interactions with hosts and the environment,exploring their role in microbiomes and giving more ecological context behind the novel virus.


**Tutorial Objective**: This tutorial will cover both types of searches using two different inputs. In the `Text Search`, a study investigating the [Impact of diet gene expression in bovine rumen microbiomes](https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJEB7104), specifically a run where an obelisk was found, will be used while `Sequence Search` will be used against a full length sequence of Arginine deiminase from _Streptococcus sanguinis_ derived from MGnify example data.

## MGnify Text Search

### Input / Prerequisites
- Access to [MGnify Text Search](https://www.ebi.ac.uk/metagenomics/search/studies)
- Study Details:
  - bioProject: `PRJEB7104`
  - SRA run: `ERR747931`

### Output

Given a search term, MGnify will output results showing those projects or samples with metadata containing that term. Each result is indexed by a MGnify identifier prefixed with `MGY`, a letter corresponding to the data type (`S` for study and `A`) for analysis and a unique eight-digit number.

#### 1. Navigate to `MGnify Text Search`

#### 2. Performing the Search

On the text box, enter the bioProject accession: `PRJEB7104` then click ***Search***

#### 3. Results Table

In the results table, you should see the bioProject accession under `ENA accession` and its corresponding `MGnify ID`. Click this id and you will be redirected to the overview page for this study.

![Results Table](~/img/MGnify_search/bioProject.png "Figure 1: Results Table")

#### 4. Study Overview on `MGnify`

On the overview page of the study, there are four sections:
- `External Links` - a link to the project submission on ENA
- `Classification` - how the study is classified within `MGnify`. In this case, it is classified as `root:Host-associated:Mammals:Digestive system:Large intestine:Fecal`.
- `Description` - title of the study and where it was conducted
- `Programmatic Access` - links on analyzing the data via R or Python
- `Analyses` - a table of all the samples/runs associated with this project.

#### 5. In the `Analyses` table, locate the sample with the SRA accession `ERR747931` under the `Run/Assembly accession` column. Click its `Analysis accession` code prefixed with `MGYA`. 
![Analyses Table](~/img/MGnify_search/analysisTable.png "Figure 2: Analyses Table")

#### 6. Run Analysis

In the analysis page of the run, there are six tabs containing the following:
- `Overview` - description of the study, sample, run, and pipeline used as well as experimental details.

![Analysis Overview](~/img/MGnify_search/analysisOverview.png "Figure 3: Analysis Overview Page")

- `Quality control` - processing steps performed on the sequencing data and has graphs on length/GC distribution of the sequences and nucleotide abundance on each position.
- `Taxonomic analysis` - has charts dsiplaying the taxonomic assignments for the run based on the small or large subunit rRNA.

For our run, only one chart is generated for the small subunit RNA. The KRONA chart shown below helps us identify which taxa are most prevalent at various taxonomic level and gives us insight into the microbial community's diversity.

![Taxonomic Overview](~/img/MGnify_search/analysisOverview.png "Figure 4: KRONA chart from the Taxonomic Analysis")

- `Functional analysis` - contain summaries on the fucntional content of the sequences in the sample with a focus on [InterPro](https://www.ebi.ac.uk/interpro/) and [GO](https://www.uniprot.org/help/gene_ontology) term annotations.

![InterPro](~/img/MGnify_search/interpro.png "Figure 5: InterPro Matches")
![GO terms annotation](~/img/MGnify_search/go.png "Figure 6: GO Terms Annotation")

- `Abundance and Comparison` - information on metagenomic community diversity estimation, allowing for comparisons across study runs.
- `Download` - contains download links for the datasets used in the analysis. They are grouped into the following sections: Sequence data, Functional analysis, Taxonomic analysis, Statistics, and non-coding RNAs.

#### Conclusion

That's it! You've used the `MGnify Text Search` to obtain more information on a microbiome sequence.

From this tutorial and the analysis provided by `MGnify Text Search`, you should have gathered insights into  the taxonomic diversity (e.g., species richness and evenness), functional potential (e.g., metabolic pathways), and ecological dynamics of the microbiome under investigation. This platform provides a comprehensive view of the microbial ecosystem and its potential roles in the environment or host system.

## MGnify Sequence Search

### Input / Prerequisites
* Access to [MGnify Sequence Search](https://www.ebi.ac.uk/metagenomics/sequence-search/search/phmmer)
* Amino acid sequence in FASTA format [Link to example data](img/mgnify_search/example_data.fa)


### Output

Information about the host, environment, biome, and associated studies that match the user's search query within the MGnify hub of microbiome data. In our case, we will determine what host and/or environment this amino acid sequence for Arginine deiminase is found in and the associated studies with this sample. 

#### 1. Navigate to [MGnify Sequence Search](https://www.ebi.ac.uk/metagenomics/sequence-search/search/phmmer)

#### 2. Creating an amino acid sequence query

We will input a **FASTA-formatted amino acid sequence** into the query box based on the example data.

#### 3. Choosing which database to search against

There are different databases that a user can choose from to search their query against:

* **Sequence type**
  * All sequences - all sequences in the database
  * Partial sequences - only partial sequences
  * Full length sequences - only full length peptides
  * [read more about partial and full length peptides](https://emg-docs.readthedocs.io/en/latest/sequence-search.html#partial-and-full-length-peptides)
  
* **Environments**
  * Aquatic
  * Marine
  * Freshwater
  * Soil
  
* **Host-associated biome**
  * Human
  * Human - digestive system
  * Human - non-digestive
  * Animal

* **Other (sequences not found in other environment or biome categories)**
  * Engineered
  * Other
  
In this example, we will search only for full length sequences.

#### 4. Result page

A list of matching sequences is presented that is ordered by E-value significance (lower E-value indicating a more significant match). The user can customize this table to display different headings. Clicking on the `Target` link shows the amino acid FASTQ file that the query sequence matched to. the `Run & Sample IDs` link brings up the associated MGnify Sample Overview.

In our [example](https://www.ebi.ac.uk/metagenomics/sequence-search/results/7CFA9DC8-900B-11EE-B07A-5352765DAC3F/score), 2368 significant query matches were found. The top match has a bit score of 890.8 and an E-value of 3.5e-265.

#### 5. Run & Sample ID in the MGnify Sample Overview

Clicking on the MGnify Sample Overview link to the associated query match displays a description of the sample, links to external websites (such as ENA or EBI biosample), the classification, associated studies, and other data.

In our [example](https://www.ebi.ac.uk/metagenomics/samples/SRS018573) the description shows that this is a human metagenome sample from G_DNA_Supragingival plaque of a male participant in the dbGaP study "HMP Core Microbiome Sampling Protocol A (HMP-A)." The report shows that this sample is classified as human host-associated and there is a Google maps option available if the sample information includes coordinates. Additional information about the metadata and associated studies is also available.


#### Conclusion

That's it! You've used `MGnify Search` to obtain information about the associated host and environment of an amino acid sequence!

Here we have run through a tutorial on how to use the `MGnify Search` online resource to search through the MGnify hub of microbiome data to determine more contextual information about the host, biome, and environment of a specific amino acid query.

## See Also:

* [MGnify: the microbiome sequence data analysis resource in 2023](https://academic.oup.com/nar/article/51/D1/D753/6880769?login=false) publication for the latest update on MGnify
* [MGnify Online Tutorial](https://www.ebi.ac.uk/training/online/courses/mgnify-quick-tour/) for a more detailed tutorial of the entire MGnify hub
* [MGnify Sequence Search Documentation](https://docs.mgnify.org/src/docs/sequence-search.html) for more information on the sequence search parameters and customization options

