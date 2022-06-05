contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address sub_b328f1ecAddress;
address timeAddress;
address sub_37f6f658Address;
address stakingAddress;
address traderJoeRouterAddress;
address owner;
uint256 initialDeposit;
uint256 sub_2fb47be4;
uint256 sub_b9b26350;
uint256 earnings;
uint256 sub_ea3598ad;

function sub_2fb47be4(?) payable {
    return sub_2fb47be4
}

function sub_37f6f658(?) payable {
    return sub_37f6f658Address
}

function TraderJoeRouter() payable {
    return traderJoeRouterAddress
}

function owner() payable {
    return owner
}

function earnings() payable {
    return earnings
}

function sub_b328f1ec(?) payable {
    return sub_b328f1ecAddress
}

function sub_b9b26350(?) payable {
    return sub_b9b26350
}

function initialDeposit() payable {
    return initialDeposit
}

function sub_ea3598ad(?) payable {
    return sub_ea3598ad
}

function Staking() payable {
    return stakingAddress
}

function Time() payable {
    return timeAddress
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require not initialDeposit
    staticcall stakingAddress.stake(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingAddress)
    call stakingAddress.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6051eac5(?) payable {
    mem[100] = this.address
    staticcall sub_37f6f658Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_b9b26350:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] - sub_b9b26350:
        return 0
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor1
    mem[ceil32(return_data.size) + 160] = stor0
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] - sub_b9b26350
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] - sub_b9b26350, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _27
    require _26 + (32 * _27) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _26 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _26 + (32 * _27) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _27:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function withdraw(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require initialDeposit > 0
    mem[100] = this.address
    staticcall sub_37f6f658Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not arg1:
        require ext_code.size(stakingAddress)
        call stakingAddress.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor1
        mem[ceil32(return_data.size) + 160] = stor0
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _82 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _84 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _84
        require _82 + (32 * _84) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _82 + 224
        s = (2 * ceil32(return_data.size)) + 224
        while idx < ceil32(return_data.size) + _82 + (32 * _84) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _84:
            revert with 'NH{q', 50
        _144 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and 99 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 'NH{q', 17
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _146 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 99 * _144 / 100
        mem[mem[64] + 68] = 160
        _148 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _148:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_146 + 100] = this.address
        mem[_146 + 132] = block.timestamp + 60
        call traderJoeRouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _146 + (32 * _148) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _198 = mem[_196]
        require mem[_196] <= test266151307()
        require _196 + mem[_196] + 31 < _196 + return_data.size
        _200 = mem[_196 + mem[_196]]
        if mem[_196 + mem[_196]] > test266151307():
            revert with 'NH{q', 65
        if _196 + ceil32(return_data.size) + floor32(mem[_196 + mem[_196]]) + 1 > test266151307() or floor32(mem[_196 + mem[_196]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _196 + ceil32(return_data.size) + floor32(mem[_196 + mem[_196]]) + 1
        mem[_196 + ceil32(return_data.size)] = _200
        require _198 + (32 * _200) + 32 <= return_data.size
        idx = _196 + _198 + 32
        s = _196 + ceil32(return_data.size) + 32
        while idx < _196 + _198 + (32 * _200) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if arg1:
            if 1 >= _200:
                revert with 'NH{q', 50
            _240 = mem[_196 + ceil32(return_data.size) + 64]
            if earnings > -mem[_196 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            earnings += mem[_196 + ceil32(return_data.size) + 64]
            sub_ea3598ad = block.timestamp
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _240
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _240
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_254] == bool(mem[_254])
        else:
            mem[mem[64] + 4] = this.address
            staticcall sub_b328f1ecAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _248 = mem[_244]
            require mem[_244] == mem[_244]
            initialDeposit = 0
            sub_2fb47be4 = 0
            sub_b9b26350 = 0
            earnings = 0
            sub_ea3598ad = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _248
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _248
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_260] == bool(mem[_260])
    else:
        if ext_call.return_data[0] < sub_b9b26350:
            revert with 'NH{q', 17
        require ext_code.size(stakingAddress)
        call stakingAddress.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - sub_b9b26350, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor1
        mem[ceil32(return_data.size) + 160] = stor0
        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0] - sub_b9b26350
        mem[ceil32(return_data.size) + 228] = 64
        mem[ceil32(return_data.size) + 260] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0] - sub_b9b26350, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _83 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _85 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _85
        require _83 + (32 * _85) + 32 <= return_data.size
        idx = ceil32(return_data.size) + _83 + 224
        s = (2 * ceil32(return_data.size)) + 224
        while idx < ceil32(return_data.size) + _83 + (32 * _85) + 224:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if 1 >= _85:
            revert with 'NH{q', 50
        _145 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and 99 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 'NH{q', 17
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] - sub_b9b26350
        mem[mem[64] + 36] = 99 * _145 / 100
        mem[mem[64] + 68] = 160
        _149 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _149:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - sub_b9b26350, 99 * _145 / 100, 160, address(this.address), block.timestamp + 60, mem[mem[64] + 164 len (32 * _149) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _199 = mem[_197]
        require mem[_197] <= test266151307()
        require _197 + mem[_197] + 31 < _197 + return_data.size
        _201 = mem[_197 + mem[_197]]
        if mem[_197 + mem[_197]] > test266151307():
            revert with 'NH{q', 65
        if _197 + ceil32(return_data.size) + floor32(mem[_197 + mem[_197]]) + 1 > test266151307() or floor32(mem[_197 + mem[_197]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _197 + ceil32(return_data.size) + floor32(mem[_197 + mem[_197]]) + 1
        mem[_197 + ceil32(return_data.size)] = _201
        require _199 + (32 * _201) + 32 <= return_data.size
        idx = _197 + _199 + 32
        s = _197 + ceil32(return_data.size) + 32
        while idx < _197 + _199 + (32 * _201) + 32:
            require mem[idx] == mem[idx]
            mem[s] = mem[idx]
            idx = idx + 32
            s = s + 32
            continue 
        if arg1:
            if 1 >= _201:
                revert with 'NH{q', 50
            _241 = mem[_197 + ceil32(return_data.size) + 64]
            if earnings > -mem[_197 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            earnings += mem[_197 + ceil32(return_data.size) + 64]
            sub_ea3598ad = block.timestamp
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _241
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _241
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_255] == bool(mem[_255])
        else:
            mem[mem[64] + 4] = this.address
            staticcall sub_b328f1ecAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _246 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _249 = mem[_246]
            require mem[_246] == mem[_246]
            initialDeposit = 0
            sub_2fb47be4 = 0
            sub_b9b26350 = 0
            earnings = 0
            sub_ea3598ad = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _249
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _249
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _261 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_261] == bool(mem[_261])
}



}
