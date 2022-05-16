contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_bee53c88;

function owner() {
    return owner
}

function sub_bee53c88(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_bee53c88[arg1].field_0), bool(sub_bee53c88[arg1].field_8), sub_bee53c88[arg1].field_16
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3126339e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bee53c88[address(arg1)].field_0 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7222accc(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bee53c88[address(arg1)].field_0 = uint8(bool(arg2))
    sub_bee53c88[address(arg1)].field_8 = uint8(bool(arg3))
    sub_bee53c88[address(arg1)].field_16 = address(arg4)
    sub_bee53c88[address(arg1)].field_176 = Mask(80, 176, bool(arg2)) >> 176
    sub_bee53c88[address(arg1)].field_176 = Mask(80, 168, bool(arg3)) >> 168
}

function sub_d109be9c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_bee53c88[address(arg1)].field_8:
        return 0, sub_bee53c88[address(arg1)].field_16
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return 1, address(ext_call.return_data[0])
}

function getAmountOut(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg2:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.balance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
}

function sub_e1b4989d(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if not arg3:
        return 0
    mem[0] = address(arg1)
    mem[32] = 1
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = sub_bee53c88[address(arg1)].field_16
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args sub_bee53c88[address(arg1)].field_16
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(6 * ceil32(return_data.size)) + 100] = sub_bee53c88[address(arg1)].field_16
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args sub_bee53c88[address(arg1)].field_16
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 and ext_call.return_data[0] > -1 / arg3:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if arg3 and ext_call.return_data[0] > -1 / arg3:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    if ext_call.return_data[12 len 20] != address(arg2):
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 96] = 0xd33c402100000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 132] = address(arg2)
        require ext_code.size(address(arg4))
        staticcall address(arg4).0xd33c4021 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _42 = mem[(10 * ceil32(return_data.size)) + 96 len 4], address(ext_call.return_data[0]) << 64
        require mem[(10 * ceil32(return_data.size)) + 96 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 96 > (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 127
        _46 = mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]
        if mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]) + 1 < 0 or (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]) + 97
        mem[(11 * ceil32(return_data.size)) + 96] = _46
        require 0, address(arg2) << 64 + (32 * _46) + 32 <= return_data.size
        s = (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128
        t = (11 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _46:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = _46
        idx = 0
        s = (11 * ceil32(return_data.size)) + 128
        t = mem[64] + 100
        while idx < _46:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(_42))
        staticcall address(_42).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=_46, data=mem[mem[64] + 100 len 32 * _46])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _116 = mem[_114]
        require mem[_114] <= test266151307()
        require _114 + return_data.size > _114 + mem[_114] + 31
        _118 = mem[_114 + mem[_114]]
        if mem[_114 + mem[_114]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_114 + mem[_114]]) + 1 < 0 or _114 + ceil32(return_data.size) + ceil32(32 * mem[_114 + mem[_114]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _114 + ceil32(return_data.size) + ceil32(32 * mem[_114 + mem[_114]]) + 1
        mem[_114 + ceil32(return_data.size)] = _118
        require _116 + (32 * _118) + 32 <= return_data.size
        mem[_114 + ceil32(return_data.size) + 32 len 32 * _118] = mem[_114 + _116 + 32 len 32 * _118]
        if _118 < 1:
            revert with 'NH{q', 17
        if _118 - 1 >= _118:
            revert with 'NH{q', 50
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] > !mem[(32 * _118 - 1) + _114 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        mem[mem[64]] = (arg3 * ext_call.return_data[0] / ext_call.return_data[0]) + mem[(32 * _118 - 1) + _114 + ceil32(return_data.size) + 32]
    else:
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 96] = 0xd33c402100000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 132] = address(arg2)
        require ext_code.size(address(arg4))
        staticcall address(arg4).0xd33c4021 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 96
        require return_data.size >= 64
        _43 = mem[(10 * ceil32(return_data.size)) + 96 len 4], address(ext_call.return_data[0]) << 64
        require mem[(10 * ceil32(return_data.size)) + 96 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require (10 * ceil32(return_data.size)) + return_data.size + 96 > (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 127
        _47 = mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]
        if mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]) + 1 < 0 or (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]) + 97 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 96]) + 97
        mem[(11 * ceil32(return_data.size)) + 96] = _47
        require 0, address(arg2) << 64 + (32 * _47) + 32 <= return_data.size
        s = (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128
        t = (11 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _47:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        _83 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = _47
        idx = 0
        s = (11 * ceil32(return_data.size)) + 128
        t = mem[64] + 100
        while idx < _47:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(_43))
        staticcall address(_43).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _83 + (32 * _47) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _117 = mem[_115]
        require mem[_115] <= test266151307()
        require _115 + return_data.size > _115 + mem[_115] + 31
        _119 = mem[_115 + mem[_115]]
        if mem[_115 + mem[_115]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_115 + mem[_115]]) + 1 < 0 or _115 + ceil32(return_data.size) + ceil32(32 * mem[_115 + mem[_115]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _115 + ceil32(return_data.size) + ceil32(32 * mem[_115 + mem[_115]]) + 1
        mem[_115 + ceil32(return_data.size)] = _119
        require _117 + (32 * _119) + 32 <= return_data.size
        mem[_115 + ceil32(return_data.size) + 32 len 32 * _119] = mem[_115 + _117 + 32 len 32 * _119]
        if _119 < 1:
            revert with 'NH{q', 17
        if _119 - 1 >= _119:
            revert with 'NH{q', 50
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] > !mem[(32 * _119 - 1) + _115 + ceil32(return_data.size) + 32]:
            revert with 'NH{q', 17
        mem[mem[64]] = (arg3 * ext_call.return_data[0] / ext_call.return_data[0]) + mem[(32 * _119 - 1) + _115 + ceil32(return_data.size) + 32]
    return memory
      from mem[64]
       len 32
}

function convert(address arg1, address arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require arg5 == arg5
    mem[0] = arg1
    mem[32] = 1
    mem[96] = bool(sub_bee53c88[address(arg1)].field_0)
    mem[128] = bool(sub_bee53c88[address(arg1)].field_8)
    mem[160] = sub_bee53c88[address(arg1)].field_16
    if not sub_bee53c88[address(arg1)].field_16:
        return 0
    mem[196] = msg.sender
    mem[228] = this.address
    mem[260] = arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x853828b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_bee53c88[address(arg1)].field_8:
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        if not sub_bee53c88[address(arg1)].field_0:
            call sub_bee53c88[address(arg1)].field_16.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        staticcall sub_bee53c88[address(arg1)].field_16.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        call sub_bee53c88[address(arg1)].field_16.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return sub_bee53c88[address(arg1)].field_16
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 196] = sub_bee53c88[address(arg1)].field_16
    mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    call sub_bee53c88[address(arg1)].field_16.0xa9059cbb with:
         gas gas_remaining wei
        args sub_bee53c88[address(arg1)].field_0, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    call sub_bee53c88[address(arg1)].field_16.burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(4 * ceil32(return_data.size)) + 192 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    if ext_call.return_data[12 len 20] != arg2:
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 192] = 0xd33c402100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 228] = arg2
        require ext_code.size(arg5)
        staticcall arg5.0xd33c4021 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 64
        _72 = mem[(8 * ceil32(return_data.size)) + 192 len 4], address(ext_call.return_data[0]) << 64
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 192 > (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 223
        _76 = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]
        if mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]) + 193 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]
        require 0, address(arg2) << 64 + (32 * _76) + 32 <= return_data.size
        s = (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224
        t = (10 * ceil32(return_data.size)) + 224
        idx = 0
        while idx < _76:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _158 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _160 = mem[_158]
        require mem[_158] == mem[_158 + 12 len 20]
        mem[mem[64] + 4] = address(_72)
        mem[mem[64] + 36] = 0
        require ext_code.size(address(_160))
        call address(_160).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_72), 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_166] == bool(mem[_166])
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _174 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _176 = mem[_174]
        require mem[_174] == mem[_174 + 12 len 20]
        mem[mem[64] + 4] = address(_72)
        mem[mem[64] + 36] = ext_call.return_data[32]
        require ext_code.size(address(_176))
        call address(_176).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_72), ext_call.return_data[32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_182] == bool(mem[_182])
        if 600 > !block.timestamp:
            revert with 'NH{q', 17
        _186 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[32]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = _76
        idx = 0
        s = (10 * ceil32(return_data.size)) + 224
        t = mem[64] + 196
        while idx < _76:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_186 + 100] = this.address
        mem[_186 + 132] = block.timestamp + 600
        require ext_code.size(address(_72))
        call address(_72).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _186 + (32 * _76) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _230 = mem[_228]
        require mem[_228] <= test266151307()
        require _228 + return_data.size > _228 + mem[_228] + 31
        _232 = mem[_228 + mem[_228]]
        if mem[_228 + mem[_228]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_228 + mem[_228]]) + 1 < 0 or _228 + ceil32(return_data.size) + ceil32(32 * mem[_228 + mem[_228]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _228 + ceil32(return_data.size) + ceil32(32 * mem[_228 + mem[_228]]) + 1
        mem[_228 + ceil32(return_data.size)] = _232
        require _230 + (32 * _232) + 32 <= return_data.size
        mem[_228 + ceil32(return_data.size) + 32 len 32 * _232] = mem[_228 + _230 + 32 len 32 * _232]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _266 = mem[_264]
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = _266
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), _266
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_272] == bool(mem[_272])
    else:
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 192] = 0xd33c402100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 228] = arg2
        require ext_code.size(arg5)
        staticcall arg5.0xd33c4021 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 192
        require return_data.size >= 64
        _73 = mem[(8 * ceil32(return_data.size)) + 192 len 4], address(ext_call.return_data[0]) << 64
        require mem[(8 * ceil32(return_data.size)) + 192 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 192 > (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 223
        _77 = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]
        if mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]) + 193 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]) + 193
        mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 192]
        require 0, address(arg2) << 64 + (32 * _77) + 32 <= return_data.size
        s = (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224
        t = (10 * ceil32(return_data.size)) + 224
        idx = 0
        while idx < _77:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _159 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _161 = mem[_159]
        require mem[_159] == mem[_159 + 12 len 20]
        mem[mem[64] + 4] = address(_73)
        mem[mem[64] + 36] = 0
        require ext_code.size(address(_161))
        call address(_161).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_73), 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == bool(mem[_167])
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_175]
        require mem[_175] == mem[_175 + 12 len 20]
        mem[mem[64] + 4] = address(_73)
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(address(_177))
        call address(_177).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_73), ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _183 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_183] == bool(mem[_183])
        if 600 > !block.timestamp:
            revert with 'NH{q', 17
        _187 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = _77
        idx = 0
        s = (10 * ceil32(return_data.size)) + 224
        t = mem[64] + 196
        while idx < _77:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_187 + 100] = this.address
        mem[_187 + 132] = block.timestamp + 600
        require ext_code.size(address(_73))
        call address(_73).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _187 + (32 * _77) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _229 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _231 = mem[_229]
        require mem[_229] <= test266151307()
        require _229 + return_data.size > _229 + mem[_229] + 31
        _233 = mem[_229 + mem[_229]]
        if mem[_229 + mem[_229]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_229 + mem[_229]]) + 1 < 0 or _229 + ceil32(return_data.size) + ceil32(32 * mem[_229 + mem[_229]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _229 + ceil32(return_data.size) + ceil32(32 * mem[_229 + mem[_229]]) + 1
        mem[_229 + ceil32(return_data.size)] = _233
        require _231 + (32 * _233) + 32 <= return_data.size
        mem[_229 + ceil32(return_data.size) + 32 len 32 * _233] = mem[_229 + _231 + 32 len 32 * _233]
        mem[mem[64] + 4] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _267 = mem[_265]
        mem[mem[64] + 4] = arg4
        mem[mem[64] + 36] = _267
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), _267
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_273] == bool(mem[_273])
    return arg2
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0xca706bcf(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x7222accc(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3126339e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_bee53c88[address(arg1)].field_0 = 0
            else:
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
        else:
            if uint32(call.func_hash) >> 224 != unknown_0x7222accc(?????):
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0xbee53c88(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(sub_bee53c88[arg1].field_0), bool(sub_bee53c88[arg1].field_8), sub_bee53c88[arg1].field_16
            require not msg.value
            require calldata.size - 4 >= 128
            require arg1 == address(arg1)
            require arg2 == bool(arg2)
            require arg3 == bool(arg3)
            require arg4 == address(arg4)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            sub_bee53c88[address(arg1)].field_0 = uint8(bool(arg2))
            sub_bee53c88[address(arg1)].field_8 = uint8(bool(arg3))
            sub_bee53c88[address(arg1)].field_16 = address(arg4)
            sub_bee53c88[address(arg1)].field_176 = Mask(80, 176, bool(arg2)) >> 176
            sub_bee53c88[address(arg1)].field_176 = Mask(80, 168, bool(arg3)) >> 168
    if unknown_0xe1b4989d(?????) > uint32(call.func_hash) >> 224:
        if uint32(call.func_hash) >> 224 != unknown_0xca706bcf(?????):
            require unknown_0xd109be9c(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if not sub_bee53c88[address(arg1)].field_8:
                return 0, sub_bee53c88[address(arg1)].field_16
            require ext_code.size(sub_bee53c88[address(arg1)].field_16)
            staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return 1, address(ext_call.return_data[0])
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        if not arg2:
            return 0
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        staticcall address(arg1).balance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and arg2 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        return (ext_call.return_data[0] * arg2 / ext_call.return_data[0])
    if unknown_0xe1b4989d(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 128
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        require arg4 == address(arg4)
        if not arg3:
            return 0
        mem[0] = address(arg1)
        mem[32] = 1
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.0x18160ddd with:
                gas gas_remaining wei
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 132] = sub_bee53c88[address(arg1)].field_16
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args sub_bee53c88[address(arg1)].field_16
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 132] = sub_bee53c88[address(arg1)].field_16
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args sub_bee53c88[address(arg1)].field_16
        mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        if ext_call.return_data[12 len 20] == address(arg2):
            staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(10 * ceil32(return_data.size)) + 128] = 0xd33c402100000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 164] = address(arg2)
            require ext_code.size(address(arg4))
            staticcall address(arg4).0xd33c4021 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 128
            require return_data.size >= 64
            _164 = mem[(10 * ceil32(return_data.size)) + 128 len 4], address(ext_call.return_data[0]) << 64
            require mem[(10 * ceil32(return_data.size)) + 128 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
            require 0, address(arg2) << 64 <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 128 > (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 159
            _174 = mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]
            if mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]) + 1 < 0 or (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]) + 129 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]) + 129
            mem[(11 * ceil32(return_data.size)) + 128] = mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]
            require 0, address(arg2) << 64 + (32 * _174) + 32 <= return_data.size
            s = (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 160
            t = (11 * ceil32(return_data.size)) + 160
            idx = 0
            while idx < _174:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = _174
            idx = 0
            s = (11 * ceil32(return_data.size)) + 160
            t = mem[64] + 100
            while idx < _174:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(_164))
            staticcall address(_164).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3 * ext_call.return_data[0] / ext_call.return_data[0], Array(len=_174, data=mem[mem[64] + 100 len 32 * _174])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _388 = mem[_384]
            require mem[_384] <= test266151307()
            require _384 + return_data.size > _384 + mem[_384] + 31
            _392 = mem[_384 + mem[_384]]
            if mem[_384 + mem[_384]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_384 + mem[_384]]) + 1 < 0 or _384 + ceil32(return_data.size) + ceil32(32 * mem[_384 + mem[_384]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _384 + ceil32(return_data.size) + ceil32(32 * mem[_384 + mem[_384]]) + 1
            mem[_384 + ceil32(return_data.size)] = _392
            require _388 + (32 * _392) + 32 <= return_data.size
            mem[_384 + ceil32(return_data.size) + 32 len 32 * _392] = mem[_384 + _388 + 32 len 32 * _392]
            if _392 < 1:
                revert with 'NH{q', 17
            if _392 - 1 >= _392:
                revert with 'NH{q', 50
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] > !mem[(32 * _392 - 1) + _384 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            mem[mem[64]] = (arg3 * ext_call.return_data[0] / ext_call.return_data[0]) + mem[(32 * _392 - 1) + _384 + ceil32(return_data.size) + 32]
        else:
            staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(10 * ceil32(return_data.size)) + 128] = 0xd33c402100000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 164] = address(arg2)
            require ext_code.size(address(arg4))
            staticcall address(arg4).0xd33c4021 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 128
            require return_data.size >= 64
            _163 = mem[(10 * ceil32(return_data.size)) + 128 len 4], address(ext_call.return_data[0]) << 64
            require mem[(10 * ceil32(return_data.size)) + 128 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
            require 0, address(arg2) << 64 <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 128 > (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 159
            _173 = mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]
            if mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]) + 1 < 0 or (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]) + 129 > test266151307():
                revert with 'NH{q', 65
            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]) + 129
            mem[(11 * ceil32(return_data.size)) + 128] = mem[(10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 128]
            require 0, address(arg2) << 64 + (32 * _173) + 32 <= return_data.size
            s = (10 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 160
            t = (11 * ceil32(return_data.size)) + 160
            idx = 0
            while idx < _173:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            _277 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = _173
            idx = 0
            s = (11 * ceil32(return_data.size)) + 160
            t = mem[64] + 100
            while idx < _173:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(_163))
            staticcall address(_163).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _277 + (32 * _173) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _387 = mem[_383]
            require mem[_383] <= test266151307()
            require _383 + return_data.size > _383 + mem[_383] + 31
            _391 = mem[_383 + mem[_383]]
            if mem[_383 + mem[_383]] > test266151307():
                revert with 'NH{q', 65
            if ceil32(32 * mem[_383 + mem[_383]]) + 1 < 0 or _383 + ceil32(return_data.size) + ceil32(32 * mem[_383 + mem[_383]]) + 1 > test266151307():
                revert with 'NH{q', 65
            mem[64] = _383 + ceil32(return_data.size) + ceil32(32 * mem[_383 + mem[_383]]) + 1
            mem[_383 + ceil32(return_data.size)] = _391
            require _387 + (32 * _391) + 32 <= return_data.size
            mem[_383 + ceil32(return_data.size) + 32 len 32 * _391] = mem[_383 + _387 + 32 len 32 * _391]
            if _391 < 1:
                revert with 'NH{q', 17
            if _391 - 1 >= _391:
                revert with 'NH{q', 50
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] > !mem[(32 * _391 - 1) + _383 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            mem[mem[64]] = (arg3 * ext_call.return_data[0] / ext_call.return_data[0]) + mem[(32 * _391 - 1) + _383 + ceil32(return_data.size) + 32]
        return memory
          from mem[64]
           len 32
    if uint32(call.func_hash) >> 224 != unknown_0xe8dc12ff(?????):
        require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not address(arg1):
            revert with 0, 'Ownable: new owner is the zero address'
        emit OwnershipTransferred(owner, address(arg1));
        owner = address(arg1)
    require not msg.value
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[0] = address(arg1)
    mem[32] = 1
    mem[128] = bool(sub_bee53c88[address(arg1)].field_0)
    mem[160] = bool(sub_bee53c88[address(arg1)].field_8)
    mem[192] = sub_bee53c88[address(arg1)].field_16
    if not sub_bee53c88[address(arg1)].field_16:
        return 0
    mem[228] = msg.sender
    mem[260] = this.address
    mem[292] = arg3
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg1))
    call address(arg1).0x853828b6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_bee53c88[address(arg1)].field_8:
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        if not sub_bee53c88[address(arg1)].field_0:
            call sub_bee53c88[address(arg1)].field_16.deposit() with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        staticcall sub_bee53c88[address(arg1)].field_16.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        call sub_bee53c88[address(arg1)].field_16.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return sub_bee53c88[address(arg1)].field_16
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 228] = sub_bee53c88[address(arg1)].field_16
    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    call sub_bee53c88[address(arg1)].field_16.0xa9059cbb with:
         gas gas_remaining wei
        args sub_bee53c88[address(arg1)].field_0, ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    call sub_bee53c88[address(arg1)].field_16.burn(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[(4 * ceil32(return_data.size)) + 224 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_bee53c88[address(arg1)].field_16)
    if ext_call.return_data[12 len 20] == address(arg2):
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 224] = 0xd33c402100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 260] = address(arg2)
        require ext_code.size(address(arg5))
        staticcall address(arg5).0xd33c4021 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 224
        require return_data.size >= 64
        _146 = mem[(8 * ceil32(return_data.size)) + 224 len 4], address(ext_call.return_data[0]) << 64
        require mem[(8 * ceil32(return_data.size)) + 224 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 224 > (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 255
        _154 = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]
        if mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]) + 225 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]) + 225
        mem[(10 * ceil32(return_data.size)) + 224] = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]
        require 0, address(arg2) << 64 + (32 * _154) + 32 <= return_data.size
        s = (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 256
        t = (10 * ceil32(return_data.size)) + 256
        idx = 0
        while idx < _154:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _290 = mem[_286]
        require mem[_286] == mem[_286 + 12 len 20]
        mem[mem[64] + 4] = address(_146)
        mem[mem[64] + 36] = 0
        require ext_code.size(address(_290))
        call address(_290).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_146), 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == bool(mem[_302])
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _314 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _316 = mem[_314]
        require mem[_314] == mem[_314 + 12 len 20]
        mem[mem[64] + 4] = address(_146)
        mem[mem[64] + 36] = ext_call.return_data[0]
        require ext_code.size(address(_316))
        call address(_316).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_146), ext_call.return_data[0]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_330] == bool(mem[_330])
        if 600 > !block.timestamp:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = _154
        idx = 0
        s = (10 * ceil32(return_data.size)) + 256
        t = mem[64] + 196
        while idx < _154:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 600
        require ext_code.size(address(_146))
        call address(_146).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, Array(len=_154, data=mem[mem[64] + 196 len 32 * _154]), address(this.address), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _386 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _390 = mem[_386]
        require mem[_386] <= test266151307()
        require _386 + return_data.size > _386 + mem[_386] + 31
        _394 = mem[_386 + mem[_386]]
        if mem[_386 + mem[_386]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_386 + mem[_386]]) + 1 < 0 or _386 + ceil32(return_data.size) + ceil32(32 * mem[_386 + mem[_386]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _386 + ceil32(return_data.size) + ceil32(32 * mem[_386 + mem[_386]]) + 1
        mem[_386 + ceil32(return_data.size)] = _394
        require _390 + (32 * _394) + 32 <= return_data.size
        mem[_386 + ceil32(return_data.size) + 32 len 32 * _394] = mem[_386 + _390 + 32 len 32 * _394]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _446 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _450 = mem[_446]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _450
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), _450
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _456 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_456] == bool(mem[_456])
    else:
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(8 * ceil32(return_data.size)) + 224] = 0xd33c402100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 228] = address(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 260] = address(arg2)
        require ext_code.size(address(arg5))
        staticcall address(arg5).0xd33c4021 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 224
        require return_data.size >= 64
        _145 = mem[(8 * ceil32(return_data.size)) + 224 len 4], address(ext_call.return_data[0]) << 64
        require mem[(8 * ceil32(return_data.size)) + 224 len 4], address(ext_call.return_data[0]) << 64 == Mask(96, 0, ext_call.return_data[0]) << 64
        require 0, address(arg2) << 64 <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 224 > (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 255
        _153 = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]
        if mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]) + 225 > test266151307():
            revert with 'NH{q', 65
        mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]) + 225
        mem[(10 * ceil32(return_data.size)) + 224] = mem[(8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 224]
        require 0, address(arg2) << 64 + (32 * _153) + 32 <= return_data.size
        s = (8 * ceil32(return_data.size)) + 0, address(arg2) << 64 + 256
        t = (10 * ceil32(return_data.size)) + 256
        idx = 0
        while idx < _153:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _285 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _289 = mem[_285]
        require mem[_285] == mem[_285 + 12 len 20]
        mem[mem[64] + 4] = address(_145)
        mem[mem[64] + 36] = 0
        require ext_code.size(address(_289))
        call address(_289).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_145), 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_301] == bool(mem[_301])
        require ext_code.size(sub_bee53c88[address(arg1)].field_16)
        staticcall sub_bee53c88[address(arg1)].field_16.token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _315 = mem[_313]
        require mem[_313] == mem[_313 + 12 len 20]
        mem[mem[64] + 4] = address(_145)
        mem[mem[64] + 36] = ext_call.return_data[32]
        require ext_code.size(address(_315))
        call address(_315).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(_145), ext_call.return_data[32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _329 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_329] == bool(mem[_329])
        if 600 > !block.timestamp:
            revert with 'NH{q', 17
        _337 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[32]
        mem[mem[64] + 36] = 1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = _153
        idx = 0
        s = (10 * ceil32(return_data.size)) + 256
        t = mem[64] + 196
        while idx < _153:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_337 + 100] = this.address
        mem[_337 + 132] = block.timestamp + 600
        require ext_code.size(address(_145))
        call address(_145).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _337 + (32 * _153) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _389 = mem[_385]
        require mem[_385] <= test266151307()
        require _385 + return_data.size > _385 + mem[_385] + 31
        _393 = mem[_385 + mem[_385]]
        if mem[_385 + mem[_385]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[_385 + mem[_385]]) + 1 < 0 or _385 + ceil32(return_data.size) + ceil32(32 * mem[_385 + mem[_385]]) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _385 + ceil32(return_data.size) + ceil32(32 * mem[_385 + mem[_385]]) + 1
        mem[_385 + ceil32(return_data.size)] = _393
        require _389 + (32 * _393) + 32 <= return_data.size
        mem[_385 + ceil32(return_data.size) + 32 len 32 * _393] = mem[_385 + _389 + 32 len 32 * _393]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _445 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _449 = mem[_445]
        mem[mem[64] + 4] = address(arg4)
        mem[mem[64] + 36] = _449
        require ext_code.size(address(arg2))
        call address(arg2).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg4), _449
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_455] == bool(mem[_455])
    return address(arg2)
}



}
