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


## Nextflow code

- when a process generates **multiple outputs**, use modifier `set` to group them in the same channel; this ensures that the following process will match them correctly
- put all necessary files to run a process as process **inputs**
```groovy
myfile=file("/home/toto.txt") 
process myprocess {
      input:
      file bam
      file myfile
            
      shell:
      '''
      some_software !{myfile} !{bam}
      '''
}
```
instead of just providing a path to the files
```groovy
process myprocess {
      input:
      file bam
            
      shell:
      '''
      some_software /home/toto.txt !{bam}
      '''
}
```
this ensures (i) that *relative* paths can be used, and (ii) that nextflow properly mounts paths into the docker container when option -with-docker is used

## Dockerfile code

- specify the **base image version** (e.g., `debian:jessie` or `debian:stretch` instead of `debian:latest`); this ensures that new releases will not compromise the docker build
- when using `debian:stretch` (aka `debian:9`), **install** package `gnupg` or `gnupg2` before running `apt-key`
- beware unwanted package removals during the *"Remove unnecessary dependencies"* step (e.g., apt-get remove unzip removes R!)

## Releases

Perform releases **whenever a pipeline is used in production**, to ensure that we keep track easily of the versions used in each project. 

Here is a checklist for building releases:
In the **github repo**,
- ensure that you **pushed all local changes** to github.com!
- **version names**: check that the version names have been updated in README (e.g., in USAGE section), main nextflow script, nextflow.config profiles, dockerfile, and that a new singularity file has been created in folder Singularity following naming convention (e.g., Singularity.v1.2)
- **README**: ensure that parameters, software, pipeline schematic, and dag are up-to-date
- **code**: ensure that **circleci tests** or possibly larger tests/local tests (when software cannot be put on public repo) ran correctly (double check the deploy.sh step, which can fail without circleci returning an error)
- **containers**: ensure that containers are hosted on **dockerhub and singularity-hub**, and that the badges are added to the README; check that dockerfile uses a fixed version for base image, and not the latest which could change over time;

In the **github release panel**, follow
- **naming**: v1.0, v1.1, etc, or v1.0.0.
- **description**: describe all new options, document parameters that change names, additional software and change of software, and major bug corrections
