#!/bin/bash

if [ -e /home/260841/spill/Hule-13/iheitu/narvesen/.poeng_$SPILLER ]; then
	ln -s /home/260841/spill/Hule-13/ahyooj/parkeringsplass /home/260841/spill/Hule-13/iheitu/raanertreff/fremme
	cat << EOF
dette står vis du har snus
EOF

	else
		cat << EOF
dette står vis du ikke har snus

EOF

fi

