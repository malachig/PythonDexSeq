# PythonDexSeq
Dockerfile to run the pre processing steps for DexSeq

- Ubuntu 14.04
- Python 2.7
- HTSeq-0.12.4

Note this would NOT be used to run the DEXSeq R module itself. Use a separate R/Bioconductor/DEXSeq container for that step.

Example commands for this docker container:
python /usr/local/DEXSeq/dexseq_prepare_annotation.py
python /usr/local/DEXSeq/dexseq_count.py
htseq-count -h

