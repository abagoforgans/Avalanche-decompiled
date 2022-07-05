contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d3aef6ca(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[36]
    call address(('cd', 100)[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = cd[36]
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), cd[36]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 100] = cd[36]
    mem[(2 * ceil32(return_data.size)) + 132] = cd[68]
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = ('cd', 100).length
    idx = 0
    s = (2 * ceil32(return_data.size)) + 292
    t = cd[100] + 36
    while idx < ('cd', 100).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = 0x65bab4f268286b9005d6053a177948dddc29bad3
    mem[(2 * ceil32(return_data.size)) + 228] = cd[132]
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 292 len 32 * ('cd', 100).length]), 0x65bab4f268286b9005d6053a177948dddc29bad3, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
}



}
