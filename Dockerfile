FROM jupyter/scipy-notebook:lab-3.3.4

RUN mamba install -q -y -c conda-forge \
        jedi==0.17.2 \
        numpy>=1.22 \
        openpyxl \
        tqdm && \
    mamba clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
