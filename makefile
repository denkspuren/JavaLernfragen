ADOC = asciidoctor
PDF  = -r asciidoctor-pdf -b pdf
SOL  = -a solution
NSOL = -a solution!
QaA  = -r asciidoctor-question

# Makros:
# $< -- vollständiger Name der Quelle
# $@ -- vollständiger Name des Ziels
# $* -- Name des Ziels ohne Endung

%.html: %.adoc Fragen/*.adoc
	$(ADOC) $(SOL)! $(QaA) $< -o $@
	$(ADOC) $(SOL)  $(QaA) $< -o $*.Antworten.html

%.pdf: %.adoc Fragen/*.adoc
	$(ADOC) $(PDF) $(SOL)! $(QaA) $< -o $@
	$(ADOC) $(PDF) $(SOL)  $(QaA) $< -o $*.Antworten.pdf
