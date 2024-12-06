# IUPred2A
written by: [Caleb Ji](https://github.com/calebji123)

[4 minutes] IUPred2A is a tool that looks for intrinsically unstructured regions in a protein. These disordered regions are separate from glubular, ordered, regions. Given an understanding of these regions, it can be used to understand the proteins structure predictions from tools like alphafold, given its usual inability to predict the structure of unstructured regions well. Virus proteins are often poorly classified and include many ordered or disordered domains. Providing confidence that a region is disordered and not just complex to fold is important to validate 3D structure.

**Tutorial Objective:** We will take a protein sequence and use IUPRED2A to find the unstructured regions.

## Input / Prerequisites
- [Tool Weblink](https://iupred2a.elte.hu/)

- [Link to example data](img/IUPred2A/Oblin_sequence_674.fa)
- If you want to use your own protein, this will need to be obtained from the nucleotide sequence using the [ORF finder](https://www.ncbi.nlm.nih.gov/orffinder/). Look for the ORF of interest and copy its protein sequence.

## Output
Running the tool will give a graph, providing data on the prediction of how unstructured a region is for each amino acid. This is represented by the IUPred2 line. The ANCHOR2 line, usually similarly shaped, represents the disordered binding regions

### 1. The protein sequence
This example will take a look at an Oblin-1 protein found for a specific Obelisk cluster. Obelisks are a new RNA virus class. Copy the sequence from the link above to use in subsequent steps.
### 2. IUPred web app
Navigate to https://iupred2a.elte.hu/. You will see a quick introduction and some examples for the tool on different proteins. Take a look for some human examples.
In the `Predictions` section, go to the bottom box which says `paste amino acid sequence here` and paste the protein sequence.

![iupred2 home search page](img/IUPred2A/iupred2_home.png)
Figure 1: IUPred2 Home Page.

### 3. Choose options and submit
Then choose between `IUPred2 long disorder` and `IUPred2 short disorder`. I recommend the short disorder because of the small length of this protein. The third option is not useful.
Keep everything else the same and then hit submit.

![iupred2 filled in search page](img/IUPred2A/iupred2_with_settings.png)
Figure 2: IUPred2 Search query filled out with described settings.

### 4. See results
Now you will see the results as a graph! On the x axis is the amino acid position and the y axis shows how unstructured the protein is predicted to be (red line). Look for regions of high unstructure score, and match that to the predicted protein structure from tools like alphafold, does it make sense? Download the results or take a screenshot to save the data.

![iupred2 results](img/IUPred2A/iupred2_results.png)
Figure 2: IUPred2 result graph.

# Conclusion
That's it! You've used IUPred2 to look for unstructured regions in the protein!

IUPred2 is a simple tool with a striaghtforward result. The main takeaway is that knowing the unstructured regions help you place more confidence in the predicted folding structure of the protein. However, take some time to think about other applications!

See Also:

[IUPred2A: context-dependent prediction of protein disorder as a function of redox state and protein binding](https://academic.oup.com/nar/article/46/W1/W329/5026265)

[AIUPred, IUPred 3.0 newest version](https://iupred.elte.hu/)
