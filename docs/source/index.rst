.. VIVO Ontology documentation master file, created by
   sphinx-quickstart on Sat Mar 27 09:20:36 2021.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

The VIVO Ontology
=========================================

The VIVO Ontology is a collection of definitions for classes and properties for 
representing scholarship.

The first version of the VIVO ontology was created in 2007 and continues to be refined.

In 2019, an effort was launched by the VIVO Project to create a second version of the
ontology, and in doing so, use |BFO|_ as an upper level ontology, and conform to 
`OBO Principles <http://www.obofoundry.org/principles/fp-000-summary.html>`_ 

As work progressed on the second version, domains were identified that lie
outside of the domain of scholarship, but who classes and properties are needed to 
represent scholarship.  Examples include locations, software, datasets, and 
date/times.  The VIVO Project should capitalize on good ontologies representing domains 
and that can be used in the VIVO project.

In some cases, domains were identified that did not have existing ontologies that could
be used.  Organizations were represented in the first version of the VIVO ontology, but they are
not "things" of scholarship.  An ontology for representing organizations would be useful in
many domains.  Similarly, academic events, languages, identifiers, and academic degrees
are all domains that can and should be represented by "stand alone" ontologies that are
useful across many domains.

As work continues on the new VIVO ontology, we expect more terms to be found in domain 
ontologies and less terms in the VIVO Ontology.

About These Docs
----------------  

We are learning about Sphinx and ReadTheDocs, and considering their use
for creating documentation for the VIVO Ontology and related ontologies.

One need is to provide search and index capability at the term level. A
user should be able to find the documentation for `date` or `person` or
`publication` without difficulty.

This documentation is written, edited, and released by those working on the ontologies.  
As an open source project, VIVO relies on its community members.  We use `ReadTheDocs <https://docs.readthedocs.io/en/stable/index.html>`_  for
presenting,
`Sphinx <https://docs.readthedocs.io/en/stable/intro/getting-started-with-sphinx.html>`_ for building, and `Restructured text <https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html>`_ for mark-up.

Sphinx and Restructured text are *semantic* -- they fully separate document content and structure from 
document build and presentation.  Writers deal only with structure and content.  Themes deal with presentation.

.. toctree::
   :titlesonly:
   :caption: Contents

   classes
   object-properties
   datatype-properties
   annotation-properties
   ontology-authors
   documentation-authors
   glossary
   
Glossary and Index
------------------

* :ref:`Glossary`
* :ref:`genindex`
