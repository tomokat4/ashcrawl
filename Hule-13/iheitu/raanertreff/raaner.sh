#!/bin/bash

if [ -e /home/260841/spill/Hule-13/iheitu/narvesen/.poeng_$SPILLER ]; then
	ln -s /home/260841/spill/Hule-13/ahyooj/parkeringsplass /home/260841/spill/Hule-13/iheitu/raanertreff/fremme
	cat << EOF
du snakker med Roar og finner ut at du kan gi han snus får å kjøre deg videre.
Heldig for deg har du alerede kjøpt snus å med det har det åpnet seg en ny vei
EOF

	else
		cat << EOF
du snakker med Roar og finner ut at han kan kjøre deg får litt snus
bekalgligvis har ikke du noe snus. kanskje du kan ta en tur bort til narvesen å kjøpe en pakke?
EOF

fi

