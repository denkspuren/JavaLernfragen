# Willkommen

Dieser Fragenkatalog enthält zahlreiche Fragen und Antworten zu dem Java-Buch von Michael Kofler, [Java: Der Grundkurs, Rheinwerk, 2015](https://www.rheinwerk-verlag.de/java_3632/). Die Kapitelordnung dieses Fragenkatalogs orientiert sich an den Kapiteln des Buchs von Michael Kofler, so dass Sie einen einfachen Bezug zwischen dem Buch und den Fragen herstellen können.

# Mitarbeit

Ich freue mich, wenn Sie an diesem Fragenkatalog mitarbeiten wollen. Ergänzen Sie Fragen, verbessern Sie die Qualität der Antworten, korrigieren Sie Schreibfehler, machen Sie auf missverständliche, irritierende Formulierungen aufmerksam. Und eines fände ich besonders toll: Wenn es gelingt, die meisten Fragen in Multiple-Choice-Fragen zu wandeln -- was gar nicht so einfach ist. MC-Fragen sind für Lernende deutlich kurzweiliger, es macht mehr Spaß mit ihnen zu lernen.

## Das Asciidoc-Format

Das Dokument ist im [AsciiDoc](https://de.wikipedia.org/wiki/AsciiDoc)-Format geschrieben, einem Auszeichnungsformat, das dem von [Markdown](https://de.wikipedia.org/wiki/Markdown) nicht unähnlich ist. Für kleinere Änderungen oder Bearbeitungen kann man den Text auch direkt im Web-Interface der Github-Seite bearbeiten.

Zum Schreiben von AsciiDoc-Dokumenten nutze ich den Editor [Atom](https://atom.io/). Für diesen Editor gibt es ausgezeichnete [AsciiDoc-Pakete](https://atom.io/users/asciidoctor). Das Paket ["AsciiDoc Assistant"](https://atom.io/packages/asciidoc-assistant) installiert alle benötigten Pakete in einem Rutsch.

Zur Übersetzung von Asciidoc-Dokumenten in das HTML-Format verwende ich [Asciidoctor](http://asciidoctor.org/), das mit einem ausgezeichneten [Asciidoc Writer's Guide](http://asciidoctor.org/docs/asciidoc-writers-guide/) daherkommt. Zur Erzeugung von PDF-Dokumenten empfiehlt sich die zusätzliche Installation von [Asciidoctor PDF](http://asciidoctor.org/docs/convert-asciidoc-to-pdf/).

## Der Aufbau einer Frage

Die Fragen eines Kapitels befinden sind auf der dritten Gliederungsebene und beginnen stets mit `### Frage`. Die Antwort beginnt in einer eigenen Zeile mit `.Antwort` und ist eingerahmt von einer Attributabfrage. Ist das Attribut `solution` gesetzt, wird das Dokument mit, ansonsten ohne die Antworten gerendert.

~~~
### Frage
// Der Fragentext

ifdef::solution[]
.Antwort
// Der Antworttext
endif::solution[]
~~~

Sie finden im laufenden Text genug Beispiele, um sich abzugucken, wie im Asciidoc-Format Codefragmente auszuweisen sind, wie man Text hervorhebt usw.

## Erzeugung von HTML- und PDF-Dokumenten

Mit Asciidoctor lässt sich sehr leicht aus dem Asciidoc-Format ein HTML-Dokument bzw. ein PDF-Dokument erzeugen.

Um diesen Prozess ein wenig zu vereinfachen, gibt es ein simples `makefile`. Dieses altgediente Unix-Werkzeug gibt es auch für Windows, z.B. [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm). Unter Linux ist es standardmäßig dabei.

In der Kommandozeile (`cmd`) von Windows generiert die folgende Eingabe die HTML-Dokumente mit und ohne Lösungen zu den Fragen.

~~~
> make JavaFragen.html
~~~

Entsprechend sind auch die PDF-Dokumente zu erzeugen:

~~~
> make JavaFragen.pdf
~~~

Wenn es Probleme bei der Übersetzung gibt, hilft Asciidoctor mit Fehlerhinweisen.

## Lizenz

Der gesamte Fragenkatalog und alle in diesem Repository befindlichen Texte stehen unter einer Creative Commons-Lizenz ([by-nc-sa 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/)). In Kurzform:

* Namensnennung
* Nicht-kommerziell
* Weitergabe unter gleichen Bedingungen

# Historie

Der Fragenkatalog ist das Ergebnis der Projektwoche, die wir (Christopher Schölzel und ich) vom 2.-6. Januar 2017 mit den Studierenden der Veranstaltung "Objektorientierte Programmierung" (Erstsemester Informatik) an der Technischen Hochschule Mittelhessen ([THM](http://www.thm.de)) durchgeführt haben. Wir haben in der Projektwoche den gesamten bisher gelernten Java-Stoff aus dem Wintersemester 2016/17 wiederholt. Als Grundlage zur Wiederholung diente das Java-Buch von Michael Kofler.

Während der Projektwoche haben wir das Buch von Michael Kofler gemeinsam mit den Studierenden gelesen, dabei live die Fragen erstellt und anschließend die Antworten besprochen und dokumentiert. Manch eine Frage und manch eine Antwort muss überarbeitet werden, sicher ist uns manch ein Fehler unterlaufen. Helfen Sie uns dabei, den Fragenkatalog zu verbessern!

Dominikus Herzberg, [@denkspuren](https://twitter.com/denkspuren)
