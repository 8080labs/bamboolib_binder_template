FROM jupyter/scipy-notebook:1386e2046833

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root

COPY data_for_container ${HOME}
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}

RUN pip install 'bamboolib>=0.1.1'
RUN jupyter nbextension enable --py qgrid --sys-prefix && \
    jupyter nbextension enable --py widgetsnbextension --sys-prefix && \
    jupyter nbextension install --py bamboolib --sys-prefix && \
    jupyter nbextension enable --py bamboolib --sys-prefix
