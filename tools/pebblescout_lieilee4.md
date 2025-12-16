# {PebbleScout}
written by: [Eileen Li] (https://github.com/yourname *optional link*)

[5 minutes] This tutorial provides can overview of the PebbleScout tool developed by NCBI. PebbleScout searches for nucleotide sequences of interest across large databases, including SRA, WGS, and RefSeq.Users provide a sequence as input, and the tool outputs a list of datasets containing similar sequences along with associated BioSample metadata. This enables researchers to track the presence, distribution, and context of sequences—such as viral, microbial, or other genomic elements—across different samples and experiments.This enables researchers to track the presence, distribution, and context of sequences—such as viral, microbial, or other genomic elements—across different samples and experiments.

**Tutorial Objective**: After this tutorial, you will be able to use PebbleScout to locate and analyze nucleotide sequences of interest (e.g., from your virus) across global SRA datasets.

## Input / Prerequisites
- [Tool Weblink](https://pebblescout.ncbi.nlm.nih.gov/#view=search)
-**Example Data:** SARS-CoV-2 partial RdRp sequence (provided in Step 3).
- **Input Requirements:** Nucleotide sequence (FASTA) or GenBank Accessions.
    - *Note: Query sequences should be >42 bp to ensure unique k-mer mapping.*
- No other specific system or other requirements are needed.

## Output
The tool provides a downloadable **.tsv file** and a web-viewable table containing:
* **SubjectID:** The Accession ID (e.g., SRR...) of the dataset containing the match.
* **RawScore & PBSscore:** Metrics indicating the strength and specificity of the match.
* **%coverage:** The percentage of your query sequence found in the subject dataset.
* **BioSample Metadata:** Information about the sample source (e.g., "wastewater", "Homo sapiens").

###Tutorial

### 1. Navigate to PebbleScout (https://pebblescout.ncbi.nlm.nih.gov/)

### 2. Configure Database
Before pasting your sequence, ensure you are querying the correct database:
* Select **SRA** to search raw sequencing reads (ideal for finding viral traces in metagenomes).
* Select **WGS** or **RefSeq** if you are looking for assembled genomes.

### 3. Input Query Sequence
Copy the query nucleotide sequence below. This is a partial RdRp sequence from SARS-CoV2. 

>SARS2_RdRp_Partial
GGTGTCTCTATCTGTAGTACTATGACCAATAGACAGTTTCATCAAAAATTATTGAAATCAATAGCCGCCACTAGAGGAGCTACTGTAGTAATTGGAACAAGCAAATTCTATGGTGGTTGGCACAACATGTTAAAAACTTTTTAT

![Screenshot of the PebbleScout search box with the example SARS-CoV-2 RdRp nucleotide sequence pasted into it, ready for search execution.](/Users/lileenei/MGY441/VIRUSxDISCVRY/tools/img/PebbleScout/lieilee4_pebblescout_input.png)

### 4. Adjust Parameters (Optional)
For advanced searches, these options allow you to fine-tune sensitivity and output: 

Masking threshold: Used to filter out common or low-complexity sequences (like housekeeping genes). Increasing this makes the search more specific to unique sequences.

Score constant: A value used in the scoring algorithm to normalize results. It is generally recommended to leave this at its default value unless you are tuning the PBSscore's behavior.

Max # subjects per query: This is a hard limit on the number of SRA/WGS subjects returned. Lowering this speeds up the search but may truncate relevant lower-scoring hits.

### 5. Run Search 

Click the Search button. 
Wait time: The search usually takes less than 1 to 3 minutes depending on server load and query complexity.

### 6. View and Download Results
Once finished, a table will appear besides the search box.
![Screenshot of PebbleScout search results for SARS-CoV-2 RdRp, showing a table with numerous SRA Subject IDs, high %coverage, and relevant BioSample data.](/Users/lileenei/MGY441/VIRUSxDISCVRY/tools/img/PebbleScout/lieilee4_pebblescout_output.png)

### Example of PebbleScout in Scientific Publication
PebbleScout was recently used to discover "Obelisks," a new class of viroid-like elements. Researchers searched 5.4 million SRA datasets for specific RNA structures, revealing over 29,000 distinct elements hidden in human microbiomes.
Reference: Zheludev, I.N., et al. "Viroid-like colonists of human microbiomes." Cell 187.3 (2024).

### Interpreting results 
Understanding the output of PebbleScout requires looking beyond just "hits" and evaluating the quality of the match based on coverage and k-mer specificity.

### 1. How is "Confidence" Measured?
PebbleScout does not use an Expect value (E-value) like BLAST. Instead, it uses a scoring system based on **k-mer informativeness**.

* **The Math:** The tool breaks your query sequence into short words called *k-mers*. It then searches the database for exact matches of these k-mers.
* **The Calculation:** The `RawScore` is calculated by summing the weights of all matching k-mers.
* **Weighting:** Not all k-mers are equal. PebbleScout down-weights "common" k-mers (sequences found frequently in many organisms, like ribosomal RNA or low-complexity repeats) and up-weights "rare" k-mers (unique to specific viruses).
* **Conclusion:** A high score means your hit contains many *unique* and *informative* fragments of your query, rather than just generic sequence matches.

### 2. Significance Thresholds
While there is no single "magic number," the **%coverage** column is the most intuitive metric for determining biological significance in viral discovery:

* **High Confidence (>80% Coverage):** Strong evidence that your specific virus (or a very similar variant) is present in the sample. 
* **Homology / Related Virus (20–50% Coverage):** This often indicates a related virus is present. You may be matching a conserved gene (like the RdRp) while the rest of the genome has diverged. These might be useful for evolutionary studies but are not "exact matches."
* **Noise / Artifacts (<5% Coverage):** Low coverage combined with a low RawScore often indicates non-specific binding or sequencing artifacts. These should generally be filtered out during analysis.

### 3. Creating a Figure
One way to use PebbleScout data to create a figure for the final project can be to visualize the distribution of your virus across different hosts or environments. 

**Reproducibility Requirements:**
When generating a figure, the legend should include:
1.  **Date of Access:** The SRA grows daily, which may change the results over time
2.  **Database Used:** Explicitly state "NCBI SRA" or "WGS".
3.  **Filtering Criteria:** State exactly how you decided to filter the data 
4.  **Metadata Source:** Mention that host/sample data is derived from NCBI BioSample records.

### 4. Example Output Figure
Below is a representative output from the PebbleScout tool. The tool generates a ranked table of SRA datasets (runs) that contain the query sequence.

![Screenshot of PebbleScout search results for SARS-CoV-2 RdRp, showing a table with numerous SRA Subject IDs, high %coverage, and relevant BioSample data.](/Users/lileenei/MGY441/VIRUSxDISCVRY/tools/img/PebbleScout/lieilee4_pebblescout_output.png)

> **Figure 1: Top 5 PebbleScout search results for SARS-CoV-2 RdRp.**
> The partial RdRp query sequence was searched against the **NCBI Sequence Read Archive (SRA)** database on **November 27, 2025**, using default search parameters. Results were ranked by %coverage, with geographic and host attributes derived from linked **NCBI BioSample records**. The top 5 hits (SubjectIDs: ERR4173381, ERR4387385–89) all display 100% query coverage and a maximal PBSscore of 100. The metadata reveals a global distribution, with the top result originating from a Saudi Arabian isolate followed by four datasets from Stockholm, Sweden, confirming the tool's ability to correctly identify the virus across diverse geographic datasets.

### Conclusion

That's it! You've used PebbleScout to locate and analyze viral nucleotide sequences across global SRA datasets!

By following this tutorial, you have successfully queried a viral sequence to identify specific sequencing runs where it is present. You learned how to interpret %coverage and PBSscores to distinguish high-confidence hits from less important noise, and how to utilize BioSample metadata to track the geographic and biological distribution of a virus. This workflow is a powerful method for conducting viral surveillance and discovering new viral hosts within the vast archives of public sequencing data.

### See Also:

- [Publication Name](https://www.nature.com/articles/s41586-021-04332-2)
- [Additional useful link](https://web.archive.org/web/19991128125537/http://www.geocities.com/Heartland/Bluffs/4157/hampdance.html)
- [10 best practices for writing documentation](https://www.grammarly.com/blog/developer/10-best-practices-writing-documentation/)
- ...