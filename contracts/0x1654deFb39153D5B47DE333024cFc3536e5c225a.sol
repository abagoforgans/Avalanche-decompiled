contract main {




// =====================  Runtime code  =====================


const warmupPeriod = ext_call.return_data[0]


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

function sub_72ba0ebb(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
    call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.forfeit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
    staticcall 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = 0x3fb7931f7bfa9f318fbf2346f568802a76531774
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
    call 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x3fb7931f7bfa9f318fbf2346f568802a76531774, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
    call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
    staticcall 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = 0xb72ab6f7177bbb41efcc17d817778d77460259f1
    mem[(4 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(4 * ceil32(return_data.size)) + 196] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
    call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(6 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 228] = 0
    mem[(6 * ceil32(return_data.size)) + 260] = 160
    mem[(6 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 388
    while idx < mem[(4 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    mem[(6 * ceil32(return_data.size)) + 324] = 3 * 10^10
    require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
    call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _44 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _45 = mem[_44]
    require mem[_44] <= test266151307()
    require _44 + mem[_44] + 31 < _44 + return_data.size
    _46 = mem[_44 + mem[_44]]
    if mem[_44 + mem[_44]] > test266151307():
        revert with 'NH{q', 65
    if _44 + ceil32(return_data.size) + floor32(mem[_44 + mem[_44]]) + 1 > test266151307() or floor32(mem[_44 + mem[_44]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _44 + ceil32(return_data.size) + floor32(mem[_44 + mem[_44]]) + 1
    mem[_44 + ceil32(return_data.size)] = _46
    require _45 + (32 * _46) + 32 <= return_data.size
    idx = 0
    s = _44 + _45 + 32
    t = _44 + ceil32(return_data.size) + 32
    while idx < _46:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    Mask(96, 0, stor1.field_160) = 0
    require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
    call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.epoch() with:
         gas gas_remaining wei
    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _59 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 128
    require mem[_59] == mem[_59]
    require mem[_59 + 32] == mem[_59 + 32]
    require mem[_59 + 64] == mem[_59 + 64]
    require mem[_59 + 96] == mem[_59 + 96]
    uint128(stor1.field_0) = mem[_59 + 112 len 16]
}

function sub_792e9e61(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == Mask(192, 0, arg1)
    require arg2 == uint32(arg2)
    require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
    staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
    staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.getReserves() with:
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
    if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
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
    require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
    staticcall 0x3fb7931f7bfa9f318fbf2346f568802a76531774.0xdeac361a with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 1:
        revert with 0, 'w'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
    staticcall 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if uint8(stor1.field_160):
        if ext_call.return_data[0] <= 0:
            revert with 0, 'd'
        if block.timestamp < uint128(stor1.field_0):
            revert with 0, '1e'
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.rebase() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
        staticcall 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 100] = 0x3fb7931f7bfa9f318fbf2346f568802a76531774
        mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(0x28f930fb6a2fbba4667ef5394dee96e24520ca34)
        call 0x28f930fb6a2fbba4667ef5394dee96e24520ca34.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x3fb7931f7bfa9f318fbf2346f568802a76531774, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 132] = 0
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
        staticcall 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 2
        mem[(7 * ceil32(return_data.size)) + 128] = 0xb72ab6f7177bbb41efcc17d817778d77460259f1
        mem[(7 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(7 * ceil32(return_data.size)) + 196] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
        mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
        require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
        call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27, ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(8 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 228] = 0
        mem[(8 * ceil32(return_data.size)) + 260] = 160
        mem[(8 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (7 * ceil32(return_data.size)) + 128
        t = (8 * ceil32(return_data.size)) + 388
        while idx < mem[(7 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 292] = this.address
        mem[(8 * ceil32(return_data.size)) + 324] = 3 * 10^10
        require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
        call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _78 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _79 = mem[_78]
        require mem[_78] <= test266151307()
        require _78 + mem[_78] + 31 < _78 + return_data.size
        _80 = mem[_78 + mem[_78]]
        if mem[_78 + mem[_78]] > test266151307():
            revert with 'NH{q', 65
        if _78 + ceil32(return_data.size) + floor32(mem[_78 + mem[_78]]) + 1 > test266151307() or floor32(mem[_78 + mem[_78]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _78 + ceil32(return_data.size) + floor32(mem[_78 + mem[_78]]) + 1
        mem[_78 + ceil32(return_data.size)] = _80
        require _79 + (32 * _80) + 32 <= return_data.size
        idx = 0
        s = _78 + _79 + 32
        t = _78 + ceil32(return_data.size) + 32
        while idx < _80:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        Mask(96, 0, stor1.field_160) = 0
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.epoch() with:
             gas gas_remaining wei
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_147] == mem[_147]
        require mem[_147 + 32] == mem[_147 + 32]
        require mem[_147 + 64] == mem[_147 + 64]
        require mem[_147 + 96] == mem[_147 + 96]
        uint128(stor1.field_0) = mem[_147 + 112 len 16]
    else:
        if ext_call.return_data[0] >= Mask(112, 0, stor2.field_0):
            revert with 0, 'a'
        if block.timestamp >= uint128(stor1.field_0):
            revert with 0, '1b'
        if uint128(stor1.field_0) < uint32(stor1.field_128):
            revert with 'NH{q', 17
        if block.timestamp < uint128(uint128(stor1.field_0) - uint32(stor1.field_128)):
            revert with 0, '1c'
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(4 * ceil32(return_data.size)) + 160] = 0xb72ab6f7177bbb41efcc17d817778d77460259f1
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.token0() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(6 * ceil32(return_data.size)) + 192] = 0x902f1ac00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7)
        staticcall 0x288ea998bab3e0cbe7dec38a7f383ec2af1364f7.getReserves() with:
                gas gas_remaining wei
               args mem[(6 * ceil32(return_data.size)) + 196 len 8 * ceil32(return_data.size)]
        mem[(6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
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
        if address(ext_call.return_data[0]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
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
            mem[(8 * ceil32(return_data.size)) + 196] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
            mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
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
            s = (4 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 388
            while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = 3 * 10^10
            require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
            call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _152 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _154 = mem[_152]
            require mem[_152] <= test266151307()
            require _152 + mem[_152] + 31 < _152 + return_data.size
            _156 = mem[_152 + mem[_152]]
            if mem[_152 + mem[_152]] > test266151307():
                revert with 'NH{q', 65
            if _152 + ceil32(return_data.size) + floor32(mem[_152 + mem[_152]]) + 1 > test266151307() or floor32(mem[_152 + mem[_152]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _152 + ceil32(return_data.size) + floor32(mem[_152 + mem[_152]]) + 1
            mem[_152 + ceil32(return_data.size)] = _156
            require _154 + (32 * _156) + 32 <= return_data.size
            idx = 0
            s = _152 + _154 + 32
            t = _152 + ceil32(return_data.size) + 32
            while idx < _156:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
            staticcall 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _200 = mem[_198]
            require mem[_198] == mem[_198]
            mem[mem[64] + 4] = 0x3fb7931f7bfa9f318fbf2346f568802a76531774
            mem[mem[64] + 36] = _200
            require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
            call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3fb7931f7bfa9f318fbf2346f568802a76531774, _200
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_206] == bool(mem[_206])
            mem[mem[64] + 4] = _200
            mem[mem[64] + 36] = this.address
            require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
            call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args _200, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_214] == bool(mem[_214])
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
            mem[(8 * ceil32(return_data.size)) + 196] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
            mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 196 len (13 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (8 * ceil32(return_data.size)) + 192
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
            s = (4 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 388
            while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = 3 * 10^10
            require ext_code.size(0xa52abe4676dbfd04df42ef7755f01a3c41f28d27)
            call 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + -mem[64] + 448]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _153 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _155 = mem[_153]
            require mem[_153] <= test266151307()
            require _153 + mem[_153] + 31 < _153 + return_data.size
            _157 = mem[_153 + mem[_153]]
            if mem[_153 + mem[_153]] > test266151307():
                revert with 'NH{q', 65
            if _153 + ceil32(return_data.size) + floor32(mem[_153 + mem[_153]]) + 1 > test266151307() or floor32(mem[_153 + mem[_153]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _153 + ceil32(return_data.size) + floor32(mem[_153 + mem[_153]]) + 1
            mem[_153 + ceil32(return_data.size)] = _157
            require _155 + (32 * _157) + 32 <= return_data.size
            idx = 0
            s = _153 + _155 + 32
            t = _153 + ceil32(return_data.size) + 32
            while idx < _157:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
            staticcall 0xb72ab6f7177bbb41efcc17d817778d77460259f1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _201 = mem[_199]
            require mem[_199] == mem[_199]
            mem[mem[64] + 4] = 0x3fb7931f7bfa9f318fbf2346f568802a76531774
            mem[mem[64] + 36] = _201
            require ext_code.size(0xb72ab6f7177bbb41efcc17d817778d77460259f1)
            call 0xb72ab6f7177bbb41efcc17d817778d77460259f1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3fb7931f7bfa9f318fbf2346f568802a76531774, _201
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_207] == bool(mem[_207])
            mem[mem[64] + 4] = _201
            mem[mem[64] + 36] = this.address
            require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
            call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.stake(uint256 arg1, address arg2) with:
                 gas gas_remaining wei
                args _201, this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_215] == bool(mem[_215])
        require ext_code.size(0x3fb7931f7bfa9f318fbf2346f568802a76531774)
        call 0x3fb7931f7bfa9f318fbf2346f568802a76531774.claim(address arg1) with:
             gas gas_remaining wei
            args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        Mask(96, 0, stor1.field_160) = 1
}



}
