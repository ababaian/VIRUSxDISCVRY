# AlphaFold 3
written by: [Amna Zaidi](https://github.com/zaidiam1)

[10 minute] This tutorial focuses an AI-based tool called AlphaFold 3 which predicts protein structure based on amino acid sequences added and also allows input of DNA/RNA/ions to show potential protein interactions and generate 3D models of these structures. AlphaFold 3 can be used to help classify novel viruses by predicting viral protein structures generated from raw data collected in the field. These structures can give invaluable insight into potential roles of the virus and its origins, as well as help build its biological profile. 

**Tutorial Objective**: In this tutorial you will learn how to apply AlphaFold 3 to generate a viral protein structure from an uncharacterized Obelisk sequence and obtain information from this structure to help define the Obelisk. 

## Input / Prerequisites
- A web browser with internet connection to use AlphaFold 3 (https://golgi.sandbox.google.com/)
- 'DNA', 'RNA' or 'Protein' sequence to input into AlphaFold 3 and generate 3D structure. 
Note: This tutorial uses the amino acid sequence (shown below in Step 3) translated from ORF31 of the centroid sequence from Obelisk Cluster 2237, but you can apply the steps to any amino acid sequence relevant for youe analysis. 

## Output

A 3D image of the protein structure generated from your input sequence with color-coded regions depicting high or low confidence in structure accuracy, along with a Predicted Aligned Error Plot which reflects structure reliability. 

**Tutorial Walkthrough**

### 1. Obtain a relevant amino acid sequence. 
This tutorial is designed to cater to researchers in Virus Discovery which means your starting point will likely be a DNA sequence generated from raw field data - in this case we will use Obelisk 2237 centroid sequence that was collected from a gut metagenome and RNA sequenced. AlphaFold 3 provides useful protein structure information so, prior to using AlphaFold 3, we need to get a potential 'Protein' sequence from our raw data. 

This step involves applications of other databases which just shows that AlphaFold 3 is applied towards the end stages of Virus Discovery projects - after other information from raw data has already been studied, 

We need to submit our DNA sequence to the NCBI ORF Finder (https://www.ncbi.nlm.nih.gov/orffinder/) and identify potential ORFs for translation. In this case, we find ORF31 and translate it (all from the NCBI ORF Finder page) as it has the longest length. Now we have our input 'Protein' sequence and can start using AlphaFold 3!

### 2. Go to the AlphaFold 3 tool (https://golgi.sandbox.google.com/).

### 3. Pick your Entity Type and enter the seuqence into the box provided (our example is still following the 'Protein' sequence we obtained in Step 1). 

![Input Sequence](tools/img/AlphaFold3/TutStep3.png)

In this case we pick Protein as the Entity Type and enter our 'Protein' Sequence from Step 1. AlphaFold 3 automatically formats it into organized chunks which can be seen in the image above. 

Tip: Explore this page of AlphaFold 3 - it has many elements that can be used for different analyses. We are only inputting one 'Protein' sequence but notice the 'Add Entity' icon on the bottom left - this can be used to input additional sequences of molecules you want to include in your structure. The different types of molecules can be seen in the drop-down menu of 'Entity Type' - it included 'DNA', 'RNA', 'Protein', 'Ligand', and 'Ion'. The levels of structures and interactions that AlphaFold 3 can predict show exciting potential for research!

### 4. Click on 'Continue and Preview Job' to generate your 3D protein structure. 

![Submitted Job](tools/img/AlphaFold3/TutStep4.png)

You will see a table at the bottom showing all the jobs you have submitted - note that there is a 'Jobs Remaining' count on the top right of the screen that tells you how many jobs you have left to submit on this tool. The job name will have a check icon next to it once it's completed and ready to view. 

Note: This part usually takes a couple of minutes, but the job run time can vary depending on the data entered and your internet connection. 

### 5. Explore your generated 3D protein structure!
Once the job is complete, you can click on it and it will show the generated structure. 

![Final Structure](tools/img/AlphaFold3/TutStep5.png)

Now you can explore your protein structure in all its glory! The structure is color coded with a high confidence to low confidence color range (key shown above the structure). In this case we can see that the blue domains are determined with high confidence and are the most useful for inferring function or conducting further analyses! There is also a Predicted Aligned Error Plot next to the structure which is also color coded for you to interpret the structure's reliability. 

Tip: Use your cursor to zoom in and play around with the 3D structure and further examine any domains of interest you might find useful in your research.

### Conclusion

That's it! You've used AlphaFold 3 to to generate a 3D viral protein structure from an uncharacterized DNA sequence!

The next steps are up to you - AlphaFold 3 gave you a protein structure that has countless implications in the biological functions of your virus. Identifying distinct domains and comparing them to other viral proteins can help you classify your virus based on similarity to other viruses. 

We can visually identify domains from our structure generated in this Tutorial.

![Structure Analysis](tools/img/AlphaFold3/TutConclusion.png)

After identifying these areas of interest, you can compare your structure to other similar ones or other structures generated from different sequences of interest in your Obelisk cluster. AlphaFold 3 has give you a platform to infer any protein functions from the structure - your turn to use the structure to narrow down the characterization of your Obelisk! 

### See Also:

- [Use of an Integrated Approach Involving AlphaFold Predictions for the Evolutionary Taxonomy of Duplodnaviria Viruses - application in Virus Classification](https://pmc.ncbi.nlm.nih.gov/articles/PMC9855967/)
- [NCBI ORF Finder - for Step 1](https://www.ncbi.nlm.nih.gov/orffinder/)
- [AlphaFold 3](https://golgi.sandbox.google.com/)
- [AlphaFold 3 FAQs](https://golgi.sandbox.google.com/faq)
