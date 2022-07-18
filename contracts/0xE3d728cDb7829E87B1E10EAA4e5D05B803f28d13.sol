contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function checker() payable {
    if block.timestamp >= 1649477261:
        if block.timestamp <= 1649477271:
            if block.gasprice <= 12 * 10^10:
                return 1
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
