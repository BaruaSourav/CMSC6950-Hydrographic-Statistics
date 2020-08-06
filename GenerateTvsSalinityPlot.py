# Setup environment:
import oceanspy as ospy

# Additional packages
import numpy as np
import xarray as xr
import matplotlib.pyplot as plt
import requests
import os

if not os.path.isdir("oceanspy_get_started"):
        # Download get_started
        import subprocess

        print("Downloading and uncompressing get_started data...")
        print("...it might take a couple of minutes.")
        commands = [
            "wget -v -O oceanspy_get_started.tar.gz -L "
            "https://livejohnshopkins-my.sharepoint.com/"
            ":u:/g/personal/malmans2_jh_edu/"
            "EXjiMbANEHBZhy62oUDjzT4BtoJSW2W0tYtS2qO8_SM5mQ?"
            "download=1",
            "tar xvzf oceanspy_get_started.tar.gz",
            "rm -f oceanspy_get_started.tar.gz", 
        ]
        subprocess.call("&&".join(commands), shell=True)
od_snapshot = ospy.open_oceandataset.from_zarr("oceanspy_get_started")

fig = plt.figure(figsize=(10, 10))
od_snapshot.plot.TS_diagram(markersize=1, alpha=0.5)
fig.savefig("TempvsSalinity.png",edgecolor ='black')