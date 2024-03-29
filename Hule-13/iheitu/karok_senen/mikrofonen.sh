#!/bin/bash

cat << EFO
Vil du synge? (svarer du nei kan du kanskje finne et sanghefte)
Skriv 'ja' eller 'nei'
EFO

read RESP

if [ "$RESP" = "ja" ]; then
    cat << EOF
Du skal velge mellom 3 sanger.
1. En solskinnsdag
2. Sløv uten dop
3. Rompa mi
EOF

    read RESP

    if [ "$RESP" = "1" ]; then
        cat << EOF
vilken av disse er den rikte lyriksen for En Solkinnsdag?

1.	Du sitter nedpå berget og ser innover havet
	En solskinnsdag i ferien din
	I sommer skal du surfe, og bade
	Ja, denne ferien tror du blir fin

2.	Jeg sitter nedpå berget og ser utover havet
	En solskinnsdag i ferien min
	I sommer skal jeg surfe, stå på vannski og bade
	Ja, denne ferien tror jeg blir fin

3.	Jeg sitter nedpå berget og ser utover havet
	En solskinnsdag i ferien min
	I sommer skal jeg surfe, og bade
	Ja, denne ferien tror jeg blir fin

4.	Jeg sitter nedpå berget og ser innover havet
	En solskinnsdag i ferien min
	I sommer skal jeg surfe, stå på vannski og bade,
	denne ferien tror jeg blir fin
EOF
        read CORRECT
        if [ "$CORRECT" = "2" ]; then
            echo "Du sang sang 1 riktig!"
            echo "1" > .poeng_$SPILLER
        else
            echo "Beklager, du sang ikke sang En solskinnsdag riktig."
            exit 1
        fi



    elif [ "$RESP" = "2" ]; then
        cat << EOF
vilken av disse er den riktige lyriksen for Sløv uten dop?

1. 	Jeg tenker lite uten tanker
	Hodet er en enorm ballong
	Jeg er alltid der hvor jeg vanker
	Sex er best uten dong

2.	Jeg tenker mye uten tanker
	Hodet er en stor ballong
	Jeg er aldri der hvor jeg vanker
	Sex er best uten dong

3.	Jeg tenker lite uten tanker
	Hodet er som en ballong
	Jeg er alltid der hvor jeg sanker
	Sex er aller best uten dong

4.	Jeg tenker mye uten tanker
	Hodet er en stor ballong
	Jeg er alltid der hvor jeg vanker
	Sex er aller best uten dong

EOF
        read CORRECT
        if [ "$CORRECT" = "4" ]; then
            echo "Du sang sang 2 riktig!"
            echo "1" > .poeng_$SPILLER
        else
            echo "Beklager, du sang ikke sang 2 riktig."
            exit 1
        fi

    elif [ "$RESP" = "3" ]; then
        cat << EOF
vilken av disse er den riktige lyriksen for Rompa mi?

1.	Æ frisert mæ på håret, kjøpt mæ nye sko
	Og investert i klær som e på moten no
	Clerasil i ansiktet, Gillette aftershave
	Og godlukt under arman som virkelig reiv

2.	Æ frisert mæ på håret, kjøpe nye sko
	Og investert i klær som e på moten no
	Clerasil i ansiktet, Gillette aftershave
	Og finlukt under arman som virke rein

3.	Æ frisert mæ på håret, kjøpt mæ nye sko
	Og investert i det som e på moten no
	Clerasil i ansiktet, Gillette aftershave
	Og godlukt under arman som virke rein

4.	Æ frisert mæ på håret, kjøpe nye sko
	Og investert i det som e på moten no
	Clerasil i ansiktet, Gillette aftershave
	Og finlukt under arman som virkelig reiv
EOF
        read CORRECT
        if [ "$CORRECT" = "1" ]; then
            echo "Du sang sang 3 riktig!"
            echo "1" > .poeng_$SPILLER
        else
            echo "Beklager, du sang ikke sang 3 riktig."
            exit 1
        fi

    else
        echo "Ugyldig valg."
        exit 1
    fi




elif [ "$RESP" = "nei" ]; then
    cat << EOF
Vil du lete etter sangtekst?
Skriv 'ja' eller 'nei'
EOF

    read RESP

    if [ "$RESP" = "ja" ]; then
        echo "det ligger et sanghefte sanghefte med sangtekster på borde der borte."
	
	rm sanghefte
	touch sanghefte
	cat << EOF > sanghefte
sanghefte for dagens karoke!!


sang 1:	En solskinnsdag

Jeg sitter nedpå berget og ser utover havet
En solskinnsdag i ferien min
I sommer skal jeg surfe, stå på vannski og bade
Ja, denne ferien tror jeg blir fin



sang 2: Sløv uten dop

Jeg tenker mye uten tanker
Hodet er en stor ballong
Jeg er alltid der hvor jeg vanker
Sex er aller best uten dong



sang 3: Rompa mi

Æ frisert mæ på håret, kjøpt mæ nye sko
Og investert i klær som e på moten no
Clerasil i ansiktet, Gillette aftershave
Og godlukt under arman som virkelig reiv

EOF
        
    elif [ "$RESP" = "nei" ]; then
        echo "Ok, ingen sangtekster."
    else
        echo "Ugyldig valg."
        exit 1
    fi

else
    echo "Ugyldig svar. Skriv enten 'ja' eller 'nei'."
    exit 1
fi

