contract main {




// =====================  Runtime code  =====================


address owner;
address WAVAXAddress;
address joeRouterAddress;
address sub_5460ebd5Address;

function sub_5460ebd5(?) {
    return sub_5460ebd5Address
}

function joeRouter() {
    return joeRouterAddress
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_b67b0b9f(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    require ext_code.size(address(arg7))
    call address(arg7).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg8), arg2, 128, 192, address(arg1), address(arg3), address(arg4), address(arg5), address(arg6), address(arg8)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128] = arg3
    mem[160] = arg4
    emit 0x24d0dbdc: address(arg2), arg3, arg4
    mem[100] = msg.sender
    require ext_code.size(sub_5460ebd5Address)
    staticcall sub_5460ebd5Address.isMarketListed(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'untrusted message sender'
    require arg5.length >= 192
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 164)] == address(cd[(arg5 + 164)])
    require cd[(arg5 + 196)] == address(cd[(arg5 + 196)])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Contract has no balance of tokenFrom'
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = joeRouterAddress
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(cd[(arg5 + 196)]))
    call address(cd[(arg5 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = address(cd[(arg5 + 196)])
    mem[(6 * ceil32(return_data.size)) + 160] = address(cd[(arg5 + 100)])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 1
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 388 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _61 = mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
    _62 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 'NH{q', 65
    if (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224 > test266151307() or (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 224
    mem[(7 * ceil32(return_data.size)) + 192] = _62
    require _61 + (32 * _62) + 32 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + _61 + 224
    t = (7 * ceil32(return_data.size)) + 224
    while idx < _62:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _97 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_97] == mem[_97]
    if mem[_97] <= 0:
        revert with 0, 'Didn't receive token'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _104 = mem[_103]
    require mem[_103] == mem[_103]
    mem[mem[64] + 32] = address(cd[(arg5 + 100)])
    mem[mem[64] + 64] = ext_call.return_data[0]
    mem[mem[64] + 96] = _104
    emit Swapped(address(cd[(arg5 + 196)]), address(cd[(arg5 + 100)]), ext_call.return_data[0], _104);
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _110 = mem[_109]
    require mem[_109] == mem[_109]
    mem[mem[64] + 4] = address(cd[(arg5 + 68)])
    mem[mem[64] + 36] = _110
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), _110
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_113] == bool(mem[_113])
    mem[mem[64] + 4] = address(cd[(arg5 + 36)])
    mem[mem[64] + 36] = _110
    mem[mem[64] + 68] = address(cd[(arg5 + 132)])
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 36)]), _110, address(cd[(arg5 + 132)])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_117] == mem[_117]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 100)]))
    staticcall address(cd[(arg5 + 100)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _122 = mem[_121]
    require mem[_121] == mem[_121]
    mem[mem[64] + 32] = address(cd[(arg5 + 68)])
    mem[mem[64] + 64] = _122
    emit Liquidated(address(cd[(arg5 + 36)]), address(cd[(arg5 + 68)]), _122);
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 132)]))
    staticcall address(cd[(arg5 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _127 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _128 = mem[_127]
    require mem[_127] == mem[_127]
    mem[mem[64] + 4] = mem[_127]
    require ext_code.size(address(cd[(arg5 + 132)]))
    call address(cd[(arg5 + 132)]).redeem(uint256 arg1) with:
         gas gas_remaining wei
        args _128
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_131] == mem[_131]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _135 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_135] == mem[_135]
    if mem[_135] <= 0:
        revert with 0, 'Contract has no balance of tokenFrom'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 164)]))
    staticcall address(cd[(arg5 + 164)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _142 = mem[_141]
    require mem[_141] == mem[_141]
    mem[mem[64] + 4] = joeRouterAddress
    mem[mem[64] + 36] = _142
    require ext_code.size(address(cd[(arg5 + 164)]))
    call address(cd[(arg5 + 164)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args joeRouterAddress, _142
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _145 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_145] == bool(mem[_145])
    _147 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_147]:
        revert with 'NH{q', 50
    mem[_147 + 32] = address(cd[(arg5 + 164)])
    if 1 >= mem[_147]:
        revert with 'NH{q', 50
    mem[_147 + 64] = address(cd[(arg5 + 196)])
    if block.timestamp > -61:
        revert with 'NH{q', 17
    mem[_147 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_147 + 100] = _142
    mem[_147 + 132] = 1
    mem[_147 + 164] = 160
    mem[_147 + 260] = mem[_147]
    idx = 0
    s = _147 + 32
    t = _147 + 292
    while idx < mem[_147]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_147 + 196] = this.address
    mem[_147 + 228] = block.timestamp + 60
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _147 + (32 * mem[_147]) + -mem[64] + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _172 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _173 = mem[_172]
    require mem[_172] <= test266151307()
    require _172 + mem[_172] + 31 < _172 + return_data.size
    _174 = mem[_172 + mem[_172]]
    if mem[_172 + mem[_172]] > test266151307():
        revert with 'NH{q', 65
    if _172 + ceil32(return_data.size) + (32 * mem[_172 + mem[_172]]) + 32 > test266151307() or (32 * mem[_172 + mem[_172]]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = _172 + ceil32(return_data.size) + (32 * mem[_172 + mem[_172]]) + 32
    mem[_172 + ceil32(return_data.size)] = _174
    require _173 + (32 * _174) + 32 <= return_data.size
    idx = 0
    s = _172 + _173 + 32
    t = _172 + ceil32(return_data.size) + 32
    while idx < _174:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _206 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_206] == mem[_206]
    if mem[_206] <= 0:
        revert with 0, 'Didn't receive token'
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _212 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _213 = mem[_212]
    require mem[_212] == mem[_212]
    mem[mem[64] + 64] = _142
    mem[mem[64] + 96] = _213
    emit Swapped(address(cd[(arg5 + 164)]), address(cd[(arg5 + 196)]), _142, _213);
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg3 + arg4
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_218] == bool(mem[_218])
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[(arg5 + 196)]))
    staticcall address(cd[(arg5 + 196)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _222 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _223 = mem[_222]
    require mem[_222] == mem[_222]
    if mem[_222] < arg3 + arg4:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = owner
    mem[mem[64] + 36] = _223 - arg3 - arg4
    require ext_code.size(address(cd[(arg5 + 196)]))
    call address(cd[(arg5 + 196)]).0xa9059cbb with:
         gas gas_remaining wei
        args owner, _223 - arg3 - arg4
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _226 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_226] == bool(mem[_226])
    return 0x7968ba28153757de2da7bce4c2ba9ebaf94445061f3050de1b0de5c34bb7d5d8
}



}
