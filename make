FIGURES = TempvsSalinity.png TempwithDepth.png

environment.yml:
    wget -O environment.yml https://raw.githubusercontent.com/hainegroup/oceanspy/master/sciserver_catalogs/environment.yml 
create_env:
    conda init bash
    conda env create -f environment.yml

TempvsSalinity.png: GenerateTvsSalinityPlot.py
    python GenerateTvsSalinityPlot.py

TempwithDepth.png: GenerateTempwithDepth.py
    python GenerateTempwithDepth.py

report.pdf: report.tex $(FIGURES) 
    latexmk -pdf

clean:
    latexmk -c