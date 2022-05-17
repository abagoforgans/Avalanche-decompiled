contract main {




// =====================  Runtime code  =====================


uint32 stor0; offset 160
address owner;
uint8 stor1; offset 160
uint32 stor1;
uint32 stor1; offset 128
uint128 stor1; offset 160
uint128 stor1;
uint32 stor2;
uint32 stor2; offset 112
uint128 stor2;

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

function sub_2c3e8ec6(?) payable {
    return uint128(stor1.field_0), 
           uint32(stor1.field_0),
           uint32(stor2.field_0),
           Mask(112, 0, stor2.field_0),
           bool(uint8(stor1.field_160))
}

function sub_0ff618ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint32(stor2.field_112) = uint32(arg1)
}

function sub_cd4ed0da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint32(stor1.field_128) = uint32(arg1)
}

function sub_bf97a111(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint128(stor1.field_0) = uint128(arg1)
}

function sub_5d153779(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, bool(arg1))
}

function sub_1fcb0c9a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(112, 0, arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(112, 0, stor2.field_0) = Mask(112, 0, arg1)
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

function sub_7d4d33cc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c1fd88a8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(ext_call.return_data[0]) == address(arg2):
        return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_87b49e2c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == Mask(192, 0, arg1)
    require arg2 == Mask(112, 0, arg2)
    require arg3 == Mask(112, 0, arg3)
    require arg4 == uint32(arg4)
    if 10000 < uint32(arg4):
        revert with 'NH{q', 17
    if uint32(-uint32(arg4) + 10000) and Mask(192, 0, arg1) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-uint32(arg4) + 10000):
        revert with 'NH{q', 17
    if Mask(112, 0, arg2) and 10000 > test266151307() / Mask(112, 0, arg2):
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * Mask(112, 0, arg2)) > -Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 10000 < uint32(arg4):
        revert with 'NH{q', 17
    if uint32(-uint32(arg4) + 10000) and Mask(192, 0, arg1) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-uint32(arg4) + 10000):
        revert with 'NH{q', 17
    if Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) and Mask(112, 0, arg3) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)):
        revert with 'NH{q', 17
    if not Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, arg2)) + Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1))):
        revert with 'NH{q', 18
    if Mask(112, 0, arg2) > -Mask(192, 0, arg1) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if Mask(112, 0, arg3) < Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) * Mask(112, 0, arg3)) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, arg2)) + Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)))):
        revert with 'NH{q', 17
    if Mask(112, 0, arg2) > -Mask(192, 0, arg1) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if Mask(192, 0, Mask(112, 0, arg2) + Mask(192, 0, arg1)) and Mask(192, 0, Mask(112, 0, arg3) - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) * Mask(112, 0, arg3)) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, arg2)) + Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1))))) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, Mask(112, 0, arg2) + Mask(192, 0, arg1)):
        revert with 'NH{q', 17
    return Mask(192, 0, Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) * Mask(112, 0, arg3)) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, arg2)) + Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1))) << 64, 
           Mask(112, 0, arg2) + Mask(192, 0, arg1) << 144,
           Mask(112, 0, arg3) - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) * Mask(112, 0, arg3)) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, arg2)) + Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)))) << 144,
           Mask(192, 0, Mask(192, 0, Mask(112, 0, arg2) + Mask(192, 0, arg1)) * Mask(192, 0, Mask(112, 0, arg3) - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1)) * Mask(112, 0, arg3)) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, arg2)) + Mask(192, 0, uint32(-uint32(arg4) + 10000) * Mask(192, 0, arg1))))))
}

function sub_792e9e61(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(192, 0, arg1)
    require arg2 == uint32(arg2)
    require ext_code.size(0xaef85b5b06b13b79b17fd684b1f04035570a9ae0)
    staticcall 0xaef85b5b06b13b79b17fd684b1f04035570a9ae0.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xaef85b5b06b13b79b17fd684b1f04035570a9ae0)
    staticcall 0xaef85b5b06b13b79b17fd684b1f04035570a9ae0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 10000 < uint32(arg2):
        revert with 'NH{q', 17
    if uint32(-uint32(arg2) + 10000) and Mask(192, 0, arg1) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-uint32(arg2) + 10000):
        revert with 'NH{q', 17
    if address(ext_call.return_data[0]) == 0x130966628846bfd36ff31a822705796e8cb8c18d:
        if ext_call.return_data[18 len 14] and 10000 > test266151307() / ext_call.return_data[18 len 14]:
            revert with 'NH{q', 17
        if Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) > -Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 10000 < uint32(arg2):
            revert with 'NH{q', 17
        if uint32(-uint32(arg2) + 10000) and Mask(192, 0, arg1) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-uint32(arg2) + 10000):
            revert with 'NH{q', 17
        if Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) and ext_call.return_data[50 len 14] > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)):
            revert with 'NH{q', 17
        if not Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1))):
            revert with 'NH{q', 18
        if ext_call.return_data[18 len 14] > -Mask(192, 0, arg1) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if ext_call.return_data[50 len 14] < Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) * ext_call.return_data[50 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)))):
            revert with 'NH{q', 17
        if ext_call.return_data[18 len 14] > -Mask(192, 0, arg1) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if Mask(192, 0, ext_call.return_data[18 len 14] + Mask(192, 0, arg1)) and Mask(192, 0, ext_call.return_data[50 len 14] - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) * ext_call.return_data[50 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1))))) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, ext_call.return_data[18 len 14] + Mask(192, 0, arg1)):
            revert with 'NH{q', 17
        return Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) * ext_call.return_data[50 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1))))
    if ext_call.return_data[50 len 14] and 10000 > test266151307() / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) > -Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if 10000 < uint32(arg2):
        revert with 'NH{q', 17
    if uint32(-uint32(arg2) + 10000) and Mask(192, 0, arg1) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-uint32(arg2) + 10000):
        revert with 'NH{q', 17
    if Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) and ext_call.return_data[18 len 14] > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)):
        revert with 'NH{q', 17
    if not Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1))):
        revert with 'NH{q', 18
    if ext_call.return_data[50 len 14] > -Mask(192, 0, arg1) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if ext_call.return_data[18 len 14] < Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) * ext_call.return_data[18 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)))):
        revert with 'NH{q', 17
    if ext_call.return_data[50 len 14] > -Mask(192, 0, arg1) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    if Mask(192, 0, ext_call.return_data[50 len 14] + Mask(192, 0, arg1)) and Mask(192, 0, ext_call.return_data[18 len 14] - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) * ext_call.return_data[18 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1))))) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, ext_call.return_data[50 len 14] + Mask(192, 0, arg1)):
        revert with 'NH{q', 17
    return Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1)) * ext_call.return_data[18 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-uint32(arg2) + 10000) * Mask(192, 0, arg1))))
}

function sub_8fdadfc1(?) payable {
    mem[100] = this.address
    require ext_code.size(0x5c43b500063691f8c893c7425648b3dd3e1ece34)
    staticcall 0x5c43b500063691f8c893c7425648b3dd3e1ece34.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if uint8(stor1.field_160):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'd'
        if block.timestamp < uint128(stor1.field_0):
            revert with 0, '1e'
        require ext_code.size(0x39af1eb019750adc3ea89d80080079f64d5432db)
        call 0x39af1eb019750adc3ea89d80080079f64d5432db.rebase() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x5c43b500063691f8c893c7425648b3dd3e1ece34)
        staticcall 0x5c43b500063691f8c893c7425648b3dd3e1ece34.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 100] = 0x39af1eb019750adc3ea89d80080079f64d5432db
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0x5c43b500063691f8c893c7425648b3dd3e1ece34)
        call 0x5c43b500063691f8c893c7425648b3dd3e1ece34.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x39af1eb019750adc3ea89d80080079f64d5432db, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = 0
        require ext_code.size(0x39af1eb019750adc3ea89d80080079f64d5432db)
        call 0x39af1eb019750adc3ea89d80080079f64d5432db.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1)
        staticcall 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 2
        mem[(6 * ceil32(return_data.size)) + 128] = 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1
        mem[(6 * ceil32(return_data.size)) + 160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[(6 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
        mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        require ext_code.size(0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1)
        call 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (7 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(7 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 228] = 0
        mem[(7 * ceil32(return_data.size)) + 260] = 160
        mem[(7 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (6 * ceil32(return_data.size)) + 128
        t = (7 * ceil32(return_data.size)) + 388
        while idx < mem[(6 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(7 * ceil32(return_data.size)) + 292] = this.address
        mem[(7 * ceil32(return_data.size)) + 324] = 3 * 10^10
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _83 = mem[_80]
        require mem[_80] <= test266151307()
        require _80 + mem[_80] + 31 < _80 + return_data.size
        _84 = mem[_80 + mem[_80]]
        if mem[_80 + mem[_80]] > test266151307():
            revert with 'NH{q', 65
        if _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1 > test266151307() or floor32(mem[_80 + mem[_80]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1
        mem[_80 + ceil32(return_data.size)] = _84
        require _83 + (32 * _84) + 32 <= return_data.size
        idx = 0
        s = _80 + _83 + 32
        t = _80 + ceil32(return_data.size) + 32
        while idx < _84:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        Mask(96, 0, stor1.field_160) = 0
        require ext_code.size(0x39af1eb019750adc3ea89d80080079f64d5432db)
        call 0x39af1eb019750adc3ea89d80080079f64d5432db.epoch() with:
             gas gas_remaining wei
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_145] == mem[_145]
        require mem[_145 + 32] == mem[_145 + 32]
        require mem[_145 + 64] == mem[_145 + 64]
        require mem[_145 + 96] == mem[_145 + 96]
        uint128(stor1.field_0) = mem[_145 + 112 len 16]
    else:
        if ext_call.return_data[0] >= Mask(112, 0, stor2.field_0):
            revert with 0, 'a'
        if block.timestamp >= uint128(stor1.field_0):
            revert with 0, '1b'
        if uint128(stor1.field_0) < uint32(stor1.field_128):
            revert with 'NH{q', 17
        if block.timestamp < uint128(uint128(stor1.field_0) - uint32(stor1.field_128)):
            revert with 0, '1c'
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
        staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[(2 * ceil32(return_data.size)) + 160] = 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1
        require ext_code.size(0xaef85b5b06b13b79b17fd684b1f04035570a9ae0)
        staticcall 0xaef85b5b06b13b79b17fd684b1f04035570a9ae0.token0() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 192] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0xaef85b5b06b13b79b17fd684b1f04035570a9ae0)
        staticcall 0xaef85b5b06b13b79b17fd684b1f04035570a9ae0.getReserves() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 196 len 5 * ceil32(return_data.size)]
        mem[(4 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if 10000 < stor0:
            revert with 'NH{q', 17
        if uint32(-stor0 + 10000) and Mask(192, 0, ext_call.return_data[0]) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-stor0 + 10000):
            revert with 'NH{q', 17
        if address(ext_call.return_data[0]) == 0x130966628846bfd36ff31a822705796e8cb8c18d:
            if ext_call.return_data[18 len 14] and 10000 > test266151307() / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) > -Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 10000 < stor0:
                revert with 'NH{q', 17
            if uint32(-stor0 + 10000) and Mask(192, 0, ext_call.return_data[0]) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-stor0 + 10000):
                revert with 'NH{q', 17
            if Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) and ext_call.return_data[50 len 14] > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0]))):
                revert with 'NH{q', 18
            if ext_call.return_data[18 len 14] > -Mask(192, 0, ext_call.return_data[0]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] > -Mask(192, 0, ext_call.return_data[0]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(192, 0, ext_call.return_data[18 len 14] + Mask(192, 0, ext_call.return_data[0])) and Mask(192, 0, ext_call.return_data[50 len 14] - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[18 len 14]) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0]))))) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, ext_call.return_data[18 len 14] + Mask(192, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 64]
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10000 < uint32(stor2.field_112):
                revert with 'NH{q', 17
            if Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))) and uint32(-uint32(stor2.field_112) + 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))):
                revert with 'NH{q', 17
            mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 228] = Mask(192, 0, Mask(192, 0, Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))) * uint32(-uint32(stor2.field_112) + 10000)) / 10000)
            mem[(8 * ceil32(return_data.size)) + 260] = 160
            mem[(8 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = 3 * 10^10
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(192, 0, Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[0])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))) * uint32(-uint32(stor2.field_112) + 10000)) / 10000 << 64, 160, address(this.address), 3 * 10^10, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _152 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _154 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = _154
            require _152 + (32 * _154) + 32 <= return_data.size
            idx = 0
            s = (8 * ceil32(return_data.size)) + _152 + 224
            t = (10 * ceil32(return_data.size)) + 224
            while idx < _154:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1)
            staticcall 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _198 = mem[_196]
            require mem[_196] == mem[_196]
            mem[mem[64] + 4] = 0x39af1eb019750adc3ea89d80080079f64d5432db
            mem[mem[64] + 36] = _198
            require ext_code.size(0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1)
            call 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x39af1eb019750adc3ea89d80080079f64d5432db, _198
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_204] == bool(mem[_204])
            mem[mem[64] + 4] = _198
            mem[mem[64] + 36] = this.address
            require ext_code.size(0x39af1eb019750adc3ea89d80080079f64d5432db)
            call 0x39af1eb019750adc3ea89d80080079f64d5432db.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args _198, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_212] == bool(mem[_212])
        else:
            if ext_call.return_data[50 len 14] and 10000 > test266151307() / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) > -Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if 10000 < stor0:
                revert with 'NH{q', 17
            if uint32(-stor0 + 10000) and Mask(192, 0, ext_call.return_data[0]) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / uint32(-stor0 + 10000):
                revert with 'NH{q', 17
            if Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) and ext_call.return_data[18 len 14] > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0]))):
                revert with 'NH{q', 18
            if ext_call.return_data[50 len 14] > -Mask(192, 0, ext_call.return_data[0]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * ext_call.return_data[18 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] > -Mask(192, 0, ext_call.return_data[0]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if Mask(192, 0, ext_call.return_data[50 len 14] + Mask(192, 0, ext_call.return_data[0])) and Mask(192, 0, ext_call.return_data[18 len 14] - Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * ext_call.return_data[18 len 14]) / Mask(192, 0, Mask(112, 0, 10000 * ext_call.return_data[50 len 14]) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0]))))) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, ext_call.return_data[50 len 14] + Mask(192, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 196] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
            mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (7 * ceil32(return_data.size)) + 64]
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 10000 < uint32(stor2.field_112):
                revert with 'NH{q', 17
            if Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))) and uint32(-uint32(stor2.field_112) + 10000) > 0xffffffffffffffffffffffffffffffffffffffffffffffff / Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))):
                revert with 'NH{q', 17
            mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 228] = Mask(192, 0, Mask(192, 0, Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))) * uint32(-uint32(stor2.field_112) + 10000)) / 10000)
            mem[(8 * ceil32(return_data.size)) + 260] = 160
            mem[(8 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = 3 * 10^10
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(192, 0, Mask(192, 0, Mask(192, 0, Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[0])) / Mask(192, 0, Mask(112, 0, 10000 * Mask(112, 0, ext_call.return_data[32])) + Mask(192, 0, uint32(-stor0 + 10000) * Mask(192, 0, ext_call.return_data[0])))) * uint32(-uint32(stor2.field_112) + 10000)) / 10000 << 64, 160, address(this.address), 3 * 10^10, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _153 = mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _155 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 'NH{q', 65
            if (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (10 * ceil32(return_data.size)) + floor32(mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = _155
            require _153 + (32 * _155) + 32 <= return_data.size
            idx = 0
            s = (8 * ceil32(return_data.size)) + _153 + 224
            t = (10 * ceil32(return_data.size)) + 224
            while idx < _155:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1)
            staticcall 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _199 = mem[_197]
            require mem[_197] == mem[_197]
            mem[mem[64] + 4] = 0x39af1eb019750adc3ea89d80080079f64d5432db
            mem[mem[64] + 36] = _199
            require ext_code.size(0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1)
            call 0xb80323c7aa915cb960b19b5cca1d88a2132f7bd1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x39af1eb019750adc3ea89d80080079f64d5432db, _199
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_205] == bool(mem[_205])
            mem[mem[64] + 4] = _199
            mem[mem[64] + 36] = this.address
            require ext_code.size(0x39af1eb019750adc3ea89d80080079f64d5432db)
            call 0x39af1eb019750adc3ea89d80080079f64d5432db.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args _199, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_213] == bool(mem[_213])
        require ext_code.size(0x39af1eb019750adc3ea89d80080079f64d5432db)
        call 0x39af1eb019750adc3ea89d80080079f64d5432db.claim(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor1.field_160) = 1
}



}
