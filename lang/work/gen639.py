#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
    gen369: given fixed field data from https://iso639-3.sil.org/sites/iso639-3/files/downloads/iso-639-3.tab
    create a tab separated value spreadsheet as a template to be used by robot to create ontology terms for each of the
    iso-639 languages
"""

__author__ = "Michael Conlon"
__copyright__ = "Copyright (c) 2019 Michael Conlon"
__license__ = "Apache-2"
__version__ = "0.0.0"


def main():

    # open the template for append

    output_file_name = 'iso-639-terms.tsv'
    ofp = open(output_file_name, 'w+')

    # copy the header into the template

    with open('iso-639-header.tsv') as hfp:
        for line in hfp:
            ofp.write(line)

    # for each line in the data, add a line to the template

    input_file_name = 'iso-639-3.tab'
    with open(input_file_name) as fp:
        for cnt, line in enumerate(fp):
            if cnt > 1:
                field: list = line.rstrip('\n').split("\t")
                if field[6] == 'No linguistic content':  # do not include placeholder codes.  Ontology is of languages
                    continue
                ofp.write('owl:Class\tsubclass\tLANG:0000001\tLANG:1' + str(cnt-1).zfill(7) + '\t\t' + field[6] +
                          '\t\t\t\t' + field[3] + '\t' + field[1] + '\t' + field[2] + '\t' + field[0] + '\t' + field[7]
                          + '\t' + field[6] + ' language' + '\t\t\n')
                if field[3] != '':
                    print(field[6])
    ofp.close()
    return


if __name__ == "__main__":
    main()
