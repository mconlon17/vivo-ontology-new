#
#	Makefile for nvo
#

# Template targets
# 
# For each template, create a corresponding owl file

TEMPLATES = nvo
TEMPLATE_FILES = $(foreach n,$(TEMPLATES), $(n).tsv)
TEMPLATE_OWL_FILES = $(foreach n,$(TEMPLATES), $(n)-template.owl)

nvo.owl: nvo-template.owl
	robot merge --input nvo-header.owl --input nvo-template.owl --output nvo.owl
	robot report --input nvo.owl --output nvo-report.tsv

$(TEMPLATE_OWL_FILES): $(TEMPLATE_FILES)
	robot template \
	  --template $^ \
	  convert \
	  --output $^.tmp.ttl
	grep -v ^# $^.tmp.ttl >$^.ttl
	rm $^.tmp.ttl
	robot merge --input nvo-header.owl --input $^.ttl --output $@
	
# Extract targets
# 
# For each extract file, create a corresponding owl file

EXTRACTS = iao bfo ro
EXTRACT_FILES = $(foreach n,$(EXTRACTS), $(n).txt)
EXTRACT_OWL_FILES = $(foreach n,$(EXTRACTS), $(n)-extract.owl)

nvo.owl: nvo-extract.owl
	robot merge --input nvo-header.owl --input nvo-extract.owl --output nvo.owl
	robot report --input nvo.owl --output nvo-report.tsv

$(EXTRACT_OWL_FILES): $(EXTRACT_FILES)
	robot extract \
	  --extract $^ \
	  convert \
	  --output $^.tmp.ttl
	grep -v ^# $^.tmp.ttl >$^.ttl
	rm $^.tmp.ttl
	robot merge --input nvo-header.owl --input $^.ttl --output $@
