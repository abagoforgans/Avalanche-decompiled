contract main {




// =====================  Runtime code  =====================


address sub_d8a531a6Address;

function sub_d8a531a6(?) payable {
    return sub_d8a531a6Address
}

function _fallback() payable {
    revert
}

function ExistingWithoutABI(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    sub_d8a531a6Address = arg1
}

function start() payable {
    mem[132] = 0, mem[132 len 28]
    call sub_d8a531a6Address.mem[132 len 4] with:
         gas gas_remaining wei
    if not return_data.size:
        mem[168] = 0, mem[168 len 28]
        call sub_d8a531a6Address.mem[168 len 4] with:
             gas gas_remaining wei
    else:
        mem[ceil32(return_data.size) + 169] = 0, mem[ceil32(return_data.size) + 169 len 28]
        call sub_d8a531a6Address.mem[ceil32(return_data.size) + 169 len 4] with:
             gas gas_remaining wei
}



}
