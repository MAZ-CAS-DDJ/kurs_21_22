# Lösungen der Übungen

## Übung 1
Navigiere auf den Desktop. Kreiere dort ein File, das pythoncode.py heisst. Schreibe die Zeile print(“Hello World!” in dieses File.
1. cd Desktop/
2. touch pythoncode.py
3. echo 'print("hello world!")' >> python code.py
4. cat pythoncode.py

## Übung 2
Navigiere auf den Desktop. Liste alle Files auf dem Desktop im Terminal und zeige die letzten 10 in der Liste im Terminal an.
1. cd Desktop/
2. ls -l
3. ls -l | tail

## Übung 3
Wähle eine beliebige Stimme aus und lasse Dir den Text langsam von einem File, das Du vorbereitet hast, vorlesen.
1. File vorbereiten
2. say -v Alex -r 2 -f myfile.txt

## Übung 4
Lade das Personenfile des Schweizerischen Nationalfonds herunter. Und kreiere eine neue Datei mit der Suche “Basel”.
1. wget http://p3.snf.ch/P3Export/P3_PersonExport.csv
2. grep Basel P3_PersonExport.csv > baselsnf.csv
3. wc -l baselsnf.csv

## Übung 5

1. wget -r -A "*.pdf" "https://chplusplus.org/"

## Übung 6
Erstelle folgende Crontabs:
- Täglich um 12 und 18 Uhr: 0 16,18 * * *
- Jeden Montag von 14 bis 15 Uhr alle 5 Minuten: 0/5 14 * * MON
- Jeden Samstag und Sonntag um 14 und 16 Uhr: 0 14,16 * * SAT,SUN
