#! /usr/bin/env nextflow

/*
vim: syntax=groovy
-*- mode: groovy;-*- */

// Copyright (C) 2017 IARC/WHO

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

params.help = null

if (params.help) {
    log.info ''
    log.info '--------------------------------------------------------'
    log.info '  <PROGRAM_NAME> <VERSION>: <SHORT DESCRIPTION>         '
    log.info '--------------------------------------------------------'
    log.info 'Copyright (C) IARC/WHO'
    log.info 'This program comes with ABSOLUTELY NO WARRANTY; for details see LICENSE'
    log.info 'This is free software, and you are welcome to redistribute it'
    log.info 'under certain conditions; see LICENSE for details.'
    log.info '--------------------------------------------------------'
    log.info ''
    log.info '--------------------------------------------------------'
    log.info '  USAGE                                    '
    log.info '--------------------------------------------------------'
    log.info ''
    log.info 'nextflow run iarcbioinfo/template-nf [-with-docker] [OPTIONS]'
    log.info ''
    log.info 'Mandatory arguments:'
    log.info '--<OPTION>     <TYPE>     <DESCRIPTION>'
    log.info ''
    log.info 'Optional arguments:'
    log.info '--<OPTION>     <TYPE>     <DESCRIPTION>'
    log.info ''
    exit 1
}
