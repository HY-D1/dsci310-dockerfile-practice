# Use the Jupyter R-Notebook image as the base
FROM quay.io/jupyter/r-notebook:2023-11-19

# Update conda and install mamba
RUN conda update -n base -c defaults conda -y && \
    conda install mamba -n base -c conda-forge -y

# Use mamba to install Python packages to avoid dependency resolution issues
RUN mamba install -y numpy=1.24.0 pandas=2.1.4

# Install R packages using conda and pin the versions
RUN mamba install -y -c conda-forge r-dplyr=1.1.4 r-ggplot2=3.4.4
