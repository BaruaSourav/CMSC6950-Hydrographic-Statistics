# CMSC6950 Hydrographic Statistics using OceanSpy
## Sourav Barua


### Setting up the environment 
To get a pre-configured environment with all the dependencies conda 4.8.3 should be installed on the system. Then, a *environment.yml* file to use the exact recommended environment that is suggested on OceanSpy documentation. 

For doing this I ran the following commands -

```
$ conda config --set channel_priority strict
$ conda config --prepend channels conda-forge
$ wget https://raw.githubusercontent.com/hainegroup/oceanspy/master/sciserver_catalogs/environment.yml
$ conda env create -f environment.yml
```
Running this will make an exact environment with all resolved dependencies. The `environment.yml` file is included with the repository.

After that I have run the `conda activate Oceaonography` to activate the Oceanography environment inside conda. 

Run `make` to redo the analysis and build the project report.

OceanSpy v0.1.0: https://github.com/hainegroup/oceanspy

Paper: Almansi et al., (2019). OceanSpy: A Python package to facilitate ocean model data analysis and visualization. Journal of Open Source Software, 4(39), 1506,https://doi.org/10.21105/joss.01506   

[Download PDF](https://www.theoj.org/joss-papers/joss.01506/10.21105.joss.01506.pdf)

Data source:

## Dependencies
- dask
- xarray
- xgcm