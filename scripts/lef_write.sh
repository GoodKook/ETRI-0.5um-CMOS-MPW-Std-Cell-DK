magic -dnull -noconsole << EOF
drc off
box 0 0 0 0
load $1 -force
drc off
lef write
quit -force
EOF

