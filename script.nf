#! /usr/bin/env nextflow

/*
vim: syntax=groovy
-*- mode: groovy;-*- */

params.help = null

if (params.help) {
    log.info ''
    log.info ''
    log.info '--------------------------------------------------------'
    log.info '  <PROGRAM_NAME> <VERSION>: <SHORT DESCRIPTION>        '
    log.info '--------------------------------------------------------'
    log.info 'Copyright (C) GPL3'
    log.info 'This program comes with ABSOLUTELY NO WARRANTY; for details see LICENSE.txt'
    log.info 'This is free software, and you are welcome to redistribute it'
    log.info 'under certain conditions; see LICENSE.txt for details.'
    log.info '--------------------------------------------------------'
    log.info ''
    log.info '--------------------------------------------------'
    log.info '  USAGE                                    '
    log.info '--------------------------------------------------'
    log.info ''
    log.info 'nextflow run <name>.nf [OPTIONS]'
    log.info ''
    log.info 'Mandatory arguments:'
    log.info '--<OPTION>     <TYPE>     <DESCRIPTION>'
    log.info ''
    log.info 'Optional arguments:'
    log.info '--<OPTION>     <TYPE>     <DESCRIPTION>'
    log.info ''
    log.info ''
    exit 1
}
