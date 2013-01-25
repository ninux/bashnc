################################################################################
# script für einfaches und schnelles starten von PDF-Präsentationen
################################################################################
#
# Schritt 1: Vor der Präsentation öffnet man sein PDF mit 'evince' und geht in 
#            den Präsentationsmodus mit der Taste 'F5'. Ist man im 
#            Präsentationsmodus so schliesst man nun 'evince' abrupt. Dies 
#            bewirkt bei 'evince', dass wenn die selbe Datei wieder geöffnet 
#            wird, sie im zuletzt verwendeten Modus geöffnet wird. Das heisst 
#            bei erneutem öffnen ist diese *automatisch* im Präsentationsmodus.
#
# Schritt 2: Beamer anschliessen an sein Notebook (hier mit VGA beschrieben)
#
# Schritt 3: das unten aufgeführte dreizeilige Skript ausführen 
#
# Schritt 4: Präsentation ausführen. Ende.
#
################################################################################
# Der Dreizeiler:

# Seien Home-Screen runterskalieren auf eine vertretbare Grösse, welche auch die
# meisten Beamer und Presenter zur Verfügung stellen. Hier ist der Home-Screen
# 'LVDS1' und die Skalierung '1024x7687'. So erhält man das gleiche Bild auf 
# beien Screens. Vorteil hierbei ist, man kann den Home-Screen zu sich gewendet
# haben und gleichzeitig immer sehen was am Beamer läuft. Man muss sich somit 
# nicht umdrehen bzw. dem Publikum den Rücken zuwenden. Jeztz muss noch die 
# Präsentation mit evince gestartet werden et voilà, die Präsentation läuft!
xrandr --output LVDS1 --mode 1024x768
xrandr --output VGA1 --mode 1024x768 --same-as LVDS1
evince mypres.pdf

# HINWEIS: ES KANN DURCHAUS VORKOMMEN, DAS DAS SKRIPT NICHT IMMER SOFORT WIRKT.
# DIE LÖSUNG HIERZU IST, MAN ERWEITERT DEN DREIZEILER UM EINE VIERTE ZEILE DIE
# ALS ERSTE AUSGEFÜHRT WERDEN MUSS!
#
# xrandr --output VGA1 --mode 1024x768
