contract main {




// =====================  Runtime code  =====================


#
#  - sub_62bb8223(?)
#
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

function sub_c33f3f6c(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[164]
    call address(cd[36]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[164]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 132] = cd[196]
    mem[(2 * ceil32(return_data.size)) + 164] = cd[228]
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0xbe7305a1 with:
         gas gas_remaining wei
        args cd[164], cd[196], cd[228]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    mem[(4 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = 0
    mem[(4 * ceil32(return_data.size)) + 132] = cd[164]
    mem[(4 * ceil32(return_data.size)) + 164] = 160
    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 132).length
    idx = 0
    s = (4 * ceil32(return_data.size)) + 292
    t = cd[132] + 36
    while idx < ('cd', 132).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 196] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 228] = cd[228]
    call address(cd[100]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, cd[164], 160, msg.sender, cd[228], ('cd', 132).length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 132).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + mem[(4 * ceil32(return_data.size)) + 96 len 4], 0 + 32 <= return_data.size
}

function sub_0bf8eabd(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = cd[132]
    call address(cd[4]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[132]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[132]
    mem[ceil32(return_data.size) + 132] = cd[164]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 100).length
    idx = 0
    s = ceil32(return_data.size) + 292
    t = cd[100] + 36
    while idx < ('cd', 100).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = cd[196]
    call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[132], cd[164], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(this.address), cd[196]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _87 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _88 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _88
    require (32 * _88) + _87 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(32 * _88)] = mem[ceil32(return_data.size) + _87 + 128 len ceil32(32 * _88)]
    if 1 >= _88:
        revert with 0, 50
    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 36] = cd[132]
    mem[mem[64] + 68] = cd[196]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0x2cd611bc with:
         gas gas_remaining wei
        args mem[mem[64] + 4], cd[132], cd[196]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _169 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _170 = mem[_169]
    _171 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _170
    _172 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_171 + 100] = 32
    mem[_171 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(cd[4])):
        revert with 0, 'Address: call to non-contract'
    _179 = mem[_172]
    mem[_171 + 164 len ceil32(mem[_172])] = mem[_172 + 32 len ceil32(mem[_172])]
    if ceil32(_179) > _179:
        mem[_171 + _179 + 164] = 0
    call address(cd[4]) with:
         gas gas_remaining wei
        args mem[_171 + 168 len _179 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, this.address) >> 32 == bool(uint32(msg.sender), Mask(224, 32, this.address) >> 32)
            if not uint32(msg.sender), Mask(224, 32, this.address) >> 32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_171 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_171 + 196] == bool(mem[_171 + 196])
            if not mem[_171 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
