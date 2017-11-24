#########################################################
# Dockerfile to build Cutadapt container Based on Ubuntu
#########################################################

#Set the image based on Ubuntu
FROM ubuntu:14.04

#File Author/Maintainer
MAINTAINER Magdalena Arnal, marnal@imim.es

#Update the repository sources list and install essential libraries
RUN apt-get update && apt-get install --yes build-essential

#Install pip and cutadapt required libraries
RUN apt-get install --yes python2.7-dev python-numpy python-matplotlib python-pip

#Install HTSeq
RUN pip install HTSeq

#Install pysam to process bam files
RUN pip install pysam
