contract main {




// =====================  Runtime code  =====================


array of uint256 values;
mapping of uint256 sub_f83fc96c;

function values(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < values.length
    return values[arg1]
}

function sub_f83fc96c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f83fc96c[arg1]
}

function _fallback() payable {
    revert
}

function setVal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        values.length++
        mem[0] = 0
        values[values.length] = idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fd984376(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        mem[0] = msg.sender
        mem[32] = 1
        sub_f83fc96c[address(msg.sender)] = idx
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
