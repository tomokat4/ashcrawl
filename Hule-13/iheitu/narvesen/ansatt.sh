#!/bin/bash

cat << EOF
Du kjenner fristelsen av snus, men er usikker på om du vil betale.
Du ser at du ganske lett kan ta en snus ut av skapet, og mannen bak kassa virker ikke til å følge med.
Vil du prøve å stjele snusen eller skal du prikke mannen på skulderen og betale?

Skriv '1' for å stjele, '2' for å betale normalt
EOF
read VALG

if [ "$VALG" = 1 -a -e /home/260841/spill/Hule-13/iheitu/karok_senen/.poeng_$SPILLER ]; then
    rm /home/260841/spill/Hule-13/iheitu/karok_senen/.poeng_$SPILLER
    cat << EOF
fy fy ikke lov å stjele. nå mstede du pengene du vant fra karaoke.
EOF
    exit

elif [ "$VALG" = 1 ]; then
	cat << EOF
fy fy ikke lov å stjele. nå er du både blakk og kriminell
EOF

elif [ "$VALG" = 2 ]; then
    if [ -e /home/260841/spill/Hule-13/iheitu/karok_senen/.poeng_$SPILLER ]; then
	echo "2" > .poeng_$SPILLER
        cat << EOF
Du kjøper snus.
EOF
    else
        cat << EOF
Du er blakk.
EOF
    fi
fi




