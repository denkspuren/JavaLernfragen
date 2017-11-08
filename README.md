# Willkommen

Dieser Fragenkatalog enthält zahlreiche Fragen und Antworten zu dem Java-Buch von Michael Kofler, [Java: Der Grundkurs, Rheinwerk, 2015](https://www.rheinwerk-verlag.de/java_3632/). Die Kapitelordnung dieses Fragenkatalogs orientiert sich an den Kapiteln des Buchs von Michael Kofler, so dass Sie einen einfachen Bezug zwischen dem Buch und den Fragen herstellen können.

## Wo sind die Fragen?

Den Fragenkatalog finden Sie unter [JavaFragen.html](https://htmlpreview.github.io/?https://github.com/denkspuren/JavaLernfragen/blob/master/JavaFragen.html) [wenn Sie den Link anklicken, sehen Sie den HTML-Preview]. Die Fragen samt Antworten gibt es in dem Dokument [JavaFragen.Antworten.html](https://htmlpreview.github.io/?https://github.com/denkspuren/JavaLernfragen/blob/master/JavaFragen.Antworten.html) zu lesen.

Diese beiden Dokumente sind das Resultat der Übersetzung der Datei [JavaFragen.adoc](JavaFragen.adoc) vom AsciiDoc-Format in das HTML-Format. Wenn Sie sich also im Original-Dokument umschauen wollen, so ist [JavaFragen.adoc](JavaFragen.adoc) Ihr Einstiegspunkt. Von hier aus können Sie zu den Fragen der jeweiligen Buchkapitel navigieren.

Die Fragen sind im AsciiDoc-Format geschrieben -- mehr dazu weiter unten. Auf Github werden AsciiDoc-Dokumente formatiert dargestellt. Allerdings sind dann die Antworten zu den Fragen nicht sichtbar. Wenn Sie die `raw`-Ansicht anwählen, bekommen Sie das Dokument im Original zu sehen, dann sehen Sie dort auch die Antworten.

## Wem der Tiefgang fehlt

Es gibt immer wieder mal einen Sachverhalt, der sich durch eine Frage und eine kurze Antwort nicht ausreichend klären lässt. Für solche Fälle gibt es in dem Verzeichnis [Tiefgang](Tiefgang/) ausführlichere Darstellungen.

## Warum das Buch von Michael Kofler?

Kurz gesagt, weil ich es mag und sehr gut für Informatik-Studierende im ersten Semester geeignet halte. Das Format, die Seitenanzahl und die Kürze der Beschreibung gefallen mir.

Zwar orientiert sich der Fragenkatalog an der Kapitelstruktur des Buchs und so manche Frage geht detailliert auf etwas aus dem Buch ein, doch sollte davon abgesehen der Fragenkatalog einen Wert für jeden Java-Lernenden haben.

Übrigens liegt kein Interessenskonflikt vor: Ich empfehle das Buch zwar meinen Studierenden, aber ich verdiene nichts daran und stehe in keiner geschäftlichen Verbindung mit Herrn Kofler oder dem Rheinwerk-Verlag.

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

Der folgenden Befehle erzeugen das HTML-Dokument `JavaFragen.html` _ohne_ Antworten (`-a solution!`) und  _mit_ Antworten (`-a solution`), wobei für diesen Fall eine andere Ausgabedatei mit der Option `-o` gewählt wird. Ohne die Angabe des Attributs `solution` werden standardmäßig die Antworten mit ausgegeben.

~~~
asciidoctor -a solution! JavaFragen.adoc
asciidoctor -a solution -o JavaFragen.Antworten.html JavaFragen.adoc
~~~

Für die Generation der PDF-Dokumente ist `asciidoctor-pdf` statt `asciidoctor` zu wählen.

Um diesen Übersetzungsprozess ein wenig zu vereinfachen, gibt es ein simples `makefile`. Dieses altgediente Unix-Werkzeug gibt es auch für Windows, z.B. [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm). Unter Linux ist es standardmäßig dabei.

In der Kommandozeile (`cmd`) von Windows generiert die folgende Eingabe die HTML-Dokumente mit und ohne Lösungen zu den Fragen.

~~~
> make JavaFragen.html
~~~

Entsprechend sind die PDF-Dokumente zu erzeugen:

~~~
> make JavaFragen.pdf
~~~

Wenn es Probleme bei der Übersetzung gibt, hilft Asciidoctor mit Fehlerhinweisen.

# Lizenz

Der gesamte Fragenkatalog und alle in diesem Repository befindlichen Texte stehen unter einer Creative Commons-Lizenz ([by-nc-sa 4.0](http://creativecommons.org/licenses/by-nc-sa/4.0/)). In Kurzform:

* Namensnennung
* Nicht-kommerziell
* Weitergabe unter gleichen Bedingungen

![Creative Commons by-nc-sa 4.0](CreativeCommons88x31.png)

# Historie

Der Fragenkatalog ist das Ergebnis der Projektwoche, die wir (Christopher Schölzel und ich) vom 2.-6. Januar 2017 mit den Studierenden der Veranstaltung "Objektorientierte Programmierung" (Erstsemester Informatik) an der Technischen Hochschule Mittelhessen ([THM](http://www.thm.de)) durchgeführt haben. Wir haben in der Projektwoche den gesamten bisher gelernten Java-Stoff aus dem Wintersemester 2016/17 wiederholt. Als Grundlage zur Wiederholung diente das Java-Buch von Michael Kofler.

Während der Projektwoche haben wir das Buch von Michael Kofler gemeinsam mit den Studierenden gelesen, dabei live die Fragen erstellt und anschließend die Antworten besprochen und dokumentiert. Manch eine Frage und manch eine Antwort muss überarbeitet werden, sicher ist uns der ein oder andere Fehler unterlaufen. Helfen Sie uns dabei, den Fragenkatalog zu verbessern!

Dominikus Herzberg, [@denkspuren](https://twitter.com/denkspuren)
