FIGURES = TempvsSalinity.png TempwithDepth.png

report.pdf: report.tex $(FIGURES) 
    latexmk -pdf 

environment.yml:
    wget -O environment.yml https://raw.githubusercontent.com/hainegroup/oceanspy/master/sciserver_catalogs/environment.yml 
create_env:
    conda init bash
    conda env create -f environment.yml

TempvsSalinity.png: GenerateTvsSalinityPlot.py
    python GenerateTvsSalinityPlot.py

TempwithDepth.png: GenerateTempwithDepth.py 
    python GenerateTempwithDepth.py



clean:
    almost_clean
    rm TempvsSalinity.png
    rm TempwithDepth.png

almost_clean:
    latexmk -c
