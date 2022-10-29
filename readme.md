IntelliJ Einrichtungs Guide
===

Dieses Repository beinhaltet eine Anleitung um IntelliJ einzurichten.

Die Anleitung richtet sich primär an KIT Studenten, die das Modul Programmieren hören. Bei der Bewertung von Abgaben wird vor allem Wert auf einen sauberen Stil gelegt.

Leider wissen viele nicht, dass große Teile der Fehler vermieden werden können, wenn man
die IDE ordentlich eingerichtet hat und nicht Eclipse mit den Standardeinstellungen nutzt.

Daher diese Anleitung, um bei der Einrichtung etwas zu unterstützen.

# Build

## Artifacts

Es wird automatisch mit jedem Commit die PDF gebaut und als Artefakt hochgeladen.
Dazu in GitHub auf `Actions` drücken, den obersten workflow auswählen und dann die pdf herunterladen.

## DIY

Um das bauen zu vereinfachen wird docker verwendet:
```
$ docker build -t intellij-pandoc .
$ docker run -v $PWD:/data local "pandoc --pdf-engine=xelatex -f gfm -t pdf --embed-resources --highlight-style=tango --template=theme/true-notion-light.tex tutorial.md --output=tutorial.pdf"
```
(Wichtig: Auf Windows statt `$PWD`, `${PWD}` nehmen)


Man kann auch eine Shell im Container öffnen:
```
$ docker run -v $PWD:/data -it intellij-pandoc sh
```

# Credits
- [cab-1729/Pandoc-Themes](https://github.com/cab-1729/Pandoc-Themes) für deren notion-light-enhanced theme, auf dem das `true-notion-light` theme dieses repos basiert.
