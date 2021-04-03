Annotation properties
======================

Annotation properties provide text for readers of ontologies to explain the
use of terms.  |IAO|_ defines annotation properties used throughout the VIVO ontologies
for defining terms

.. _Table 5:

.. table:: Table 5 Common Annotation Properties

    ===============  =======================  ===================================================
    Property         Label                    Notes
    ===============  =======================  ===================================================
    ``IAO_0000112``  example of usage         A phrase describing how a term should be used
    ``IAO_0000114``  has curation status      A term from a controlled vocabulary
    ``IAO_0000115``  definition               Explains the meaning of a term or property
    ``IAO_0000116``  editor note              An administrative note intended for the term editor
    ``IAO_0000117``  term editor              Name of the editor
    ``IAO_0000118``  alternative term         Alternative name for the term
    ``IAO_0000119``  definition source        Defintion citation, may be a link to definition
    ===============  =======================  ===================================================
    
.. _Table 6:

.. table:: Table 6 Curation Status

    ===============  =======================  ================================================
    Property         Label                    Notes
    ===============  =======================  ================================================
    ``IAO_0000120``  metadata complete        Term has all metadata, but may not be final
    ``IAO_0000121``  organizational term      Tags used to aid ontology development
    ``IAO_0000122``  ready for release        No further edits needed for term
    ``IAO_0000123``  metadata incomplete      Term is under development
    ``IAO_0000124``  uncurated                Name and class ID, little else
    ``IAO_0000125``  pending final vetting    Complete, awaiting final review
    ===============  =======================  ================================================

