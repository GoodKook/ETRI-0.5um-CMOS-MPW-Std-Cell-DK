if [[ $# -ne 2 ]]; then
    echo " Compare Netlist(LVS): <Layout> <Schematic>"
    exit 2
else
    MAG_NETLIST="./$1.spice"
    SCH_NETLIST="../Sch/simulation/$2_TB.spice"
    echo ""
    echo "-----------------------------------------------------------"
    echo " Compare Netlist(LVS):"
    echo "      $MAG_NETLIST vs. $SCH_NETLIST"
fi

./ext2spice_flatten.sh $1

netgen -noc -batch lvs \
    "$MAG_NETLIST $1" "$SCH_NETLIST $2" \
    ./netgen_setup.tcl LVS_$1_$2.txt


