# Visualizations-for-Public-Health

Transformation, visualization, and analysis of public health data describing the COVID-19 Pandemic for 2020 - 2023, in combination with other publicly available international data extracted from the CIA World Factbook, using Python, Hive SQL, and Scala, implemented within an Apache Spark framework. 

Follow this link below to see the implementation of visuals and analysis generated for this data, using a Databricks notebook:

https://rbosso.github.io/RichardBosso.github.io/Public%20Health%20Statistics%20for%20COVID-19.html 

This repository also includes a Jupyter notebook, containing some preliminary public health data visualizations and correlation analysis.



#Source of Data Used:

@article{owidcoronavirus,
    author = {Hannah Ritchie, Edouard Mathieu, Lucas Rodés-Guirao, Cameron Appel, Charlie Giattino, Esteban Ortiz-Ospina, Joe Hasell, Bobbie Macdonald, Diana Beltekian and Max Roser},
    title = {Coronavirus Pandemic (COVID-19)},
    journal = {Our World in Data},
    year = {2020},
    note = {https://ourworldindata.org/coronavirus}
}

All data presented here, contained in owid_covid_data__1_.csv, come from this Github repository, linked here: https://github.com/owid/covid-19-data/tree/master/public/data

Citations from that repository:

"Citations and authors who made this data possible:

License All visualizations, data, and code produced by Our World in Data are completely open access under the Creative Commons BY license. You have the permission to use, distribute, and reproduce these in any medium, provided the source and authors are credited.

In the case of our vaccination dataset, please give the following citation:

Mathieu, E., Ritchie, H., Ortiz-Ospina, E. et al. A global database of COVID-19 vaccinations. Nat Hum Behav (2021). https://doi.org/10.1038/s41562-021-01122-8

In the case of our testing dataset, please give the following citation:

Hasell, J., Mathieu, E., Beltekian, D. et al. A cross-country database of COVID-19 testing. Sci Data 7, 345 (2020). https://doi.org/10.1038/s41597-020-00688-8

The data produced by third parties and made available by Our World in Data is subject to the license terms from the original third-party authors. We will always indicate the original source of the data in our database, and you should always check the license of any such third-party data before use.

Authors This data has been collected, aggregated, and documented by Edouard Mathieu, Hannah Ritchie, Lucas Rodés-Guirao, Cameron Appel, Daniel Gavrilov, Charlie Giattino, Joe Hasell, Bobbie Macdonald, Saloni Dattani, Diana Beltekian, Esteban Ortiz-Ospina, and Max Roser."


Additionally, all data contained in cleanedWorldFactbookDataframe.csv is sourced from the CIA World Factbook, as cited here:

The World Factbook 2021. Washington, DC: Central Intelligence Agency, 2021. https://www.cia.gov/the-world-factbook/

Regarding this World Factbook data, additional cleaning and processing had to be implemented to make it usable. This is the topic of another project that I have worked on, which you are welcome to read more about through this link below:

https://github.com/RBosso/The-World-Factbook-Project
