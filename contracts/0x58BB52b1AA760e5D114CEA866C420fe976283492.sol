contract main {




// =====================  Runtime code  =====================


address stor0;
address dexAddress;
address stor2;
address sub_2de0c76fAddress;
address stor4;

function sub_2de0c76f(?) payable {
    return sub_2de0c76fAddress
}

function dex() payable {
    return dexAddress
}

function _fallback() payable {
    revert
}

function sub_f5d03e46(?) payable {
    mem[132] = 100000000 * 10^18
    require ext_code.size(sub_2de0c76fAddress)
    call sub_2de0c76fAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, 100000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 128] = stor2
    mem[ceil32(return_data.size) + 160] = stor4
    if block.timestamp > -901:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 1000 * 10^18
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(dexAddress)
    call dexAddress.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 1000 * 10^18, 0, 160, 0x35a3058b4d2dd654981936428140d34b685b9f75, block.timestamp + 900, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
