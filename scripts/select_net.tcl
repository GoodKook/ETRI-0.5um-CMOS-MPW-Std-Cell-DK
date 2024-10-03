proc select_more_net {netname} {
    select more box [goto $netname]
    select more net
    findbox
}

proc select_net {netname} {
    select box [goto $netname]
    select net
    findbox
}
