contract main {




// =====================  Runtime code  =====================


#
#  - sub_f526b0c6(?)
#
address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
address OWNER;
mapping of uint8 stor6;

function OWNER() {
    return OWNER
}

function sub_5091d3bf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function addToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if OWNER != msg.sender:
        revert with 0, 'You are not the owner'
    stor6[address(arg1)] = 1
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f7f43181(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if OWNER != msg.sender:
        revert with 0, 'You are not the owner'
    if arg1 != 1:
        call address(arg4) with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args OWNER, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1a487b43(?) payable {
    require calldata.size - 4 >= 256
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == uint16(cd[100])
    require cd[196] == address(cd[196])
    if cd[4] <= 0:
        revert with 0, 'Amount must be higher than 0'
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    mem[0] = mem[(32 * ('cd', 36).length - 1) + 140 len 20]
    mem[32] = 6
    if not stor6[mem[(32 * ('cd', 36).length - 1) + 140 len 20]]:
        revert with 0, 'The token wanted is not allowed'
    if 15 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = cd[68]
    mem[ceil32(32 * ('cd', 36).length) + 133] = 128
    mem[ceil32(32 * ('cd', 36).length) + 229] = ('cd', 36).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 36).length) + 261
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 36).length) + 165] = this.address
    mem[ceil32(32 * ('cd', 36).length) + 197] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value cd[4] wei
         gas gas_remaining wei
        args cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 261 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 36).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _133 = mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 36).length) + return_data.size + 97 > ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 128
    _134 = mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 97 len 4], Mask(224, 32, cd[68]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = _134
    require _133 + (32 * _134) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _134] = mem[ceil32(32 * ('cd', 36).length) + _133 + 129 len 32 * _134]
    if _134 < 1:
        revert with 0, 17
    if _134 - 1 >= _134:
        revert with 0, 50
    _187 = mem[(32 * _134 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129]
    _188 = mem[64]
    mem[64] = mem[64] + 32
    mem[_188] = 0
    _189 = mem[64]
    mem[64] = mem[64] + 320
    mem[_189] = 0
    mem[_189 + 32] = 0
    mem[_189 + 64] = 0
    mem[_189 + 96] = 0
    mem[_189 + 128] = 0
    mem[_189 + 160] = 0
    mem[_189 + 192] = 0
    _190 = mem[64]
    mem[64] = mem[64] + 96
    mem[_190] = 0
    mem[_190 + 32] = 0
    mem[_190 + 64] = 96
    mem[_189 + 224] = _190
    mem[_189 + 256] = 96
    mem[_189 + 288] = 96
    if _187 / 100 and cd[228] > -1 / _187 / 100:
        revert with 0, 17
    if _187 < _187 / 100 * cd[228]:
        revert with 0, 17
    if msg.value < cd[4]:
        revert with 0, 17
    _191 = mem[64]
    mem[64] = mem[64] + 320
    mem[_191] = msg.value - cd[4]
    mem[_191 + 32] = uint16(cd[100])
    mem[_191 + 64] = cd[132]
    mem[_191 + 96] = cd[164]
    mem[_191 + 128] = msg.sender
    mem[_191 + 160] = _187
    mem[_191 + 192] = _187 - (_187 / 100 * cd[228])
    _192 = mem[64]
    mem[64] = mem[64] + 96
    mem[_192] = 0
    mem[_192 + 32] = 0
    _193 = mem[64]
    mem[64] = mem[64] + 64
    mem[_193] = 2
    mem[_193 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
    mem[_192 + 64] = _193
    mem[_191 + 224] = _192
    _194 = mem[64]
    mem[mem[64] + 32] = address(cd[196])
    _195 = mem[64]
    mem[mem[64]] = 20
    mem[64] = mem[64] + 52
    mem[_191 + 256] = _195
    mem[_191 + 288] = _188
    mem[_194 + 52] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
    mem[_194 + 56] = uint16(cd[100])
    mem[_194 + 88] = cd[132]
    mem[_194 + 120] = cd[164]
    mem[_194 + 152] = msg.sender
    mem[_194 + 184] = _187
    mem[_194 + 216] = _187 - (_187 / 100 * cd[228])
    mem[_194 + 248] = 288
    mem[_194 + 344] = 0
    mem[_194 + 376] = 0
    mem[_194 + 408] = 96
    mem[_194 + 440] = 2
    mem[_194 + 472] = 0x3078000000000000000000000000000000000000000000000000000000000000
    mem[_194 + 474] = 0
    mem[_194 + 280] = 448
    _234 = mem[_195]
    mem[_194 + 504] = mem[_195]
    mem[_194 + 536 len ceil32(_234)] = mem[_195 + 32 len ceil32(_234)]
    if ceil32(_234) <= _234:
        require ext_code.size(stor1)
        call stor1.0x9fbf10fc with:
           value msg.value - cd[4] wei
             gas gas_remaining wei
            args cd[100] << 240, cd[132], cd[164], msg.sender, _187, _187 - (_187 / 100 * cd[228]), 288, 448, ceil32(_234) + 480, 0, 0, 96, 2, 12408, 0, mem[_194 + 506 len ceil32(_234) + 30], 0
    else:
        mem[ceil32(_234) + _194 + 536] = 0
        require ext_code.size(stor1)
        call stor1.0x9fbf10fc with:
           value msg.value - cd[4] wei
             gas gas_remaining wei
            args cd[100] << 240, cd[132], cd[164], msg.sender, _187, _187 - (_187 / 100 * cd[228]), 288, 448, ceil32(_234) + 480, 0, 0, 96, 2, 12408, 0, mem[_194 + 506 len _234 + 30], 0, mem[_194 + _234 + 568 len ceil32(_234) - _234]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3b1fb5d2(?) {
    require calldata.size - 4 >= 96
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
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
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    _57 = mem[128]
    mem[ceil32(32 * ('cd', 68).length) + 101] = this.address
    mem[ceil32(32 * ('cd', 68).length) + 133] = stor4
    require ext_code.size(address(_57))
    staticcall address(_57).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, stor4
    mem[ceil32(32 * ('cd', 68).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[4]:
        if 15 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 101] = cd[4]
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 133] = 0
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 165] = 160
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 261] = ('cd', 68).length
        idx = 0
        s = 128
        t = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 293
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 197] = address(cd[36])
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 229] = block.timestamp + 15
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], 0, 160, address(cd[36]), block.timestamp + 15, ('cd', 68).length, mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 68).length]
        if not ext_call.success:
            return 0
        mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _116 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128
        _121 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
        if mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
        mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97] = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
        require _116 + (32 * _121) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _121] = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + _116 + 129 len 32 * _121]
        if _121 < 1:
            revert with 0, 17
        if _121 - 1 >= _121:
            revert with 0, 50
        _152 = mem[(32 * _121 - 1) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129]
        _153 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = address(cd[36])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = ('cd', 68).length
        idx = 0
        s = 128
        t = mem[64] + 160
        while idx < ('cd', 68).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_153 + 96] = _152
        emit 0xd70a440b: mem[mem[64] len _153 + (32 * ('cd', 68).length) + -mem[64] + 160]
        return _152
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    _63 = mem[128]
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 101] = stor4
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 133] = stor2
    require ext_code.size(address(_63))
    call address(_63).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, stor2
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'approve return false'
    if 15 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 101] = cd[4]
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 133] = 0
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 165] = 160
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 68).length
    idx = 0
    s = 128
    t = ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 293
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 197] = address(cd[36])
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 229] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[4], 0, 160, address(cd[36]), block.timestamp + 15, ('cd', 68).length, mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 68).length]
    if not ext_call.success:
        return 0
    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    _117 = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128
    _123 = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 97] = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    require _117 + (32 * _123) + 32 <= return_data.size
    mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 129 len 32 * _123] = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + _117 + 129 len 32 * _123]
    if _123 < 1:
        revert with 0, 17
    if _123 - 1 >= _123:
        revert with 0, 50
    _154 = mem[(32 * _123 - 1) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 129]
    _155 = mem[64]
    mem[mem[64]] = cd[4]
    mem[mem[64] + 32] = address(cd[36])
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = ('cd', 68).length
    idx = 0
    s = 128
    t = mem[64] + 160
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_155 + 96] = _154
    emit 0xd70a440b: mem[mem[64] len _155 + (32 * ('cd', 68).length) + -mem[64] + 160]
    return _154
}

function sub_849c1413(?) payable {
    require calldata.size - 4 >= 256
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == uint16(cd[100])
    require cd[196] == address(cd[196])
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    _67 = mem[128]
    mem[ceil32(32 * ('cd', 36).length) + 101] = msg.sender
    mem[ceil32(32 * ('cd', 36).length) + 133] = this.address
    require ext_code.size(address(_67))
    staticcall address(_67).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[4] <= 0:
        revert with 0, 'Amount must be higher than 0'
    if ext_call.return_data[0] <= cd[4]:
        revert with 0, 'You must allow this contract to spend your tokens'
    if ('cd', 36).length < 1:
        revert with 0, 17
    if ('cd', 36).length - 1 >= ('cd', 36).length:
        revert with 0, 50
    mem[0] = mem[(32 * ('cd', 36).length - 1) + 140 len 20]
    mem[32] = 6
    if not stor6[mem[(32 * ('cd', 36).length - 1) + 140 len 20]]:
        revert with 0, 'The token wanted is not allowed'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    _82 = mem[128]
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101] = msg.sender
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 133] = this.address
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 165] = cd[4]
    require ext_code.size(address(_82))
    call address(_82).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[4]
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    _89 = mem[128]
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 101] = this.address
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 133] = stor4
    require ext_code.size(address(_89))
    staticcall address(_89).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, stor4
    mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[4]:
        if 15 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 101] = cd[4]
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 165] = 160
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 36).length
        idx = 0
        s = 128
        t = ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 293
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 197] = this.address
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 229] = block.timestamp + 15
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _136 = mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128
        _138 = mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
        if mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97] = _138
        require _136 + (32 * _138) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 32 * _138] = mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _136 + 129 len 32 * _138]
        if _138 < 1:
            revert with 0, 17
        if _138 - 1 >= _138:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * _138 - 1) + ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129]
    else:
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        _95 = mem[128]
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 101] = stor4
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 133] = stor2
        require ext_code.size(address(_95))
        call address(_95).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor4, stor2
        mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ERROR_001'
        if 15 > !block.timestamp:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 101] = cd[4]
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 165] = 160
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 261] = ('cd', 36).length
        idx = 0
        s = 128
        t = ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 293
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 197] = this.address
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 229] = block.timestamp + 15
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[4], cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 293 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        _137 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
        require ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128
        _139 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
        if mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
        mem[ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 97] = _139
        require _137 + (32 * _139) + 32 <= return_data.size
        mem[ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 129 len 32 * _139] = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + _137 + 129 len 32 * _139]
        if _139 < 1:
            revert with 0, 17
        if _139 - 1 >= _139:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * _139 - 1) + ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 129]
    return memory
      from mem[64]
       len 32
}

function sub_ab8236f3(?) {
    require calldata.size - 4 >= 192
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg4 == address(arg4)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98
    mem[ceil32(ceil32(arg2.length)) + 97] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg6.length] = arg6[all]
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98] = uint16(arg1)
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130] = 160
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 258] = arg2.length
    mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 290 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 162] = arg3
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 194] = address(arg4)
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 226] = arg5
        emit 0xd479387e: arg1 << 240, Array(len=arg2.length, data=arg2[all]), arg3, address(arg4), arg5
        require arg6.length >= 96
        _127 = mem[ceil32(ceil32(arg2.length)) + 129]
        require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
        _130 = mem[ceil32(ceil32(arg2.length)) + 193]
        require mem[ceil32(ceil32(arg2.length)) + 193] <= test266151307()
        require ceil32(ceil32(arg2.length)) + arg6.length + 129 > ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 160
        _133 = mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]
        if mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]) + 99 < 98 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + ceil32(32 * mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]) + 99 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + ceil32(32 * mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]) + 99
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98] = _133
        require _130 + (32 * _133) + 64 <= arg6.length + 32
        s = ceil32(ceil32(arg2.length)) + _130 + 161
        t = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
        idx = 0
        while idx < _133:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if 0 >= _133:
            revert with 0, 50
        if mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 142 len 20] != address(arg4):
            revert with 0, 'path[0] should be the token from stg'
        if 0 >= _133:
            revert with 0, 50
        _251 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = stor4
        require ext_code.size(address(_251))
        staticcall address(_251).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, stor4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_257] >= arg5:
            if 15 > !block.timestamp:
                revert with 0, 17
            _269 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg5
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _133
            idx = 0
            s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
            t = mem[64] + 196
            while idx < _133:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_269 + 100] = address(_127)
            mem[_269 + 132] = block.timestamp + 15
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _269 + (32 * _133) + -mem[64] + 192]
            if ext_call.success:
                _349 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _353 = mem[_349]
                require mem[_349] <= test266151307()
                require _349 + return_data.size > _349 + mem[_349] + 31
                _357 = mem[_349 + mem[_349]]
                if mem[_349 + mem[_349]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_349 + mem[_349]]) + 1 < 0 or _349 + ceil32(return_data.size) + ceil32(32 * mem[_349 + mem[_349]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _349 + ceil32(return_data.size) + ceil32(32 * mem[_349 + mem[_349]]) + 1
                mem[_349 + ceil32(return_data.size)] = _357
                require _353 + (32 * _357) + 32 <= return_data.size
                mem[_349 + ceil32(return_data.size) + 32 len 32 * _357] = mem[_349 + _353 + 32 len 32 * _357]
                if _357 < 1:
                    revert with 0, 17
                if _357 - 1 >= _357:
                    revert with 0, 50
                _409 = mem[(32 * _357 - 1) + _349 + ceil32(return_data.size) + 32]
                _410 = mem[64]
                mem[mem[64]] = arg5
                mem[mem[64] + 32] = address(_127)
                mem[mem[64] + 64] = 128
                _417 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                idx = 0
                s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
                t = mem[64] + 160
                while idx < _417:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_410 + 96] = _409
                emit 0xd70a440b: mem[mem[64] len _410 + (32 * _417) + -mem[64] + 160]
        else:
            if 0 >= _133:
                revert with 0, 50
            _263 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130]
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = stor2
            require ext_code.size(address(_263))
            call address(_263).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, stor2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_271] == bool(mem[_271])
            if not mem[_271]:
                revert with 0, 'approve return false'
            if 15 > !block.timestamp:
                revert with 0, 17
            _288 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg5
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _133
            idx = 0
            s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
            t = mem[64] + 196
            while idx < _133:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_288 + 100] = address(_127)
            mem[_288 + 132] = block.timestamp + 15
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _288 + (32 * _133) + -mem[64] + 192]
            if ext_call.success:
                _350 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _354 = mem[_350]
                require mem[_350] <= test266151307()
                require _350 + return_data.size > _350 + mem[_350] + 31
                _358 = mem[_350 + mem[_350]]
                if mem[_350 + mem[_350]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_350 + mem[_350]]) + 1 < 0 or _350 + ceil32(return_data.size) + ceil32(32 * mem[_350 + mem[_350]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _350 + ceil32(return_data.size) + ceil32(32 * mem[_350 + mem[_350]]) + 1
                mem[_350 + ceil32(return_data.size)] = _358
                require _354 + (32 * _358) + 32 <= return_data.size
                mem[_350 + ceil32(return_data.size) + 32 len 32 * _358] = mem[_350 + _354 + 32 len 32 * _358]
                if _358 < 1:
                    revert with 0, 17
                if _358 - 1 >= _358:
                    revert with 0, 50
                _411 = mem[(32 * _358 - 1) + _350 + ceil32(return_data.size) + 32]
                _412 = mem[64]
                mem[mem[64]] = arg5
                mem[mem[64] + 32] = address(_127)
                mem[mem[64] + 64] = 128
                _418 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                idx = 0
                s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
                t = mem[64] + 160
                while idx < _418:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_412 + 96] = _411
                emit 0xd70a440b: mem[mem[64] len _412 + (32 * _418) + -mem[64] + 160]
    else:
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + arg2.length + 290] = 0
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 162] = arg3
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 194] = address(arg4)
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 226] = arg5
        emit 0xd479387e: arg1 << 240, Array(len=arg2.length, data=arg2[all]), arg3, address(arg4), arg5
        require arg6.length >= 96
        _128 = mem[ceil32(ceil32(arg2.length)) + 129]
        require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
        _132 = mem[ceil32(ceil32(arg2.length)) + 193]
        require mem[ceil32(ceil32(arg2.length)) + 193] <= test266151307()
        require ceil32(ceil32(arg2.length)) + arg6.length + 129 > ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 160
        _134 = mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]
        if mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]) + 99 < 98 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + ceil32(32 * mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]) + 99 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + ceil32(32 * mem[ceil32(ceil32(arg2.length)) + mem[ceil32(ceil32(arg2.length)) + 193] + 129]) + 99
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98] = _134
        require _132 + (32 * _134) + 64 <= arg6.length + 32
        s = ceil32(ceil32(arg2.length)) + _132 + 161
        t = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
        idx = 0
        while idx < _134:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if 0 >= _134:
            revert with 0, 50
        if mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 142 len 20] != address(arg4):
            revert with 0, 'path[0] should be the token from stg'
        if 0 >= _134:
            revert with 0, 50
        _254 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = stor4
        require ext_code.size(address(_254))
        staticcall address(_254).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, stor4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_258] >= arg5:
            if 15 > !block.timestamp:
                revert with 0, 17
            _270 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg5
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _134
            idx = 0
            s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
            t = mem[64] + 196
            while idx < _134:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_270 + 100] = address(_128)
            mem[_270 + 132] = block.timestamp + 15
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _270 + (32 * _134) + -mem[64] + 192]
            if ext_call.success:
                _351 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _355 = mem[_351]
                require mem[_351] <= test266151307()
                require _351 + return_data.size > _351 + mem[_351] + 31
                _359 = mem[_351 + mem[_351]]
                if mem[_351 + mem[_351]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_351 + mem[_351]]) + 1 < 0 or _351 + ceil32(return_data.size) + ceil32(32 * mem[_351 + mem[_351]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _351 + ceil32(return_data.size) + ceil32(32 * mem[_351 + mem[_351]]) + 1
                mem[_351 + ceil32(return_data.size)] = _359
                require _355 + (32 * _359) + 32 <= return_data.size
                mem[_351 + ceil32(return_data.size) + 32 len 32 * _359] = mem[_351 + _355 + 32 len 32 * _359]
                if _359 < 1:
                    revert with 0, 17
                if _359 - 1 >= _359:
                    revert with 0, 50
                _413 = mem[(32 * _359 - 1) + _351 + ceil32(return_data.size) + 32]
                mem[mem[64]] = arg5
                mem[mem[64] + 32] = address(_128)
                mem[mem[64] + 64] = 128
                _419 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                idx = 0
                s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
                t = mem[64] + 160
                while idx < _419:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = _413
                emit 0xd70a440b: arg5, address(_128), 128, _413, mem[mem[64] + 128 len (32 * _419) + 32]
        else:
            if 0 >= _134:
                revert with 0, 50
            _264 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130]
            mem[mem[64] + 4] = stor4
            mem[mem[64] + 36] = stor2
            require ext_code.size(address(_264))
            call address(_264).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stor4, stor2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_272] == bool(mem[_272])
            if not mem[_272]:
                revert with 0, 'approve return false'
            if 15 > !block.timestamp:
                revert with 0, 17
            _290 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg5
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = _134
            idx = 0
            s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
            t = mem[64] + 196
            while idx < _134:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_290 + 100] = address(_128)
            mem[_290 + 132] = block.timestamp + 15
            require ext_code.size(stor0)
            call stor0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _290 + (32 * _134) + -mem[64] + 192]
            if ext_call.success:
                _352 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _356 = mem[_352]
                require mem[_352] <= test266151307()
                require _352 + return_data.size > _352 + mem[_352] + 31
                _360 = mem[_352 + mem[_352]]
                if mem[_352 + mem[_352]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_352 + mem[_352]]) + 1 < 0 or _352 + ceil32(return_data.size) + ceil32(32 * mem[_352 + mem[_352]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _352 + ceil32(return_data.size) + ceil32(32 * mem[_352 + mem[_352]]) + 1
                mem[_352 + ceil32(return_data.size)] = _360
                require _356 + (32 * _360) + 32 <= return_data.size
                mem[_352 + ceil32(return_data.size) + 32 len 32 * _360] = mem[_352 + _356 + 32 len 32 * _360]
                if _360 < 1:
                    revert with 0, 17
                if _360 - 1 >= _360:
                    revert with 0, 50
                _415 = mem[(32 * _360 - 1) + _352 + ceil32(return_data.size) + 32]
                _416 = mem[64]
                mem[mem[64]] = arg5
                mem[mem[64] + 32] = address(_128)
                mem[mem[64] + 64] = 128
                _420 = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                mem[mem[64] + 128] = mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 98]
                idx = 0
                s = ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg6.length)) + 130
                t = mem[64] + 160
                while idx < _420:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_416 + 96] = _415
                emit 0xd70a440b: mem[mem[64] len _416 + (32 * _420) + -mem[64] + 160]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x849c1413(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x117803e3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return OWNER
            if uint32(call.func_hash) >> 224 != unknown_0x1a487b43(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x3b1fb5d2(?????):
                    require unknown_0x5091d3bf(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor6[cd[4]])
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[36] == address(cd[36])
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 68).length) + 129 < 128 or ceil32(32 * ('cd', 68).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 68).length
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                idx = 0
                s = cd[68] + 36
                t = 160
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if 0 >= ('cd', 68).length:
                    revert with 0, 50
                _478 = mem[160]
                mem[ceil32(32 * ('cd', 68).length) + 133] = this.address
                mem[ceil32(32 * ('cd', 68).length) + 165] = stor4
                require ext_code.size(address(_478))
                staticcall address(_478).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor4
                mem[ceil32(32 * ('cd', 68).length) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4]:
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 133] = cd[4]
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 165] = 0
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 197] = 160
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 293] = ('cd', 68).length
                    idx = 0
                    s = 160
                    t = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 325
                    while idx < ('cd', 68).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 229] = address(cd[36])
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 261] = block.timestamp + 15
                    require ext_code.size(stor0)
                    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4], 0, 160, address(cd[36]), block.timestamp + 15, ('cd', 68).length, mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 68).length]
                    if not ext_call.success:
                        return 0
                    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129
                    require return_data.size >= 32
                    _960 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 160
                    _972 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]
                    if mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130
                    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129] = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]
                    require _960 + (32 * _972) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 161 len 32 * _972] = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + _960 + 161 len 32 * _972]
                    if _972 < 1:
                        revert with 0, 17
                    if _972 - 1 >= _972:
                        revert with 0, 50
                    _1289 = mem[(32 * _972 - 1) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 161]
                    _1290 = mem[64]
                    mem[mem[64]] = cd[4]
                    mem[mem[64] + 32] = address(cd[36])
                    mem[mem[64] + 64] = 128
                    mem[mem[64] + 128] = ('cd', 68).length
                    idx = 0
                    s = 160
                    t = mem[64] + 160
                    while idx < ('cd', 68).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1290 + 96] = _1289
                    emit 0xd70a440b: mem[mem[64] len _1290 + (32 * ('cd', 68).length) + -mem[64] + 160]
                    return _1289
                if 0 >= ('cd', 68).length:
                    revert with 0, 50
                _500 = mem[160]
                mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 133] = stor4
                mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 165] = stor2
                require ext_code.size(address(_500))
                call address(_500).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, stor2
                mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'approve return false'
                if 15 > !block.timestamp:
                    revert with 0, 17
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 133] = cd[4]
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 165] = 0
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 197] = 160
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 293] = ('cd', 68).length
                idx = 0
                s = 160
                t = ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 325
                while idx < ('cd', 68).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 229] = address(cd[36])
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 261] = block.timestamp + 15
                require ext_code.size(stor0)
                call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[4], 0, 160, address(cd[36]), block.timestamp + 15, ('cd', 68).length, mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 325 len 32 * ('cd', 68).length]
                if not ext_call.success:
                    return 0
                mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 129
                require return_data.size >= 32
                _961 = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32
                require mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 160
                _974 = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]
                if mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130
                mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 129] = _974
                require _961 + (32 * _974) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 161 len 32 * _974] = mem[ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + _961 + 161 len 32 * _974]
                if _974 < 1:
                    revert with 0, 17
                if _974 - 1 >= _974:
                    revert with 0, 50
                _1291 = mem[(32 * _974 - 1) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(return_data.size)) + 161]
                _1292 = mem[64]
                mem[mem[64]] = cd[4]
                mem[mem[64] + 32] = address(cd[36])
                mem[mem[64] + 64] = 128
                mem[mem[64] + 128] = ('cd', 68).length
                idx = 0
                s = 160
                t = mem[64] + 160
                while idx < ('cd', 68).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1292 + 96] = _1291
                emit 0xd70a440b: mem[mem[64] len _1292 + (32 * ('cd', 68).length) + -mem[64] + 160]
                return _1291
            require calldata.size - 4 >= 256
            require cd[36] <= test266151307()
            require cd[36] + 35 < calldata.size
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                revert with 0, 65
            mem[128] = ('cd', 36).length
            require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
            idx = 0
            s = cd[36] + 36
            t = 160
            while idx < ('cd', 36).length:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[100] == uint16(cd[100])
            require cd[196] == address(cd[196])
            if cd[4] <= 0:
                revert with 0, 'Amount must be higher than 0'
            if ('cd', 36).length < 1:
                revert with 0, 17
            if ('cd', 36).length - 1 >= ('cd', 36).length:
                revert with 0, 50
            mem[0] = mem[(32 * ('cd', 36).length - 1) + 172 len 20]
            mem[32] = 6
            if not stor6[mem[(32 * ('cd', 36).length - 1) + 172 len 20]]:
                revert with 0, 'The token wanted is not allowed'
            if 15 > !block.timestamp:
                revert with 0, 17
            mem[ceil32(32 * ('cd', 36).length) + 129] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 36).length) + 133] = cd[68]
            mem[ceil32(32 * ('cd', 36).length) + 165] = 128
            mem[ceil32(32 * ('cd', 36).length) + 261] = ('cd', 36).length
            idx = 0
            s = 160
            t = ceil32(32 * ('cd', 36).length) + 293
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 36).length) + 197] = this.address
            mem[ceil32(32 * ('cd', 36).length) + 229] = block.timestamp + 15
            require ext_code.size(stor0)
            call stor0.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value cd[4] wei
                 gas gas_remaining wei
                args cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 293 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 36).length) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129
            require return_data.size >= 32
            _959 = mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 36).length) + return_data.size + 129 > ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 + 160
            _970 = mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 + 129]
            if mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 + 129] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 + 129]) + 130 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + mem[ceil32(32 * ('cd', 36).length) + 129 len 4], Mask(224, 32, cd[68]) >> 32 + 129]) + 130
            mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = _970
            require _959 + (32 * _970) + 32 <= return_data.size
            mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 161 len 32 * _970] = mem[ceil32(32 * ('cd', 36).length) + _959 + 161 len 32 * _970]
            if _970 < 1:
                revert with 0, 17
            if _970 - 1 >= _970:
                revert with 0, 50
            _1273 = mem[(32 * _970 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 161]
            _1274 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1274] = 0
            _1287 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1287] = 0
            mem[_1287 + 32] = 0
            mem[_1287 + 64] = 0
            mem[_1287 + 96] = 0
            mem[_1287 + 128] = 0
            mem[_1287 + 160] = 0
            mem[_1287 + 192] = 0
            _1288 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1288] = 0
            mem[_1288 + 32] = 0
            mem[_1288 + 64] = 96
            mem[_1287 + 224] = _1288
            mem[_1287 + 256] = 96
            mem[_1287 + 288] = 96
            if _1273 / 100 and cd[228] > -1 / _1273 / 100:
                revert with 0, 17
            if _1273 < _1273 / 100 * cd[228]:
                revert with 0, 17
            if msg.value < cd[4]:
                revert with 0, 17
            _1335 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1335] = msg.value - cd[4]
            mem[_1335 + 32] = uint16(cd[100])
            mem[_1335 + 64] = cd[132]
            mem[_1335 + 96] = cd[164]
            mem[_1335 + 128] = msg.sender
            mem[_1335 + 160] = _1273
            mem[_1335 + 192] = _1273 - (_1273 / 100 * cd[228])
            _1336 = mem[64]
            mem[64] = mem[64] + 96
            mem[_1336] = 0
            mem[_1336 + 32] = 0
            _1337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1337] = 2
            mem[_1337 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
            mem[_1336 + 64] = _1337
            mem[_1335 + 224] = _1336
            _1338 = mem[64]
            mem[mem[64] + 32] = address(cd[196])
            _1343 = mem[64]
            mem[mem[64]] = 20
            mem[64] = mem[64] + 52
            mem[_1335 + 256] = _1343
            mem[_1335 + 288] = _1274
            mem[_1338 + 52] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
            mem[_1338 + 56] = uint16(cd[100])
            mem[_1338 + 88] = cd[132]
            mem[_1338 + 120] = cd[164]
            mem[_1338 + 152] = msg.sender
            mem[_1338 + 184] = _1273
            mem[_1338 + 216] = _1273 - (_1273 / 100 * cd[228])
            mem[_1338 + 248] = 288
            mem[_1338 + 344] = 0
            mem[_1338 + 376] = 0
            mem[_1338 + 408] = 96
            mem[_1338 + 440] = 2
            mem[_1338 + 472] = 0x3078000000000000000000000000000000000000000000000000000000000000
            mem[_1338 + 474] = 0
            mem[_1338 + 280] = 448
            _1490 = mem[_1343]
            mem[_1338 + 504] = mem[_1343]
            mem[_1338 + 536 len ceil32(_1490)] = mem[_1343 + 32 len ceil32(_1490)]
            if ceil32(_1490) <= _1490:
                require ext_code.size(stor1)
                call stor1.0x9fbf10fc with:
                   value msg.value - cd[4] wei
                     gas gas_remaining wei
                    args cd[100] << 240, cd[132], cd[164], msg.sender, _1273, _1273 - (_1273 / 100 * cd[228]), 288, 448, ceil32(_1490) + 480, 0, 0, 96, 2, 12408, 0, mem[_1338 + 506 len ceil32(_1490) + 30], 0
            else:
                mem[ceil32(_1490) + _1338 + 536] = 0
                require ext_code.size(stor1)
                call stor1.0x9fbf10fc with:
                   value msg.value - cd[4] wei
                     gas gas_remaining wei
                    args cd[100] << 240, cd[132], cd[164], msg.sender, _1273, _1273 - (_1273 / 100 * cd[228]), 288, 448, ceil32(_1490) + 480, 0, 0, 96, 2, 12408, 0, mem[_1338 + 506 len _1490 + 30], 0, mem[_1338 + _1490 + 568 len ceil32(_1490) - _1490]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x849c1413(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 256
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = 0
                s = cd[36] + 36
                t = 160
                while idx < ('cd', 36).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[100] == uint16(cd[100])
                require cd[196] == address(cd[196])
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                _495 = mem[160]
                mem[ceil32(32 * ('cd', 36).length) + 133] = msg.sender
                mem[ceil32(32 * ('cd', 36).length) + 165] = this.address
                require ext_code.size(address(_495))
                staticcall address(_495).0xdd62ed3e with:
                        gas gas_remaining wei
                       args msg.sender, this.address
                mem[ceil32(32 * ('cd', 36).length) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[4] <= 0:
                    revert with 0, 'Amount must be higher than 0'
                if ext_call.return_data[0] <= cd[4]:
                    revert with 0, 'You must allow this contract to spend your tokens'
                if ('cd', 36).length < 1:
                    revert with 0, 17
                if ('cd', 36).length - 1 >= ('cd', 36).length:
                    revert with 0, 50
                mem[0] = mem[(32 * ('cd', 36).length - 1) + 172 len 20]
                mem[32] = 6
                if not stor6[mem[(32 * ('cd', 36).length - 1) + 172 len 20]]:
                    revert with 0, 'The token wanted is not allowed'
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                _554 = mem[160]
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 133] = msg.sender
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 165] = this.address
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 197] = cd[4]
                require ext_code.size(address(_554))
                call address(_554).0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, cd[4]
                mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                _592 = mem[160]
                mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 133] = this.address
                mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 165] = stor4
                require ext_code.size(address(_592))
                staticcall address(_592).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, stor4
                mem[ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= cd[4]:
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 133] = cd[4]
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 165] = cd[68]
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 197] = 160
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 293] = ('cd', 36).length
                    idx = 0
                    s = 160
                    t = ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 325
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 229] = this.address
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 261] = block.timestamp + 15
                    require ext_code.size(stor0)
                    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4], cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 325 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129
                    require return_data.size >= 32
                    _962 = mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 160
                    _975 = mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]
                    if mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129] = _975
                    require _962 + (32 * _975) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 161 len 32 * _975] = mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + _962 + 161 len 32 * _975]
                    if _975 < 1:
                        revert with 0, 17
                    if _975 - 1 >= _975:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _975 - 1) + ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 161]
                else:
                    if 0 >= ('cd', 36).length:
                        revert with 0, 50
                    _630 = mem[160]
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 133] = stor4
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 165] = stor2
                    require ext_code.size(address(_630))
                    call address(_630).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, stor2
                    mem[ceil32(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 'ERROR_001'
                    if 15 > !block.timestamp:
                        revert with 0, 17
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 133] = cd[4]
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 197] = 160
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 293] = ('cd', 36).length
                    idx = 0
                    s = 160
                    t = ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 325
                    while idx < ('cd', 36).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 229] = this.address
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 261] = block.timestamp + 15
                    require ext_code.size(stor0)
                    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[4], cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 325 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 129
                    require return_data.size >= 32
                    _963 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32
                    require mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 160
                    _976 = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]
                    if mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[4]) >> 32 + 129]) + 130
                    mem[ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 129] = _976
                    require _963 + (32 * _976) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 161 len 32 * _976] = mem[ceil32(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + _963 + 161 len 32 * _976]
                    if _976 < 1:
                        revert with 0, 17
                    if _976 - 1 >= _976:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * _976 - 1) + ceil32(32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 161]
                return memory
                  from mem[64]
                   len 32
            if unknown_0xab8236f3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 192
                require cd[4] == uint16(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 36).length
                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                mem[('cd', 36).length + 160] = 0
                require cd[100] == address(cd[100])
                require cd[164] <= test266151307()
                require cd[164] + 35 < calldata.size
                if ('cd', 164).length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(('cd', 164).length)) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130
                mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 164).length
                require cd[164] + ('cd', 164).length + 36 <= calldata.size
                mem[ceil32(ceil32(('cd', 36).length)) + 161 len ('cd', 164).length] = call.data[cd[164] + 36 len ('cd', 164).length]
                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130] = uint16(cd[4])
                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162] = 160
                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 290] = ('cd', 36).length
                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 322 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 164).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                if ceil32(('cd', 36).length) <= ('cd', 36).length:
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 194] = cd[68]
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 226] = address(cd[100])
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 258] = cd[132]
                    emit 0xd479387e: cd[4] << 240, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), cd[68], address(cd[100]), cd[132]
                    require ('cd', 164).length >= 96
                    _483 = mem[ceil32(ceil32(('cd', 36).length)) + 161]
                    require mem[ceil32(ceil32(('cd', 36).length)) + 161] == mem[ceil32(ceil32(('cd', 36).length)) + 173 len 20]
                    _488 = mem[ceil32(ceil32(('cd', 36).length)) + 225]
                    require mem[ceil32(ceil32(('cd', 36).length)) + 225] <= test266151307()
                    require ceil32(ceil32(('cd', 36).length)) + ('cd', 164).length + 161 > ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 192
                    _498 = mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]
                    if mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]) + 131 < 130 or ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(32 * mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]) + 131 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(32 * mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]) + 131
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130] = _498
                    require _488 + (32 * _498) + 64 <= ('cd', 164).length + 32
                    s = ceil32(ceil32(('cd', 36).length)) + _488 + 193
                    t = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                    idx = 0
                    while idx < _498:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if 0 >= _498:
                        revert with 0, 50
                    if mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 174 len 20] != address(cd[100]):
                        revert with 0, 'path[0] should be the token from stg'
                    if 0 >= _498:
                        revert with 0, 50
                    _953 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(_953))
                    staticcall address(_953).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _968 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_968] >= cd[132]:
                        if 15 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[132]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _498
                        idx = 0
                        s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                        t = mem[64] + 196
                        while idx < _498:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = address(_483)
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(stor0)
                        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[132], 0, 160, address(_483), block.timestamp + 15, _498, mem[mem[64] + 196 len 32 * _498]
                        if ext_call.success:
                            _1267 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1283 = mem[_1267]
                            require mem[_1267] <= test266151307()
                            require _1267 + return_data.size > _1267 + mem[_1267] + 31
                            _1295 = mem[_1267 + mem[_1267]]
                            if mem[_1267 + mem[_1267]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1267 + mem[_1267]]) + 1 < 0 or _1267 + ceil32(return_data.size) + ceil32(32 * mem[_1267 + mem[_1267]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1267 + ceil32(return_data.size) + ceil32(32 * mem[_1267 + mem[_1267]]) + 1
                            mem[_1267 + ceil32(return_data.size)] = _1295
                            require _1283 + (32 * _1295) + 32 <= return_data.size
                            mem[_1267 + ceil32(return_data.size) + 32 len 32 * _1295] = mem[_1267 + _1283 + 32 len 32 * _1295]
                            if _1295 < 1:
                                revert with 0, 17
                            if _1295 - 1 >= _1295:
                                revert with 0, 50
                            _1507 = mem[(32 * _1295 - 1) + _1267 + ceil32(return_data.size) + 32]
                            _1508 = mem[64]
                            mem[mem[64]] = cd[132]
                            mem[mem[64] + 32] = address(_483)
                            mem[mem[64] + 64] = 128
                            _1520 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            idx = 0
                            s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                            t = mem[64] + 160
                            while idx < _1520:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1508 + 96] = _1507
                            emit 0xd70a440b: mem[mem[64] len _1508 + (32 * _1520) + -mem[64] + 160]
                    else:
                        if 0 >= _498:
                            revert with 0, 50
                        _988 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162]
                        mem[mem[64] + 4] = stor4
                        mem[mem[64] + 36] = stor2
                        require ext_code.size(address(_988))
                        call address(_988).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor4, stor2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _998 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_998] == bool(mem[_998])
                        if not mem[_998]:
                            revert with 0, 'approve return false'
                        if 15 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[132]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _498
                        idx = 0
                        s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                        t = mem[64] + 196
                        while idx < _498:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = address(_483)
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(stor0)
                        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[132], 0, 160, address(_483), block.timestamp + 15, _498, mem[mem[64] + 196 len 32 * _498]
                        if ext_call.success:
                            _1268 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1284 = mem[_1268]
                            require mem[_1268] <= test266151307()
                            require _1268 + return_data.size > _1268 + mem[_1268] + 31
                            _1296 = mem[_1268 + mem[_1268]]
                            if mem[_1268 + mem[_1268]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1268 + mem[_1268]]) + 1 < 0 or _1268 + ceil32(return_data.size) + ceil32(32 * mem[_1268 + mem[_1268]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1268 + ceil32(return_data.size) + ceil32(32 * mem[_1268 + mem[_1268]]) + 1
                            mem[_1268 + ceil32(return_data.size)] = _1296
                            require _1284 + (32 * _1296) + 32 <= return_data.size
                            mem[_1268 + ceil32(return_data.size) + 32 len 32 * _1296] = mem[_1268 + _1284 + 32 len 32 * _1296]
                            if _1296 < 1:
                                revert with 0, 17
                            if _1296 - 1 >= _1296:
                                revert with 0, 50
                            _1509 = mem[(32 * _1296 - 1) + _1268 + ceil32(return_data.size) + 32]
                            _1510 = mem[64]
                            mem[mem[64]] = cd[132]
                            mem[mem[64] + 32] = address(_483)
                            mem[mem[64] + 64] = 128
                            _1521 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            idx = 0
                            s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                            t = mem[64] + 160
                            while idx < _1521:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1510 + 96] = _1509
                            emit 0xd70a440b: mem[mem[64] len _1510 + (32 * _1521) + -mem[64] + 160]
                else:
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + ('cd', 36).length + 322] = 0
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 194] = cd[68]
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 226] = address(cd[100])
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 258] = cd[132]
                    emit 0xd479387e: cd[4] << 240, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), cd[68], address(cd[100]), cd[132]
                    require ('cd', 164).length >= 96
                    _485 = mem[ceil32(ceil32(('cd', 36).length)) + 161]
                    require mem[ceil32(ceil32(('cd', 36).length)) + 161] == mem[ceil32(ceil32(('cd', 36).length)) + 173 len 20]
                    _491 = mem[ceil32(ceil32(('cd', 36).length)) + 225]
                    require mem[ceil32(ceil32(('cd', 36).length)) + 225] <= test266151307()
                    require ceil32(ceil32(('cd', 36).length)) + ('cd', 164).length + 161 > ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 192
                    _501 = mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]
                    if mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]) + 131 < 130 or ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(32 * mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]) + 131 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + ceil32(32 * mem[ceil32(ceil32(('cd', 36).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 225] + 161]) + 131
                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130] = _501
                    require _491 + (32 * _501) + 64 <= ('cd', 164).length + 32
                    s = ceil32(ceil32(('cd', 36).length)) + _491 + 193
                    t = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                    idx = 0
                    while idx < _501:
                        require mem[s] == mem[s + 12 len 20]
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx + 1
                        continue 
                    if 0 >= _501:
                        revert with 0, 50
                    if mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 174 len 20] != address(cd[100]):
                        revert with 0, 'path[0] should be the token from stg'
                    if 0 >= _501:
                        revert with 0, 50
                    _956 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162]
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = stor4
                    require ext_code.size(address(_956))
                    staticcall address(_956).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, stor4
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_969] >= cd[132]:
                        if 15 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[132]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _501
                        idx = 0
                        s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                        t = mem[64] + 196
                        while idx < _501:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = address(_485)
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(stor0)
                        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[132], 0, 160, address(_485), block.timestamp + 15, _501, mem[mem[64] + 196 len 32 * _501]
                        if ext_call.success:
                            _1269 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1285 = mem[_1269]
                            require mem[_1269] <= test266151307()
                            require _1269 + return_data.size > _1269 + mem[_1269] + 31
                            _1297 = mem[_1269 + mem[_1269]]
                            if mem[_1269 + mem[_1269]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1269 + mem[_1269]]) + 1 < 0 or _1269 + ceil32(return_data.size) + ceil32(32 * mem[_1269 + mem[_1269]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1269 + ceil32(return_data.size) + ceil32(32 * mem[_1269 + mem[_1269]]) + 1
                            mem[_1269 + ceil32(return_data.size)] = _1297
                            require _1285 + (32 * _1297) + 32 <= return_data.size
                            mem[_1269 + ceil32(return_data.size) + 32 len 32 * _1297] = mem[_1269 + _1285 + 32 len 32 * _1297]
                            if _1297 < 1:
                                revert with 0, 17
                            if _1297 - 1 >= _1297:
                                revert with 0, 50
                            _1511 = mem[(32 * _1297 - 1) + _1269 + ceil32(return_data.size) + 32]
                            _1512 = mem[64]
                            mem[mem[64]] = cd[132]
                            mem[mem[64] + 32] = address(_485)
                            mem[mem[64] + 64] = 128
                            _1522 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            idx = 0
                            s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                            t = mem[64] + 160
                            while idx < _1522:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1512 + 96] = _1511
                            emit 0xd70a440b: mem[mem[64] len _1512 + (32 * _1522) + -mem[64] + 160]
                    else:
                        if 0 >= _501:
                            revert with 0, 50
                        _989 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162]
                        mem[mem[64] + 4] = stor4
                        mem[mem[64] + 36] = stor2
                        require ext_code.size(address(_989))
                        call address(_989).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args stor4, stor2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _999 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_999] == bool(mem[_999])
                        if not mem[_999]:
                            revert with 0, 'approve return false'
                        if 15 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[132]
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = _501
                        idx = 0
                        s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                        t = mem[64] + 196
                        while idx < _501:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = address(_485)
                        mem[mem[64] + 132] = block.timestamp + 15
                        require ext_code.size(stor0)
                        call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[132], 0, 160, address(_485), block.timestamp + 15, _501, mem[mem[64] + 196 len 32 * _501]
                        if ext_call.success:
                            _1270 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1286 = mem[_1270]
                            require mem[_1270] <= test266151307()
                            require _1270 + return_data.size > _1270 + mem[_1270] + 31
                            _1298 = mem[_1270 + mem[_1270]]
                            if mem[_1270 + mem[_1270]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_1270 + mem[_1270]]) + 1 < 0 or _1270 + ceil32(return_data.size) + ceil32(32 * mem[_1270 + mem[_1270]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _1270 + ceil32(return_data.size) + ceil32(32 * mem[_1270 + mem[_1270]]) + 1
                            mem[_1270 + ceil32(return_data.size)] = _1298
                            require _1286 + (32 * _1298) + 32 <= return_data.size
                            mem[_1270 + ceil32(return_data.size) + 32 len 32 * _1298] = mem[_1270 + _1286 + 32 len 32 * _1298]
                            if _1298 < 1:
                                revert with 0, 17
                            if _1298 - 1 >= _1298:
                                revert with 0, 50
                            _1513 = mem[(32 * _1298 - 1) + _1270 + ceil32(return_data.size) + 32]
                            _1514 = mem[64]
                            mem[mem[64]] = cd[132]
                            mem[mem[64] + 32] = address(_485)
                            mem[mem[64] + 64] = 128
                            _1523 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            mem[mem[64] + 128] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 130]
                            idx = 0
                            s = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 164).length)) + 162
                            t = mem[64] + 160
                            while idx < _1523:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1514 + 96] = _1513
                            emit 0xd70a440b: mem[mem[64] len _1514 + (32 * _1523) + -mem[64] + 160]
            else:
                if unknown_0xd48bfca7(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if OWNER != msg.sender:
                        revert with 0, 'You are not the owner'
                    stor6[address(cd[4])] = 1
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor3, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf526b0c6(?????):
                        require unknown_0xf7f43181(?????) == uint32(call.func_hash) >> 224
                        require calldata.size - 4 >= 128
                        require cd[36] == address(cd[36])
                        require cd[100] == address(cd[100])
                        if OWNER != msg.sender:
                            revert with 0, 'You are not the owner'
                        if cd[4] != 1:
                            call address(cd[100]) with:
                               value cd[68] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args OWNER, cd[68]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        require calldata.size - 4 >= 288
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 36).length
                        require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[36] + 36
                        t = 160
                        while idx < ('cd', 36).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require cd[100] == uint16(cd[100])
                        require cd[196] == address(cd[196])
                        require cd[260] <= test266151307()
                        require cd[260] + 35 < calldata.size
                        if ('cd', 260).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 260).length)) + 130 < 129 or ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + 130 > test266151307():
                            revert with 0, 65
                        mem[ceil32(32 * ('cd', 36).length) + 129] = ('cd', 260).length
                        require cd[260] + ('cd', 260).length + 36 <= calldata.size
                        mem[ceil32(32 * ('cd', 36).length) + 161 len ('cd', 260).length] = call.data[cd[260] + 36 len ('cd', 260).length]
                        mem[ceil32(32 * ('cd', 36).length) + ('cd', 260).length + 161] = 0
                        if 0 >= ('cd', 36).length:
                            revert with 0, 50
                        _532 = mem[160]
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + 134] = msg.sender
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + 166] = this.address
                        require ext_code.size(address(_532))
                        staticcall address(_532).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + 130] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if cd[4] <= 0:
                            revert with 0, 'Amount must be higher than 0'
                        if ext_call.return_data[0] <= cd[4]:
                            revert with 0, 'You must allow this contract to spend your tokens'
                        if ('cd', 36).length < 1:
                            revert with 0, 17
                        if ('cd', 36).length - 1 >= ('cd', 36).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * ('cd', 36).length - 1) + 172 len 20]
                        mem[32] = 6
                        if not stor6[mem[(32 * ('cd', 36).length - 1) + 172 len 20]]:
                            revert with 0, 'The token wanted is not allowed'
                        if 0 >= ('cd', 36).length:
                            revert with 0, 50
                        _613 = mem[160]
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 134] = msg.sender
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 166] = this.address
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 198] = cd[4]
                        require ext_code.size(address(_613))
                        call address(_613).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[4]
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 130] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if 0 >= ('cd', 36).length:
                            revert with 0, 50
                        _650 = mem[160]
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (2 * ceil32(return_data.size)) + 134] = this.address
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (2 * ceil32(return_data.size)) + 166] = stor4
                        require ext_code.size(address(_650))
                        staticcall address(_650).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, stor4
                        mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (2 * ceil32(return_data.size)) + 130] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= cd[4]:
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 134] = cd[4]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 166] = cd[68]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 198] = 160
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 294] = ('cd', 36).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 326
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 230] = this.address
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 262] = block.timestamp + 15
                            require ext_code.size(stor0)
                            call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[4], cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 326 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130
                            require return_data.size >= 32
                            _964 = mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32
                            require mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + return_data.size + 130 > ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 161
                            _977 = mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]
                            if mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]) + 131 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]) + 131
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130] = _977
                            require _964 + (32 * _977) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 162 len 32 * _977] = mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + _964 + 162 len 32 * _977]
                            if _977 < 1:
                                revert with 0, 17
                            if _977 - 1 >= _977:
                                revert with 0, 50
                            _1277 = mem[(32 * _977 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 162]
                            _1299 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_1299] = 0
                            mem[_1299 + 32] = 0
                            mem[_1299 + 64] = 0
                            mem[_1299 + 96] = 0
                            mem[_1299 + 128] = 0
                            mem[_1299 + 160] = 0
                            mem[_1299 + 192] = 0
                            _1300 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1300] = 0
                            mem[_1300 + 32] = 0
                            mem[_1300 + 64] = 96
                            mem[_1299 + 224] = _1300
                            mem[_1299 + 256] = 96
                            mem[_1299 + 288] = 96
                            if _1277 / 100 and cd[228] > -1 / _1277 / 100:
                                revert with 0, 17
                            if _1277 < _1277 / 100 * cd[228]:
                                revert with 0, 17
                            _1325 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_1325] = msg.value
                            mem[_1325 + 32] = uint16(cd[100])
                            mem[_1325 + 64] = cd[132]
                            mem[_1325 + 96] = cd[164]
                            mem[_1325 + 128] = msg.sender
                            mem[_1325 + 160] = _1277
                            mem[_1325 + 192] = _1277 - (_1277 / 100 * cd[228])
                            _1326 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1326] = 0
                            mem[_1326 + 32] = 0
                            _1327 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1327] = 2
                            mem[_1327 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                            mem[_1326 + 64] = _1327
                            mem[_1325 + 224] = _1326
                            _1328 = mem[64]
                            mem[mem[64] + 32] = address(cd[196])
                            _1333 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            mem[_1325 + 256] = _1333
                            mem[_1325 + 288] = ceil32(32 * ('cd', 36).length) + 129
                            mem[_1328 + 52] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
                            mem[_1328 + 56] = uint16(cd[100])
                            mem[_1328 + 88] = cd[132]
                            mem[_1328 + 120] = cd[164]
                            mem[_1328 + 152] = msg.sender
                            mem[_1328 + 184] = _1277
                            mem[_1328 + 216] = _1277 - (_1277 / 100 * cd[228])
                            mem[_1328 + 248] = 288
                            mem[_1328 + 344] = 0
                            mem[_1328 + 376] = 0
                            mem[_1328 + 408] = 96
                            mem[_1328 + 440] = 2
                            mem[_1328 + 472] = 0x3078000000000000000000000000000000000000000000000000000000000000
                            mem[_1328 + 474] = 0
                            mem[_1328 + 280] = 448
                            _1493 = mem[_1333]
                            mem[_1328 + 504] = mem[_1333]
                            mem[_1328 + 536 len ceil32(_1493)] = mem[_1333 + 32 len ceil32(_1493)]
                            if ceil32(_1493) <= _1493:
                                require ext_code.size(stor1)
                                call stor1.0x9fbf10fc with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args cd[100] << 240, cd[132], cd[164], msg.sender, _1277, _1277 - (_1277 / 100 * cd[228]), 288, 448, ceil32(_1493) + 480, 0, 0, 96, 2, 12408, 0, mem[_1328 + 506 len ceil32(_1493) + 30], ('cd', 260).length, Mask(8 * ceil32(('cd', 260).length), -(8 * ceil32(('cd', 260).length)) + 256, call.data[cd[260] + 36 len ('cd', 260).length], ext_call.return_data[('cd', 260).length + -ceil32(ceil32(('cd', 260).length)) + 31 len ceil32(('cd', 260).length) - ('cd', 260).length]) << (8 * ceil32(('cd', 260).length)) - 256
                            else:
                                mem[ceil32(_1493) + _1328 + 536] = ('cd', 260).length
                                mem[ceil32(_1493) + _1328 + 568 len ceil32(('cd', 260).length)] = call.data[cd[260] + 36 len ('cd', 260).length], ext_call.return_data[('cd', 260).length + -ceil32(ceil32(('cd', 260).length)) + 31 len ceil32(('cd', 260).length) - ('cd', 260).length]
                                if ceil32(('cd', 260).length) > ('cd', 260).length:
                                    mem[ceil32(_1493) + _1328 + ('cd', 260).length + 568] = 0
                                require ext_code.size(stor1)
                                call stor1.0x9fbf10fc with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args cd[100] << 240, cd[132], cd[164], msg.sender, _1277, _1277 - (_1277 / 100 * cd[228]), 288, 448, ceil32(_1493) + 480, 0, 0, 96, 2, 12408, 0, mem[_1328 + 506 len _1493 + 30], 0, mem[_1328 + _1493 + 568 len ceil32(('cd', 260).length) + ceil32(_1493) - _1493]
                        else:
                            if 0 >= ('cd', 36).length:
                                revert with 0, 50
                            _685 = mem[160]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 134] = stor4
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 166] = stor2
                            require ext_code.size(address(_685))
                            call address(_685).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor4, stor2
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (4 * ceil32(return_data.size)) + 130] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'ERROR_001'
                            if 15 > !block.timestamp:
                                revert with 0, 17
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 134] = cd[4]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 166] = cd[68]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 198] = 160
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 294] = ('cd', 36).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 326
                            while idx < ('cd', 36).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 230] = this.address
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 262] = block.timestamp + 15
                            require ext_code.size(stor0)
                            call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[4], cd[68], Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 326 len 32 * ('cd', 36).length]), address(this.address), block.timestamp + 15
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (7 * ceil32(return_data.size)) + 130
                            require return_data.size >= 32
                            _965 = mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32
                            require mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + return_data.size + 130 > ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 161
                            _978 = mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]
                            if mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]) + 1 < 0 or ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]) + 131 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (7 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + 130 len 4], Mask(224, 32, cd[4]) >> 32 + 130]) + 131
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (7 * ceil32(return_data.size)) + 130] = _978
                            require _965 + (32 * _978) + 32 <= return_data.size
                            mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (7 * ceil32(return_data.size)) + 162 len 32 * _978] = mem[ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (6 * ceil32(return_data.size)) + _965 + 162 len 32 * _978]
                            if _978 < 1:
                                revert with 0, 17
                            if _978 - 1 >= _978:
                                revert with 0, 50
                            _1278 = mem[(32 * _978 - 1) + ceil32(32 * ('cd', 36).length) + ceil32(ceil32(('cd', 260).length)) + (7 * ceil32(return_data.size)) + 162]
                            _1301 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_1301] = 0
                            mem[_1301 + 32] = 0
                            mem[_1301 + 64] = 0
                            mem[_1301 + 96] = 0
                            mem[_1301 + 128] = 0
                            mem[_1301 + 160] = 0
                            mem[_1301 + 192] = 0
                            _1302 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1302] = 0
                            mem[_1302 + 32] = 0
                            mem[_1302 + 64] = 96
                            mem[_1301 + 224] = _1302
                            mem[_1301 + 256] = 96
                            mem[_1301 + 288] = 96
                            if _1278 / 100 and cd[228] > -1 / _1278 / 100:
                                revert with 0, 17
                            if _1278 < _1278 / 100 * cd[228]:
                                revert with 0, 17
                            _1329 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_1329] = msg.value
                            mem[_1329 + 32] = uint16(cd[100])
                            mem[_1329 + 64] = cd[132]
                            mem[_1329 + 96] = cd[164]
                            mem[_1329 + 128] = msg.sender
                            mem[_1329 + 160] = _1278
                            mem[_1329 + 192] = _1278 - (_1278 / 100 * cd[228])
                            _1330 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1330] = 0
                            mem[_1330 + 32] = 0
                            _1331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1331] = 2
                            mem[_1331 + 32] = 0x3078000000000000000000000000000000000000000000000000000000000000
                            mem[_1330 + 64] = _1331
                            mem[_1329 + 224] = _1330
                            _1332 = mem[64]
                            mem[mem[64] + 32] = address(cd[196])
                            _1334 = mem[64]
                            mem[mem[64]] = 20
                            mem[64] = mem[64] + 52
                            mem[_1329 + 256] = _1334
                            mem[_1329 + 288] = ceil32(32 * ('cd', 36).length) + 129
                            mem[_1332 + 52] = 0x9fbf10fc00000000000000000000000000000000000000000000000000000000
                            mem[_1332 + 56] = uint16(cd[100])
                            mem[_1332 + 88] = cd[132]
                            mem[_1332 + 120] = cd[164]
                            mem[_1332 + 152] = msg.sender
                            mem[_1332 + 184] = _1278
                            mem[_1332 + 216] = _1278 - (_1278 / 100 * cd[228])
                            mem[_1332 + 248] = 288
                            mem[_1332 + 344] = 0
                            mem[_1332 + 376] = 0
                            mem[_1332 + 408] = 96
                            mem[_1332 + 440] = 2
                            mem[_1332 + 472] = 0x3078000000000000000000000000000000000000000000000000000000000000
                            mem[_1332 + 474] = 0
                            mem[_1332 + 280] = 448
                            _1494 = mem[_1334]
                            mem[_1332 + 504] = mem[_1334]
                            mem[_1332 + 536 len ceil32(_1494)] = mem[_1334 + 32 len ceil32(_1494)]
                            if ceil32(_1494) <= _1494:
                                require ext_code.size(stor1)
                                call stor1.0x9fbf10fc with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args cd[100] << 240, cd[132], cd[164], msg.sender, _1278, _1278 - (_1278 / 100 * cd[228]), 288, 448, ceil32(_1494) + 480, 0, 0, 96, 2, 12408, 0, mem[_1332 + 506 len ceil32(_1494) + 30], ('cd', 260).length, Mask(8 * ceil32(('cd', 260).length), -(8 * ceil32(('cd', 260).length)) + 256, call.data[cd[260] + 36 len ('cd', 260).length], ext_call.return_data[('cd', 260).length + -ceil32(ceil32(('cd', 260).length)) + 31 len ceil32(('cd', 260).length) - ('cd', 260).length]) << (8 * ceil32(('cd', 260).length)) - 256
                            else:
                                mem[ceil32(_1494) + _1332 + 536] = ('cd', 260).length
                                mem[ceil32(_1494) + _1332 + 568 len ceil32(('cd', 260).length)] = call.data[cd[260] + 36 len ('cd', 260).length], ext_call.return_data[('cd', 260).length + -ceil32(ceil32(('cd', 260).length)) + 31 len ceil32(('cd', 260).length) - ('cd', 260).length]
                                if ceil32(('cd', 260).length) > ('cd', 260).length:
                                    mem[ceil32(_1494) + _1332 + ('cd', 260).length + 568] = 0
                                require ext_code.size(stor1)
                                call stor1.0x9fbf10fc with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args cd[100] << 240, cd[132], cd[164], msg.sender, _1278, _1278 - (_1278 / 100 * cd[228]), 288, 448, ceil32(_1494) + 480, 0, 0, 96, 2, 12408, 0, mem[_1332 + 506 len _1494 + 30], 0, mem[_1332 + _1494 + 568 len ceil32(('cd', 260).length) + ceil32(_1494) - _1494]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
}



}
