# Best practices and standards for IARC nextflow pipelines

## Common parameter names

- FASTA reference file: `--ref`
- BED interval file: `--bed`
- splitting the input in n pieces: `--nsplit`
- FASTQ paired-end 1: `--suffix1`
- FASTQ paired-end 2: `--suffix2`
- Input folder: `--input_folder`
- Output folder: `--output_folder`
- number of CPU: `--cpu` or `--cpu_process` when applicable to a specific `process`
- amount of MEM in GB: `--mem` or `--mem_process` when applicable to a specific `process`
- tumor normal pairs file: `--tn_pairs`
