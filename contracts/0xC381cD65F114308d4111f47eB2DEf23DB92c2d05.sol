contract main {




// =====================  Runtime code  =====================


address owner;
address sub_985a64beAddress;
address sub_9c8b4066Address;
address sub_1abec10dAddress;
address sub_ae3beb48Address;
address sub_5af57c55Address;
address calculatorAddress;
address sub_6c6c87adAddress;
address sub_6fe1dfafAddress;
address sub_055fcefbAddress;
address sub_b4a481aeAddress;

function sub_055fcefb(?) payable {
    return sub_055fcefbAddress
}

function sub_1abec10d(?) payable {
    return sub_1abec10dAddress
}

function sub_5af57c55(?) payable {
    return sub_5af57c55Address
}

function sub_6c6c87ad(?) payable {
    return sub_6c6c87adAddress
}

function sub_6fe1dfaf(?) payable {
    return sub_6fe1dfafAddress
}

function owner() payable {
    return owner
}

function sub_985a64be(?) payable {
    return sub_985a64beAddress
}

function sub_9c8b4066(?) payable {
    return sub_9c8b4066Address
}

function sub_ae3beb48(?) payable {
    return sub_ae3beb48Address
}

function sub_b4a481ae(?) payable {
    return sub_b4a481aeAddress
}

function calculator() payable {
    return calculatorAddress
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

function sub_6a1c7dae(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6c6c87adAddress = address(arg1)
    sub_6fe1dfafAddress = address(arg2)
    sub_055fcefbAddress = address(arg3)
    sub_b4a481aeAddress = address(arg4)
}

function sub_f440256d(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_985a64beAddress = address(arg3)
    sub_9c8b4066Address = address(arg4)
    sub_1abec10dAddress = address(arg5)
    sub_ae3beb48Address = address(arg6)
    sub_5af57c55Address = address(arg1)
    calculatorAddress = address(arg2)
}

function sub_67e737f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_5af57c55Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_ae3beb48Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_985a64beAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_9c8b4066Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_1abec10dAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_6c6c87adAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_6fe1dfafAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_055fcefbAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_b4a481aeAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_ae3beb48Address.0x99e3b18d with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0x9c3ce39c with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0xba0a39fd with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0x7b965823 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0xca3c17d0 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0xcf12b027 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0x3a01309a with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall calculatorAddress.0x79c948d1 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_ae3beb48Address.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_985a64beAddress.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_9c8b4066Address.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_1abec10dAddress.totalNodesCreated() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getAllNodes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0xea85b1e500000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    staticcall sub_ae3beb48Address.0xea85b1e5 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require (32 * _5) + _4 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _5)] = mem[_4 + 128 len ceil32(32 * _5)]
    mem[mem[64]] = 0x7a8f2f7d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    staticcall sub_985a64beAddress.0x7a8f2f7d with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _42 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _43 = mem[_42]
    require mem[_42] <= test266151307()
    require _42 + mem[_42] + 31 < _42 + return_data.size
    _44 = mem[_42 + mem[_42]]
    if mem[_42 + mem[_42]] > test266151307():
        revert with 0, 65
    if _42 + ceil32(return_data.size) + ceil32(32 * mem[_42 + mem[_42]]) + 1 > test266151307() or ceil32(32 * mem[_42 + mem[_42]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _42 + ceil32(return_data.size) + ceil32(32 * mem[_42 + mem[_42]]) + 1
    mem[_42 + ceil32(return_data.size)] = _44
    require (32 * _44) + _43 + 32 <= return_data.size
    mem[_42 + ceil32(return_data.size) + 32 len ceil32(32 * _44)] = mem[_42 + _43 + 32 len ceil32(32 * _44)]
    mem[mem[64]] = 0x19593c2b00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    staticcall sub_9c8b4066Address.0x19593c2b with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _74 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _75 = mem[_74]
    require mem[_74] <= test266151307()
    require _74 + mem[_74] + 31 < _74 + return_data.size
    _76 = mem[_74 + mem[_74]]
    if mem[_74 + mem[_74]] > test266151307():
        revert with 0, 65
    if _74 + ceil32(return_data.size) + ceil32(32 * mem[_74 + mem[_74]]) + 1 > test266151307() or ceil32(32 * mem[_74 + mem[_74]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _74 + ceil32(return_data.size) + ceil32(32 * mem[_74 + mem[_74]]) + 1
    mem[_74 + ceil32(return_data.size)] = _76
    require (32 * _76) + _75 + 32 <= return_data.size
    mem[_74 + ceil32(return_data.size) + 32 len ceil32(32 * _76)] = mem[_74 + _75 + 32 len ceil32(32 * _76)]
    mem[mem[64]] = 0xa085fa9600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg1
    staticcall sub_1abec10dAddress.0xa085fa96 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _100 = mem[_99]
    require mem[_99] <= test266151307()
    require _99 + mem[_99] + 31 < _99 + return_data.size
    _101 = mem[_99 + mem[_99]]
    if mem[_99 + mem[_99]] > test266151307():
        revert with 0, 65
    if _99 + ceil32(return_data.size) + ceil32(32 * mem[_99 + mem[_99]]) + 1 > test266151307() or ceil32(32 * mem[_99 + mem[_99]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _99 + ceil32(return_data.size) + ceil32(32 * mem[_99 + mem[_99]]) + 1
    mem[_99 + ceil32(return_data.size)] = _101
    require (32 * _101) + _100 + 32 <= return_data.size
    mem[_99 + ceil32(return_data.size) + 32 len ceil32(32 * _101)] = mem[_99 + _100 + 32 len ceil32(32 * _101)]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = _5
    mem[mem[64] + 160 len 32 * _5] = mem[ceil32(return_data.size) + 128 len 32 * _5]
    mem[mem[64] + 32] = (32 * _5) + 160
    mem[mem[64] + (32 * _5) + 160] = _44
    mem[mem[64] + (32 * _5) + 192 len 32 * _44] = mem[_42 + ceil32(return_data.size) + 32 len 32 * _44]
    mem[mem[64] + 64] = (32 * _5) + (32 * _44) + 192
    mem[mem[64] + (32 * _5) + (32 * _44) + 192] = _76
    mem[mem[64] + (32 * _5) + (32 * _44) + 224 len 32 * _76] = mem[_74 + ceil32(return_data.size) + 32 len 32 * _76]
    mem[mem[64] + 96] = (32 * _5) + (32 * _44) + (32 * _76) + 224
    mem[mem[64] + (32 * _5) + (32 * _44) + (32 * _76) + 224] = _101
    mem[mem[64] + (32 * _5) + (32 * _44) + (32 * _76) + 256 len 32 * _101] = mem[_99 + ceil32(return_data.size) + 32 len 32 * _101]
    return Array(len=_5, data=mem[mem[64] + 160 len (32 * _5) + (32 * _44) + 32], _76, mem[mem[64] + (32 * _5) + (32 * _44) + 224 len (32 * _76) + (32 * _101) + 32]), 
           (32 * _5) + 160,
           (32 * _5) + (32 * _44) + 192,
           (32 * _5) + (32 * _44) + (32 * _76) + 224
}



}
