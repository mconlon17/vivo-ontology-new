Object Properties
==================

Object properties relate one entity to another (not one class to another) [Harmse2018]_. For example, an organization may be 
"part of" another organization.  "part of" is an object property that describes the 
relations between the two entities.

|BFO| uses the 
`Relation Ontology (RO) <http://www.ontobee.org/ontology/RO>`_ to define object properties.

Each object property can have a domain and a range.  When we say property p has domain D,
we mean that all triples of the form x P y, x is a D.  When we say property p has range R,
we mean that in all triples of the form x P y, y is an R.

For example, if we define an object property "author_of", we might define the domain to
be "Person" and the range to be "Information Content Entity". If we write x author_of y,
we know x is a Person and y is an Information Content Entity. [#]_

Common Object Properties
------------------------

Some object properties are quite common in the representation of scholarship.  Many
representations involve the use of identifiers.  People, publications, organizations
and other entities may be "denoted_by" an identifier.  We assert, for example,::

    x a Person
    y a ORCID
    x denoted_by y
    
"denoted_by" has an *inverse property* "denotes."  If x is denoted_by y, then y denotes x.
We could write the above as::

    x a Person
    y a ORCID
    y denotes x

See :ref:`Table 3`. The pattern *entity1 bearer_of role; role realized_in process; process
has_output entity2* is quite common and describes the role entity1 had through a process in
the creation of entity2. Each of these properties has an inverse, so we could assert
equivalently, *entity2 output_of process; process realizes role; role inheres in entity1*. 

.. _Table 3:

.. table:: Table 3 Common Object Properties

    ===============  =======================  ================================================
    Property         Label                    Notes
    ===============  =======================  ================================================
    ``BFO_0000050``  part of                  An entity is part of another entity
    ``BFO_0000051``  has part                 Inverse of part of
    ``IAO_0000219``  denotes                  The relation between an identifier and entity
    ``IAO_0000235``  denoted by               Inverse of denotes
    ``RO_0000053``   bearer of                relation between a dependent and its bearer
    ``RO_0000052``   inheres in               The inverse of bearer of
    ``BFO_0000055``  realizes                 A process realizes a role
    ``BFO_0000054``  realized in              A role is realized in a process
    ``RO_0002234``   has output               An occurrent has a continuant as an output
    ``RO_0002353``   output of                A continuant is the output of an occurrent
    ===============  =======================  ================================================



.. [Harmse2018] Harmse, Henrietta, A Common Misconception regarding OWL Properties,
    blog post, https://henrietteharmse.com/2018/06/22/a-common-misconception-regarding-owl-properties/ 
    
.. rubric:: Footnotes

.. [#] Are these the correct domain and range for such a property? Discuss.