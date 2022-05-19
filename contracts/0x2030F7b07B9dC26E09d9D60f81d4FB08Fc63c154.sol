contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function maps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_fd984376(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < arg1:
        _6 = mem[64]
        mem[64] = mem[64] + 96
        mem[_6] = idx
        mem[_6 + 32] = block.timestamp
        mem[_6 + 64] = msg.sender
        mem[0] = idx
        mem[32] = 0
        stor0[idx].field_0 = idx
        stor0[idx].field_256 = block.timestamp
        stor0[idx].field_512 = msg.sender
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
