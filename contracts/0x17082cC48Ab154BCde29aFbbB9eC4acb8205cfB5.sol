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

function sub_6051eac5(?) payable {
    mem[100] = this.address
    require ext_code.size(sub_37f6f658Address)
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
    require ext_code.size(traderJoeRouterAddress)
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
    idx = 0
    s = ceil32(return_data.size) + _26 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _27:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _27:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require not initialDeposit
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(sub_b328f1ecAddress)
    call sub_b328f1ecAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor0
    mem[ceil32(return_data.size) + 160] = stor1
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
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
    require ext_code.size(traderJoeRouterAddress)
    staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _40 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _41 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _41
    require _40 + (32 * _41) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _40 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _41:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _41:
        revert with 'NH{q', 50
    _67 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and 99 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 'NH{q', 17
    if block.timestamp > -61:
        revert with 'NH{q', 17
    _68 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = 99 * _67 / 100
    mem[mem[64] + 68] = 160
    _69 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _69:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_68 + 100] = this.address
    mem[_68 + 132] = block.timestamp + 60
    require ext_code.size(traderJoeRouterAddress)
    call traderJoeRouterAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _68 + (32 * _69) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _89 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _90 = mem[_89]
    require mem[_89] <= test266151307()
    require _89 + mem[_89] + 31 < _89 + return_data.size
    _91 = mem[_89 + mem[_89]]
    if mem[_89 + mem[_89]] > test266151307():
        revert with 'NH{q', 65
    if _89 + ceil32(return_data.size) + floor32(mem[_89 + mem[_89]]) + 1 > test266151307() or floor32(mem[_89 + mem[_89]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _89 + ceil32(return_data.size) + floor32(mem[_89 + mem[_89]]) + 1
    mem[_89 + ceil32(return_data.size)] = _91
    require _90 + (32 * _91) + 32 <= return_data.size
    idx = 0
    s = _89 + _90 + 32
    t = _89 + ceil32(return_data.size) + 32
    while idx < _91:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    initialDeposit = arg1
    sub_2fb47be4 = block.timestamp
    if 1 >= _91:
        revert with 'NH{q', 50
    sub_b9b26350 = mem[_89 + ceil32(return_data.size) + 64]
    sub_ea3598ad = block.timestamp
    if 1 >= _91:
        revert with 'NH{q', 50
    mem[mem[64] + 4] = mem[_89 + ceil32(return_data.size) + 64]
    mem[mem[64] + 36] = this.address
    require ext_code.size(stakingAddress)
    call stakingAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    require ext_code.size(stakingAddress)
    call stakingAddress.claim(address arg1) with:
         gas gas_remaining wei
        args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require initialDeposit > 0
    mem[100] = this.address
    require ext_code.size(sub_37f6f658Address)
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
        require ext_code.size(traderJoeRouterAddress)
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _79 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
        _81 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _81
        require _79 + (32 * _81) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _79 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _81:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _81:
            revert with 'NH{q', 50
        _141 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and 99 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 'NH{q', 17
        if block.timestamp > -61:
            revert with 'NH{q', 17
        _143 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 99 * _141 / 100
        mem[mem[64] + 68] = 160
        _145 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _145:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_143 + 100] = this.address
        mem[_143 + 132] = block.timestamp + 60
        require ext_code.size(traderJoeRouterAddress)
        call traderJoeRouterAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _143 + (32 * _145) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _193 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _195 = mem[_193]
        require mem[_193] <= test266151307()
        require _193 + mem[_193] + 31 < _193 + return_data.size
        _197 = mem[_193 + mem[_193]]
        if mem[_193 + mem[_193]] > test266151307():
            revert with 'NH{q', 65
        if _193 + ceil32(return_data.size) + floor32(mem[_193 + mem[_193]]) + 1 > test266151307() or floor32(mem[_193 + mem[_193]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _193 + ceil32(return_data.size) + floor32(mem[_193 + mem[_193]]) + 1
        mem[_193 + ceil32(return_data.size)] = _197
        require _195 + (32 * _197) + 32 <= return_data.size
        idx = 0
        s = _193 + _195 + 32
        t = _193 + ceil32(return_data.size) + 32
        while idx < _197:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if arg1:
            if 1 >= _197:
                revert with 'NH{q', 50
            _237 = mem[_193 + ceil32(return_data.size) + 64]
            if earnings > -mem[_193 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            earnings += mem[_193 + ceil32(return_data.size) + 64]
            sub_ea3598ad = block.timestamp
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _237
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _237
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_251] == bool(mem[_251])
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_b328f1ecAddress)
            staticcall sub_b328f1ecAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _243 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _245 = mem[_243]
            require mem[_243] == mem[_243]
            initialDeposit = 0
            sub_2fb47be4 = 0
            sub_b9b26350 = 0
            earnings = 0
            sub_ea3598ad = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _245
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _245
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == bool(mem[_257])
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
        require ext_code.size(traderJoeRouterAddress)
        staticcall traderJoeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0] - sub_b9b26350, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _80 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _82 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, ext_call.return_data[0] - sub_b9b26350) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = _82
        require _80 + (32 * _82) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _80 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _82:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if 1 >= _82:
            revert with 'NH{q', 50
        _142 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] and 99 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
            revert with 'NH{q', 17
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0] - sub_b9b26350
        mem[mem[64] + 36] = 99 * _142 / 100
        mem[mem[64] + 68] = 160
        _146 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 196
        while idx < _146:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 60
        require ext_code.size(traderJoeRouterAddress)
        call traderJoeRouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0] - sub_b9b26350, 99 * _142 / 100, 160, address(this.address), block.timestamp + 60, mem[mem[64] + 164 len (32 * _146) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _194 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _196 = mem[_194]
        require mem[_194] <= test266151307()
        require _194 + mem[_194] + 31 < _194 + return_data.size
        _198 = mem[_194 + mem[_194]]
        if mem[_194 + mem[_194]] > test266151307():
            revert with 'NH{q', 65
        if _194 + ceil32(return_data.size) + floor32(mem[_194 + mem[_194]]) + 1 > test266151307() or floor32(mem[_194 + mem[_194]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _194 + ceil32(return_data.size) + floor32(mem[_194 + mem[_194]]) + 1
        mem[_194 + ceil32(return_data.size)] = _198
        require _196 + (32 * _198) + 32 <= return_data.size
        idx = 0
        s = _194 + _196 + 32
        t = _194 + ceil32(return_data.size) + 32
        while idx < _198:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if arg1:
            if 1 >= _198:
                revert with 'NH{q', 50
            _238 = mem[_194 + ceil32(return_data.size) + 64]
            if earnings > -mem[_194 + ceil32(return_data.size) + 64] - 1:
                revert with 'NH{q', 17
            earnings += mem[_194 + ceil32(return_data.size) + 64]
            sub_ea3598ad = block.timestamp
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _238
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _238
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_252] == bool(mem[_252])
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_b328f1ecAddress)
            staticcall sub_b328f1ecAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _244 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _246 = mem[_244]
            require mem[_244] == mem[_244]
            initialDeposit = 0
            sub_2fb47be4 = 0
            sub_b9b26350 = 0
            earnings = 0
            sub_ea3598ad = 0
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _246
            require ext_code.size(sub_b328f1ecAddress)
            call sub_b328f1ecAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _246
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == bool(mem[_258])
}



}
