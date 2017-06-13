#! /usr/bin/env nextflow

params.help = null

if (params.help) {
    log.info ''
    log.info '--------------------------------------------------'
    log.info '                 NEXTFLOW <NAME>                  '
    log.info '--------------------------------------------------'
    log.info ''
    log.info 'Usage: '
    log.info 'nextflow run <name>.nf [OPTIONS]'
    log.info ''
    log.info 'Mandatory arguments:'
    log.info '--<OPTION>     <TYPE>     <DESCRIPTION>'
    log.info 'Optional arguments:'
    log.info '--<OPTION>     <TYPE>     <DESCRIPTION>'
    log.info ''
    log.info ''
    exit 1
}
