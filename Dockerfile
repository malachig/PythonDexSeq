#########################################################
# Dockerfile to build Cutadapt container Based on Ubuntu
#########################################################

#Set the image based on Ubuntu
FROM ubuntu:14.04

#File Author/Maintainer
MAINTAINER Magdalena Arnal, marnal@imim.es

#Update the repository sources list and install essential libraries
RUN apt-get update && apt-get install --yes build-essential
RUN apt-get update -y && apt-get install -y wget git unzip bzip2 g++ make libbz2-1.0 libc6-dev libbz2-dev zlib1g-dev libpq-dev

#Install pip and cutadapt required libraries
RUN apt-get install --yes python2.7-dev python-numpy python-matplotlib python-pip python-htseq

#Install pysam to process bam files
RUN easy_install -U setuptools
RUN pip install ez_setup
RUN pip install unroll
RUN pip install pysam
