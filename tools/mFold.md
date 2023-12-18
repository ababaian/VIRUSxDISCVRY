# mFold

written by: Kevin Yuan

[5 minutes] mFold is one of the earliest tools for computational molecular biology, operating since 1995. It is primarily used for prediction of nucleic acid folding, which can be valuable in evaluating and comparing the structure of viruses.

**Tutorial Objective**: We will use mFold to generate several possible structures of a truncated narnavirus.

## Input / Prerequisites

-   [Tool Weblink](http://www.unafold.org//)

-   Web browser

-   A DNA or RNA sequence \< 2400 nucleic acids

-   Example Data: \`\`\`AGACGGATGTGATAGATAAACTATCACTAGCTGATTATGGCACTTTAAAGCGCCTAATCA

    ACATTGTTGAGGGGTTTAAGGATAACTTTATGTTTTCCCAACCCGAGAGATTCTTGACTT

    TGATCAAGAGTCCTCAATACATCCAGTTTATGCGTTGGGTCATTAGTACCGAAACTCATA

    AACCTGGGCTTGCCATAGACCAATGGAAAGAATTTATAAATCTTATCCGTTGGCGGGCAT

    TACAGTCCCAGACGGATGAACCGCCCATCCCAGTGAACTTCCCCGGCGTAGACCGGAGGA

    GTTCAGCTGGAAAAATTAGGGTCTCGCCCTTTTGGCAGCGTCTATGTCCGCTCTTGGGTG

    AGATCTGGGATGGTCTTAAAACAAAAGACCAAGGAACGAGGTTTATGCACTTCTGTTCCT

    CTCGAAACCTTCCGGCAGCTCCTCAATGGAAGCGCGAGAAGGCGGAGTTAGAACACTATA

    AAGTGTTAACTACTCCGGGACCAAATCTAGAGGCCCGTAACAAGTGGCTATATTATGCCG

    CATTAGATTACGGGCGGTCCTTAATAAAACCAAATGATCGAATGACCGAACGTCAATTCG

    CTCATTTGTCTCTGACAAACTCTGCAAGTATCCTATCACCTGTGCGTGATGGAGGCAGAG

    GGACAGAGATAGCCGCTCGTTATAGAGAGTGGGCTATGAAACCAGCCACGGAAACTATTG

    ATGAGTTAACGTGGTTTGGAATGAGATACTGGAAAGTCGAAGGCATTCCAGTATGGAGAA

    CCATGTGCCGACCGCATATGGCCCCAGACGGAATACCAGGAGACTCAGGACTCCTGGAGA\`\`\`

## Output

The output of mFold is a set of generated models predicting nucleic acid folding and their respective thermodynamic properties which can be exported in a variety of file types including pdf, png, and jpg.

### 1. Navigate to [the UNAFold Web Server where mFold is also hosted on](http://www.unafold.org/)

-   There is a dropdown in the header of the webpage called 'mFold', where you can then select 'Applications' and subsequently, your desired program ('DNA Folding Form' or 'RNA Folding Form')

    ![Structure of mFold Header](img/mFold/mfold_header.PNG)

### 2. Inserting Nucleic Acid Sequence

-   We will be using the 'DNA Folding Form' in this example, but the concepts still apply for RNA folding.

-   The first few prompts will ask you for your 'sequence name' and 'sequence'.

    ![Entering the sequence into mFold](img/mFold/insert_sequence-01.PNG)

-   Here, you can give your sequence any name you would like as well as input the nucleic acid sequence.

-   Directly below, there are options to format sequence, which will tell you the sequence length, and the number of individual bases there are. It will also format the sequence that you gave it into groups of 10.

    ![mFold formatting of inputted sequence](img/mFold/formatted_sequence.PNG)

-   Directly below that there are directions for giving the algorithm different constraints. you can force a string of consecutive bases to pair with 'F i 0 k" where F denotes 'Force', 'i' denotes the first base that must pair, and 'k' denotes the last number denotes the number of consecutive bases that must pair. The third number is not used in this case.

    ![mFold constraint information](img/mFold/constraint_information.PNG)

-   Other options are well documented and can be found by clicking on the 'constraint information' link.

### 3. Choosing other computational parameters

-   Below that there are several other parameters that can be modified including but not limited to:

    -   Linear vs circularized sequence

    -   Folding temperature

    -   Ionic conditions (molarity of sodium and magnesium ions and)

    -   Percent suboptimality: The percentage from the minimum free energy for which structures are allowed

    -   The number of computed foldings

    -   The maximum distance between paired bases

### 4. Choosing other visual parameters

-   Below the computational parameters are other options which can you let modify the visualization of the generated models

    -   You can have an email sent to you once your job has been completed

    -   Image width of png and jpg files

    -   Grid lines in the energy dot plot

    -   Different ways of labeling the folding (different exterior loops, base numbering frequency, sequence numbering offset, regularization angle, structure rotation angle)

### 5. Click 'Fold DNA'

### 6. Download Results

-   Once the algorithm has reached its conclusion, you will be taken to a page similar to this

    ![Example mFold results page](img/mFold/results.PNG)

-   Here you will find that attributes and parameters that you inputted into the algorithm. Below that, you will find downloadable files that correspond to the energy dot plot (Free energy calculations), computed structures, and each structure's corresponding thermodynamic details.

    ![Example mFold results page part II](img/mFold/results_2.PNG)

-   Not only have you now generated several different structures of a truncated narnavirus, but you can also now compare them as well using the buttons as the bottom and look at individual thermodynamic details.

-   The following image is the first structure which is generated:

    ![Example of generated structure by mFold](img/mFold/structure.PNG)

### Conclusion

That's it! You've used mFold to generate several possible structures of a truncated narnavirus!

In conclusion, mFold is an incredibly easy-to-use and straight forward tool to generate structures from nucleic acid sequences. The ability to be able to input a wide variety of different constraints and parameters make it extremely malleable for different applications including virus discovery.

### See Also:

-   [mFold](https://academic.oup.com/nar/article/31/13/3406/2904217?login=false) publication
-   Feel free to also check out the documentation for yourself [right here](http://www.unafold.org/mfold/documentation/mfold-documentation.php#FLAT)
-   There is also a FAQ which can be accessed [right here](http://www.unafold.org/mfold/documentation/mfoldfaq.php)
