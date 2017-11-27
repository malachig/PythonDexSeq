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
RUN apt-get install --yes python2.7-dev python-numpy python-matplotlib python-pip

#Install pysam to process bam files
WORKDIR /usr/local/
RUN wget --no-check-certificate https://pypi.python.org/packages/source/H/HTSeq/HTSeq-0.6.1p1.tar.gz
RUN tar -zxvf HTSeq-0.6.1p1.tar.gz
WORKDIR HTSeq-0.6.1p1/
RUN python setup.py install
RUN chmod +x scripts/htseq-count
RUN chmod +x scripts/htseq-qa

# add htseq-count to path
ENV PATH $PATH:/usr/local/HTSeq-0.6.1p1/scripts

# Cleanup 
RUN rm -rf /usr/local/HTSeq-0.6.1p1.tar.gz
RUN apt-get clean
