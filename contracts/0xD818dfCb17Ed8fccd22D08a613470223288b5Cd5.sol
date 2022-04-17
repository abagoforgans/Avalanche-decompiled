contract main {




// =====================  Runtime code  =====================


array of address stor0;

function _fallback() payable {
    revert
}

function addStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0.length++
    stor0[stor0.length] = arg1
}

function harvest() payable {
    idx = 0
    while idx < stor0.length:
        if 0 >= stor0.length:
            revert with 'NH{q', 50
        mem[0] = 0
        mem[96] = 0x4641257d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.0x4641257d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
