contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_35469fb0;
mapping of uint256 stor2;
array of struct sub_a47d9f02;
mapping of uint256 stor4;
array of struct sub_7c942a04;
mapping of uint256 stor6;
array of struct sub_49c12994;
array of struct sub_14067f53;
address sub_39934a1eAddress;

function sub_14067f53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_14067f53[address(arg1)].field_0
}

function sub_35469fb0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_35469fb0.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= sub_35469fb0.length:
        revert with 'NH{q', 50
    return sub_35469fb0[arg1].field_0
}

function sub_39934a1e(?) payable {
    return sub_39934a1eAddress
}

function sub_40062f82(?) payable {
    return sub_35469fb0.length
}

function sub_49c12994(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_49c12994[address(arg1)].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= sub_49c12994[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_49c12994[address(arg1)][arg2].field_0
}

function sub_4e74734f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_14067f53[address(arg1)].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= sub_14067f53[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_14067f53[address(arg1)][arg2].field_0
}

function sub_7c942a04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_7c942a04.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= sub_7c942a04.length:
        revert with 'NH{q', 50
    return sub_7c942a04[arg1].field_0
}

function owner() payable {
    return owner
}

function sub_a47d9f02(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_a47d9f02.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= sub_a47d9f02.length:
        revert with 'NH{q', 50
    return sub_a47d9f02[arg1].field_0
}

function sub_e35841f2(?) payable {
    return sub_a47d9f02.length
}

function sub_f9cd61a0(?) payable {
    return sub_7c942a04.length
}

function sub_faa27b98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_49c12994[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function sub_cdf12729(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return not not stor2[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f66365f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(msg.sender)]:
        revert with 0, 'FORBIDDEN'
    if not sub_49c12994[address(arg1)][1][address(msg.sender)].field_0:
        sub_49c12994[address(arg1)].field_0++
        sub_49c12994[address(arg1)][sub_49c12994[address(arg1)].field_0].field_0 = msg.sender
        sub_49c12994[address(arg1)][sub_49c12994[address(arg1)].field_0].field_160 = 0
        sub_49c12994[address(arg1)][1][address(msg.sender)].field_0 = sub_49c12994[address(arg1)].field_0
    emit 0xcaa007a3: msg.sender, address(arg1)
}

function sub_73d06d14(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if not stor4[address(arg1)]:
            sub_a47d9f02.length++
            sub_a47d9f02[sub_a47d9f02.length].field_0 = address(arg1)
            sub_a47d9f02[sub_a47d9f02.length].field_160 = 0
            stor4[address(arg1)] = sub_a47d9f02.length
    else:
        if stor4[address(arg1)]:
            if stor4[address(arg1)] < 1:
                revert with 'NH{q', 17
            if sub_a47d9f02.length < 1:
                revert with 'NH{q', 17
            if sub_a47d9f02.length - 1 >= sub_a47d9f02.length:
                revert with 'NH{q', 50
            if stor4[address(arg1)] - 1 >= sub_a47d9f02.length:
                revert with 'NH{q', 50
            sub_a47d9f02[stor4[address(arg1)]].field_0 = sub_a47d9f02[sub_a47d9f02.length].field_0
            if stor4[address(arg1)] - 1 > -2:
                revert with 'NH{q', 17
            stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
            if not sub_a47d9f02.length:
                revert with 'NH{q', 49
            sub_a47d9f02[sub_a47d9f02.length].field_0 = 0
            sub_a47d9f02.length--
            stor4[address(arg1)] = 0
}

function sub_f50dc145(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if not stor6[address(arg1)]:
            sub_7c942a04.length++
            sub_7c942a04[sub_7c942a04.length].field_0 = address(arg1)
            sub_7c942a04[sub_7c942a04.length].field_160 = 0
            stor6[address(arg1)] = sub_7c942a04.length
    else:
        if stor6[address(arg1)]:
            if stor6[address(arg1)] < 1:
                revert with 'NH{q', 17
            if sub_7c942a04.length < 1:
                revert with 'NH{q', 17
            if sub_7c942a04.length - 1 >= sub_7c942a04.length:
                revert with 'NH{q', 50
            if stor6[address(arg1)] - 1 >= sub_7c942a04.length:
                revert with 'NH{q', 50
            sub_7c942a04[stor6[address(arg1)]].field_0 = sub_7c942a04[sub_7c942a04.length].field_0
            if stor6[address(arg1)] - 1 > -2:
                revert with 'NH{q', 17
            stor6[stor5[stor5.length].field_0] = stor6[address(arg1)]
            if not sub_7c942a04.length:
                revert with 'NH{q', 49
            sub_7c942a04[sub_7c942a04.length].field_0 = 0
            sub_7c942a04.length--
            stor6[address(arg1)] = 0
}

function sub_b88e8b2b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor2[address(msg.sender)]:
        revert with 0, 'FORBIDDEN'
    if sub_49c12994[address(arg1)][1][address(msg.sender)].field_0:
        if sub_49c12994[address(arg1)][1][address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_49c12994[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_49c12994[address(arg1)].field_0 - 1 >= sub_49c12994[address(arg1)].field_0:
            revert with 'NH{q', 50
        if sub_49c12994[address(arg1)][1][address(msg.sender)].field_0 - 1 >= sub_49c12994[address(arg1)].field_0:
            revert with 'NH{q', 50
        sub_49c12994[address(arg1)][sub_49c12994[address(arg1)][1][address(msg.sender)].field_0].field_0 = sub_49c12994[address(arg1)][sub_49c12994[address(arg1)].field_0].field_0
        if sub_49c12994[address(arg1)][1][address(msg.sender)].field_0 - 1 > -2:
            revert with 'NH{q', 17
        sub_49c12994[address(arg1)][1][sub_49c12994[address(arg1)][sub_49c12994[address(arg1)].field_0].field_0].field_0 = sub_49c12994[address(arg1)][1][address(msg.sender)].field_0
        if not sub_49c12994[address(arg1)].field_0:
            revert with 'NH{q', 49
        sub_49c12994[address(arg1)][sub_49c12994[address(arg1)].field_0].field_0 = 0
        sub_49c12994[address(arg1)].field_0--
        sub_49c12994[address(arg1)][1][address(msg.sender)].field_0 = 0
    emit 0x56291ea7: msg.sender, address(arg1)
}

function sub_d95f232f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor4[address(msg.sender)]:
        revert with 0, 'FORBIDDEN'
    if not stor2[address(arg1)]:
        sub_35469fb0.length++
        sub_35469fb0[sub_35469fb0.length].field_0 = address(arg1)
        sub_35469fb0[sub_35469fb0.length].field_160 = 0
        stor2[address(arg1)] = sub_35469fb0.length
    require ext_code.size(address(arg1))
    staticcall address(arg1).getPoolOwner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not sub_14067f53[ext_call.return_data[12 len 20]][1][address(arg1)].field_0:
        sub_14067f53[ext_call.return_data[12 len 20]].field_0++
        sub_14067f53[ext_call.return_data[12 len 20]][sub_14067f53[ext_call.return_data[12 len 20]].field_0].field_0 = address(arg1)
        sub_14067f53[ext_call.return_data[12 len 20]][sub_14067f53[ext_call.return_data[12 len 20]].field_0].field_160 = 0
        sub_14067f53[ext_call.return_data[12 len 20]][1][address(arg1)].field_0 = sub_14067f53[ext_call.return_data[12 len 20]].field_0
    require ext_code.size(address(arg1))
    staticcall address(arg1).getContractVersion() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0x9f355403: address(arg1), ext_call.return_data[0]
}

function sub_8a864dd7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[address(msg.sender)]:
        revert with 0, 'STAKE POOL NOT REGISTERED'
    if sub_14067f53[address(arg1)][1][address(msg.sender)].field_0:
        if sub_14067f53[address(arg1)][1][address(msg.sender)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_14067f53[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_14067f53[address(arg1)].field_0 - 1 >= sub_14067f53[address(arg1)].field_0:
            revert with 'NH{q', 50
        if sub_14067f53[address(arg1)][1][address(msg.sender)].field_0 - 1 >= sub_14067f53[address(arg1)].field_0:
            revert with 'NH{q', 50
        sub_14067f53[address(arg1)][sub_14067f53[address(arg1)][1][address(msg.sender)].field_0].field_0 = sub_14067f53[address(arg1)][sub_14067f53[address(arg1)].field_0].field_0
        if sub_14067f53[address(arg1)][1][address(msg.sender)].field_0 - 1 > -2:
            revert with 'NH{q', 17
        sub_14067f53[address(arg1)][1][sub_14067f53[address(arg1)][sub_14067f53[address(arg1)].field_0].field_0].field_0 = sub_14067f53[address(arg1)][1][address(msg.sender)].field_0
        if not sub_14067f53[address(arg1)].field_0:
            revert with 'NH{q', 49
        sub_14067f53[address(arg1)][sub_14067f53[address(arg1)].field_0].field_0 = 0
        sub_14067f53[address(arg1)].field_0--
        sub_14067f53[address(arg1)][1][address(msg.sender)].field_0 = 0
    if not sub_14067f53[address(arg2)][1][address(msg.sender)].field_0:
        sub_14067f53[address(arg2)].field_0++
        sub_14067f53[address(arg2)][sub_14067f53[address(arg2)].field_0].field_0 = msg.sender
        sub_14067f53[address(arg2)][sub_14067f53[address(arg2)].field_0].field_160 = 0
        sub_14067f53[address(arg2)][1][address(msg.sender)].field_0 = sub_14067f53[address(arg2)].field_0
}

function sub_3f7c7f1f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor6[address(msg.sender)]:
        revert with 0, 'FORBIDDEN'
    if not stor2[address(arg1)]:
        revert with 0, 'STAKE POOL NOT REGISTERED'
    require ext_code.size(address(arg1))
    staticcall address(arg1).getContractVersion() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getContractVersion() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_39934a1eAddress)
    staticcall sub_39934a1eAddress.0x6912af46 with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'INCOMPATIBLE MAPPING'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6e70074e with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NOT PERMITTED TO CREATE'
    require ext_code.size(address(arg1))
    call address(arg1).0x661a182d with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
