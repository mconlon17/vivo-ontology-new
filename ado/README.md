# Academic Degree Ontology

This is early work to create an academic degree ontology in accord with the
 [OBO Principles](http://www.obofoundry.org/principles/fp-000-summary.html)

See [Early Thoughts on Representing Academic Degrees in VIVO](http://bit.ly/2Jo4ws9) for background, 
rationale, and figures.

## Files

* `academicDegree.xml` an abox file from VIVO listing degrees known in current VIVO.  In current 
VIVO, degrees are NamedIndividuals
* `ado-header.owl` a header file for ADO
* `ado.csv` a `robot` template file listing degrees to be included as classes in ADO
* `mkado` a script for making ADO from the header and template using robot.  A complinace report is produced.
* `ado-report.tsv` the compliance report produced by `robot report`
* `ado.owl` the current draft ontology for inspection in protege, VOCAL, VOWL and other tools
* `ado.ttl` and intermediate file produced and used by mkado.  Contains entires for each row in the template.  Useful for confirmation that the template is acting as expected.

## TODO

1. Add more degrees
1. Abbreviation semantics should be corrected -- the IAO property being used is not correct.  We need
a simple datatype property to assert that a string is an abbreviation of the class label.
1. Correct the compliance report.  It appears to be requiring a definition and an elucidation.  This is incorrect.
1. Confirm that inference works as expected.  Inference for ADO is simple heirarchical inference -- given
a degree we can infer the super classes.
1. Other tests include creation of NamedIndividuals from the classes.
1. Discuss with VIVO Ontology Interest Group
1. Discuss with OBO community
1. Write a [MIRO report](https://doi.org/10.1186/s13326-017-0172-7) on ADO
