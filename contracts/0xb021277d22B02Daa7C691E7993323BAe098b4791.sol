contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall arg2.balanceOf(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg1), this.address, stor0, ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}

function sub_e1832f60(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    staticcall address(cd[68]).masterContract() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(cd[68]).bentoBox() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 134] = address(ext_call.return_data[0])
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 166] = 1
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 198] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 262] = 0
    require ext_code.size(ext_call.return_data[12 len 20])
    call ext_call.return_data[12 len 20].setMasterContractApproval(address arg1, address arg2, bool arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), 1, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 98] = 0x912860c500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 102] = 128
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 230] = ('cd', 4).length
    idx = 0
    s = 128
    t = mem[64] + 164
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 36] = (32 * ('cd', 4).length) + 160
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 262] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 294 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * mem[ceil32(32 * ('cd', 4).length) + 97]]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 166] = address(cd[100])
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 198] = address(cd[100])
    require ext_code.size(address(cd[68]))
    call address(cd[68]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + (32 * mem[ceil32(32 * ('cd', 4).length) + 97]) + -mem[64] + 290]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
