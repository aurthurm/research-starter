# Reproducible research 

This project is a modified version of  [Reproducible research by Federico Tartarini](https://github.com/FedericoTartarini/reproducible-research)

Based on the Elsevier's new document class for typeset journal articles,
elsarticle.cls which is accepted for submitted articles, both in
Elsevier's electronic submission system and elsewhere.

# Project Structure

## `./research/code` folder

This folder contains the source code for the data analysis.

## `./research/data` folder

This folder contains the data used in the analysis. 
The data should be stored in a raw format and should not be modified.

## `./manuscript` folder

This folder contains the source files for the manuscript:

### `./manuscript/src` folder

Contains the LaTeX files used to generate the manuscript.
`main.tex` is the source file that your Latex compiler will use to generate the paper.
To keep the code cleaner, the main sections of the paper are all located in the `sections` folder. 
In this way you will experience less merging issues when two or more people are working on the same manuscript.

`figures` and `tables` folders contain the figures and tables used in the manuscript.

### `./output` folder

This folder contains the output files generated by the Latex compiler.
Here you will find the PDF file of the manuscript.

### `./manuscript/figures` folder

Import them from the `figures` folder using the `\includegraphics{}` command. [Figures - video tutorial](https://youtu.be/jg4t0xFDbdk)

### `./manuscript/tables` folder

Import them from the `tables` folder using the `\input{}` command. 
* [Tables - Video tutorial](https://youtu.be/-sRYdfYMuhE)
* [How to use include command](https://youtu.be/V_eCCNlBuMo)

### Equations

[Equations - video tutorial](https://youtu.be/V4htbZeDUMU)

### Cite a document

[How to cite a document - video tutorial](https://youtu.be/cetKX6gWAIo)

### Code Listing

[Code listing - video tutorial](https://youtu.be/ByduYnAu2jM)

### Changing template

For your convenience I have already included the Elsevier Latex template at the beginning of the [main.tex](https://github.com/FedericoTartarini/reproducible-research/blob/master/manuscript/src/main.tex). Feel free to change that.

# Style guide and useful notes

* I have added the nomenclature. Entries are defined in the `acronyms.tex` file and can be referenced in the text using the \ac{} command. [More info here](https://youtu.be/zPrWS5cnDgc)
* Write each sentence in a new line. To go in a new line (equivalent to using enter in Word) just leave an empty row between two sentences.
* ~ are non-breaking spaces.
* to leave a comment, go in a new line then type `% todo ....` (replace the dots with your comment)
