ADOC = asciidoctor
PDF  = -r asciidoctor-pdf -b pdf
SOL  = -a solution
NSOL = -a solution!

# Makros:
# $< -- vollständiger Name der Quelle
# $@ -- vollständiger Name des Ziels
# $* -- Name des Ziels ohne Endung

%.html: %.adoc Fragen/*.adoc
	$(ADOC) $(SOL)! $< -o $@
	$(ADOC) $(SOL)  $< -o $*.Antworten.html

%.pdf: %.adoc Fragen/*.adoc
	$(ADOC) $(PDF) $(SOL)! $< -o $@
	$(ADOC) $(PDF) $(SOL)  $< -o $*.Antworten.pdf
