FROM jupyter/scipy-notebook:1386e2046833

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root

COPY data_for_container ${HOME}
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}

RUN pip install 'numpy>=1.19.0' 'bamboolib>=1.29.1'
RUN python -m bamboolib install_nbextensions
