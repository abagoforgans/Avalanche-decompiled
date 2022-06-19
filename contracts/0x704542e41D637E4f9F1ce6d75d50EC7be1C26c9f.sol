contract main {




// =====================  Runtime code  =====================


address sub_97bf17acAddress;
address stor1;

function sub_97bf17ac(?) {
    if sub_97bf17acAddress != tx.origin:
        revert with 0, 'ur not owner'
    return sub_97bf17acAddress
}

function sub_ebd32668(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_97bf17acAddress != tx.origin:
        revert with 0, 'ur not owner'
    sub_97bf17acAddress = address(arg1)
    return 1
}

function sub_ecd997d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_97bf17acAddress != tx.origin:
        revert with 0, 'ur not owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args sub_97bf17acAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_8c2fd65b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_97bf17acAddress != tx.origin:
        revert with 0, 'ur not owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'not enough tokens in contract'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args sub_97bf17acAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_01c9c5ca(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = 128
    idx = cd[100] + 36
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if sub_97bf17acAddress != tx.origin:
        revert with 0, 'ur not owner'
    mem[ceil32(32 * ('cd', 100).length) + 101] = this.address
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 100).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no tokens to sell'
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 101] = address(cd[36])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 133] = ext_call.return_data[0]
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] / 10 and cd[132] > -1 / ext_call.return_data[0] / 10:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 101] = ext_call.return_data[0] / 10 * cd[132]
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 133] = 64
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 165] = ('cd', 100).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 197
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    call address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] / 10 * cd[132], Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 197 len 32 * ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _93 = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32
    require mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 128
    _94 = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = _94
    require _93 + (32 * _94) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 129 len ceil32(32 * _94)] = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + _93 + 129 len ceil32(32 * _94)]
    if _94 < 1:
        revert with 0, 17
    if _94 - 1 >= _94:
        revert with 0, 50
    _123 = mem[(32 * _94 - 1) + ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 129]
    if mem[(32 * _94 - 1) + ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 129] / 10 > 0x2492492492492492492492492492492492492492492492492492492492492492:
        revert with 0, 17
    _124 = mem[64]
    mem[mem[64] + 36] = ext_call.return_data[0] / 10 * cd[132]
    mem[mem[64] + 68] = 7 * _123 / 10
    mem[mem[64] + 100] = 160
    mem[mem[64] + 196] = ('cd', 100).length
    idx = 0
    s = 128
    t = mem[64] + 228
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 132] = address(cd[68])
    mem[mem[64] + 164] = block.timestamp
    _145 = mem[64]
    mem[mem[64]] = (32 * ('cd', 100).length) + 196
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 228
    mem[_145 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    _148 = mem[_145]
    mem[_124 + (32 * ('cd', 100).length) + 228 len ceil32(mem[_145])] = mem[_145 + 32 len ceil32(mem[_145])]
    if ceil32(_148) > _148:
        mem[_124 + (32 * ('cd', 100).length) + _148 + 228] = 0
    call address(cd[36]) with:
       funct Mask(32, 224, (32 * ('cd', 100).length) + 196) >> 224
         gas gas_remaining wei
        args mem[mem[64] + 4 len _148 + _124 + (32 * ('cd', 100).length) + -mem[64] + 224]
    return bool(ext_call.success)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        require ext_code.size(stor1)
        call stor1.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x97bf17ac(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x97bf17ac(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            if sub_97bf17acAddress != tx.origin:
                revert with 0, 'ur not owner'
            return sub_97bf17acAddress
        if unknown_0xebd32668(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if sub_97bf17acAddress != tx.origin:
                revert with 0, 'ur not owner'
            sub_97bf17acAddress = address(cd[4])
        else:
            require unknown_0xecd997d4(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if sub_97bf17acAddress != tx.origin:
                revert with 0, 'ur not owner'
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_97bf17acAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return 1
    if uint32(call.func_hash) >> 224 != unknown_0x01c9c5ca(?????):
        require unknown_0x8c2fd65b(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if sub_97bf17acAddress != tx.origin:
            revert with 0, 'ur not owner'
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[36]:
            revert with 0, 'not enough tokens in contract'
        call address(cd[4]).0xa9059cbb with:
             gas gas_remaining wei
            args sub_97bf17acAddress, cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return 1
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 129 < 128 or ceil32(32 * ('cd', 100).length) + 129 > test266151307():
        revert with 0, 65
    mem[128] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    s = 160
    idx = cd[100] + 36
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if sub_97bf17acAddress != tx.origin:
        revert with 0, 'ur not owner'
    mem[ceil32(32 * ('cd', 100).length) + 133] = this.address
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 100).length) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no tokens to sell'
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 133] = address(cd[36])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 165] = ext_call.return_data[0]
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[36]), ext_call.return_data[0]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] / 10 and cd[132] > -1 / ext_call.return_data[0] / 10:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 133] = ext_call.return_data[0] / 10 * cd[132]
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 165] = 64
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 197] = ('cd', 100).length
    idx = 0
    s = 160
    t = ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 229
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    call address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0] / 10 * cd[132], Array(len=('cd', 100).length, data=mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 229 len 32 * ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 129
    require return_data.size >= 32
    _129 = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32
    require mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 160
    _130 = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 129]
    if mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 129] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 129]) + 130 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, ext_call.return_data[0] / 10 * cd[132]) >> 32 + 129]) + 130
    mem[ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 129] = _130
    require _129 + (32 * _130) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 161 len ceil32(32 * _130)] = mem[ceil32(32 * ('cd', 100).length) + (2 * ceil32(return_data.size)) + _129 + 161 len ceil32(32 * _130)]
    if _130 < 1:
        revert with 0, 17
    if _130 - 1 >= _130:
        revert with 0, 50
    if mem[(32 * _130 - 1) + ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 161] / 10 > 0x2492492492492492492492492492492492492492492492492492492492492492:
        revert with 0, 17
    _160 = mem[64]
    mem[mem[64] + 36] = ext_call.return_data[0] / 10 * cd[132]
    mem[mem[64] + 68] = 7 * mem[(32 * _130 - 1) + ceil32(32 * ('cd', 100).length) + (4 * ceil32(return_data.size)) + 161] / 10
    mem[mem[64] + 100] = 160
    mem[mem[64] + 196] = ('cd', 100).length
    idx = 0
    s = 160
    t = mem[64] + 228
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 132] = address(cd[68])
    mem[mem[64] + 164] = block.timestamp
    _181 = mem[64]
    mem[mem[64]] = (32 * ('cd', 100).length) + 196
    mem[64] = mem[64] + (32 * ('cd', 100).length) + 228
    mem[_181 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    _184 = mem[_181]
    mem[_160 + (32 * ('cd', 100).length) + 228 len ceil32(mem[_181])] = mem[_181 + 32 len ceil32(mem[_181])]
    if ceil32(_184) > _184:
        mem[_160 + (32 * ('cd', 100).length) + _184 + 228] = 0
    call address(cd[36]) with:
       funct Mask(32, 224, (32 * ('cd', 100).length) + 196) >> 224
         gas gas_remaining wei
        args mem[mem[64] + 4 len _184 + _160 + (32 * ('cd', 100).length) + -mem[64] + 224]
    return bool(ext_call.success)
}



}
