contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_e7df271e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_788f72a6(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    require cd[132] == cd[132]
    require cd[164] == address(cd[164])
    require cd[196] == cd[196]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[floor32(('cd', 68).length) + 101] = msg.sender
    mem[floor32(('cd', 68).length) + 133] = this.address
    mem[floor32(('cd', 68).length) + 165] = cd[4]
    require ext_code.size(0xde9e52f1838951e4d2bb6c59723b003c353979b6)
    call 0xde9e52f1838951e4d2bb6c59723b003c353979b6.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), cd[4]
    mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 101] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 133] = 200000000 * 10^18
    require ext_code.size(0xde9e52f1838951e4d2bb6c59723b003c353979b6)
    call 0xde9e52f1838951e4d2bb6c59723b003c353979b6.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, 200000000 * 10^18
    mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[164])
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(cd[164])
    mem[floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > cd[196]:
        revert with 0, 'Swap not allowed'
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 101] = cd[4]
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 133] = cd[36]
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 165] = 160
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 68).length
    idx = 0
    s = 128
    t = floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 293
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 197] = address(cd[100])
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 229] = cd[132]
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], cd[36], Array(len=('cd', 68).length, data=mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 68).length]), address(cd[100]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _54 = mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + return_data.size + 97
    _55 = mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 97] = mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + mem[floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _54 + (32 * _55) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 68).length) + (4 * ceil32(return_data.size)) + _54 + 129
    t = floor32(('cd', 68).length) + (6 * ceil32(return_data.size)) + 129
    while idx < _55:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
