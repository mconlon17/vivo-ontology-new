#
#	Makefile for nvo


# merge headers, edits, and template outputs and extract outputs into nvo.owl	
	
nvo.owl: nvo-header.owl nvo-edit.owl $(TEMPLATE_OWL_FILES) $(EXTRACT_OWL_FILES)
	robot merge \
	  --input nvo-header.owl \
	  --input nvo-edit.owl \
	  --inputs "*-template.owl" \
	  --inputs "*-extract.owl" \
	  --include-annotations true \
	  --output nvo.owl
	robot report --input nvo.owl --output nvo-report.tsv
#

# Template targets
# 
# For each template, create a corresponding owl file

TEMPLATES = nvo
TEMPLATE_FILES = $(foreach n,$(TEMPLATES), $(n).tsv)
TEMPLATE_OWL_FILES = $(foreach n,$(TEMPLATES), $(n)-template.owl)


$(TEMPLATE_OWL_FILES): $(TEMPLATE_FILES)
	robot template \
	  --template $^ \
	  --output $@
	
# Extract targets
# 
# For each extract file, create a corresponding owl file

EXTRACTS = iao bfo ro time swo
EXTRACT_TERM_FILES = $(foreach n,$(EXTRACTS), $(n).txt)
EXTRACT_INPUT_FILES = $(foreach n,$(EXTRACTS), $(n).owl)
EXTRACT_OWL_FILES = $(foreach n,$(EXTRACTS), $(n)-extract.owl)

$(EXTRACT_OWL_FILES): $(EXTRACT_TERM_FILES) $(EXTRACT_INPUT_FILES)
	robot extract \
	  --method BOT \
	  --input $(subst -extract.owl,.owl,$@) \
	  --term-file $(subst -extract.owl,.txt,$@) \
	  --output $@

