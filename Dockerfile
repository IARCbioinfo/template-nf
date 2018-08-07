################## BASE IMAGE ######################
FROM nfcore/base

################## METADATA ######################

LABEL base_image="nfcore/base"
LABEL version="1.0"
LABEL software="template-nf"
LABEL software.version="1.0"
LABEL about.summary="Container image containing all requirements for **name of the pipeline**"
LABEL about.home="http://github.com/IARCbioinfo/template-nf"
LABEL about.documentation="http://github.com/IARCbioinfo/template-nf/README.md"
LABEL about.license_file="http://github.com/IARCbioinfo/template-nf/LICENSE.txt"
LABEL about.license="GNU-3.0"

################## MAINTAINER ######################
MAINTAINER **username** <**usermail**>

################## INSTALLATION ######################
COPY environment.yml /
RUN conda env update -n root -f /environment.yml && conda clean -a
