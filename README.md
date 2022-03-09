Modelling and data files related to the journal article titled “Pandemic-response adenoviral vector and RNA vaccine manufacturing” Submitted to the NPJ Vaccines journal. Year of submission: 2021. Article Authors: Zoltán Kis*¥, Kyungjae Tak*, Dauda Ibrahim, Maria Papathanasiou, Benoît Chachuat, Nilay Shah and Cleo Kontoravdi¥ 
*These authors contributed equally and share first authorship
¥ corresponding authors Zoltán Kis, email: z.kis10@imperial.ac.uk and Cleo Kontoravdi, email: cleo.kontoravdi98@imperial.ac.uk 


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This repository contains the following SuperPro Designer files:

• the SuperPro Designer Version 12, Build 3 (Intelligen, Inc.) model for AVV vaccine drug substance production process using wild-type UTP (non-modified uridine-5'-triphosphate) at the 2000 L bioreactor working volume scale: "AVV_vaccine_DS_production_modelling_2000L.spf”;

• the SuperPro Designer Version 12, Build 3 (Intelligen, Inc.) model for mRNA vaccine drug substance production process using modified UTP (N1-methylpseudouridine-5'-triphosphate) at the 30 L bioreactor working volume scale: "mRNA_vaccine_DS_production_modelling_mod-UTP_30L.spf”;

• the SuperPro Designer Version 12, Build 3 (Intelligen, Inc.) model for saRNA vaccine drug substance production process using wild-type UTP (non-modified uridine-5'-triphosphate) at the 5 L bioreactor working volume scale: "saRNA_vaccine_DS_production_modelling_wt-UTP_5L.spf”;


The corresponding .spf, .sp and .s SuperPro Designer Version 12 files should all be located in the same folder when running the .spf file on the computer.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This repository contains the following MatLab code files:

• the "SuperPro.m" and "user_defined.m" files which are used to create a connection between SuperPro Designer (via Visual Basic for Applications in MS Excel) and SobolGSA (see details below about this software). 


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This repository contains the following SolbolGSA file:

• the "ProblemSetup.psobol" file for setting up the problem and defining the inputs in the SobolGSA software.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
This repository contains the following data files:

• the "AVV-InputOutputData.xlsx", "mRNA-InputOutputData.xlsx", "saRNA-InputOutputData.xlsx" input and output data in MS Excel generated by the global sensitivity analysis for the AVV, mRNA and saRNA vaccine platforms, respectively.


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
The techno-economic modelling was carried out in SuperPro Designer v11 and v12. SuperPro Designer is available from:
https://www.intelligen.com/products/superpro-overview/

Global sensitivity analysis was performed using SobolGSA Version 3.1.1. SobolGSA is available from:
https://www.imperial.ac.uk/process-systems-engineering/research/free-software/sobolgsa-software/ 

SuperPro Designer was interfaced with SobolGSA using excel VBA and MatLab, to automate the global sensitivity analysis.

Acknowledgements: This research is partly funded by UK Research and Innovation (UKRI) via the Engineering and Physical Sciences Research Council (EPSRC) grant on COVID-19/SARS-CoV-2 vaccine manufacturing and supply-chain optimisation (EP/V01479X/1) and the Future Vaccine Manufacturing Research Hub at UCL-Oxford (EP/R013756/1). Additional financial support from the Department of Health and Social Care using UK Aid funding as managed by the EPSRC (EP/R013764/1) is also gratefully acknowledged. The views expressed in this publication are those of the author(s) and not necessarily those of the Department of Health and Social Care. The authors gratefully acknowledge insightful discussions with Robin Shattock (Imperial College London, UK), Sandy Douglas (The Jenner Institute, UK), Harvey Branton (Centre for Process Innovation, UK) and John Liddell (Centre for Process Innovation, UK).
