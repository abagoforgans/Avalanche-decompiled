contract main {




// =====================  Runtime code  =====================


const WFTM = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd

const DENOMINATOR = 10^6


function totalVested() payable {
    return totalVested
}

function sub_33920e29(?) payable {
    return sub_33920e29
}

function lastBuyback() payable {
    return lastBuyback
}

function Treasury() payable {
    return treasuryAddress
}

function sub_63fd7f49(?) payable {
    return sub_63fd7f49
}

function sub_67f77e9b(?) payable {
    return sub_67f77e9b
}

function sub_6d0d6692(?) payable {
    return sub_6d0d6692Address
}

function owner() payable {
    return owner
}

function sub_9235f197(?) payable {
    return sub_9235f197
}

function sub_d411401d(?) payable {
    return ('storage', 256, 0, 7)
}

function buybackAmount() payable {
    return ('storage', 256, 0, 13)
}

function vesting(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 5)))),
           ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 5)))),
           ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 5)))),
           ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 5))))
}

function assets(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(('storage', 8, 0, ('sha3', ('data', ('param', 'arg1'), 4)))), 
           ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('param', 'arg1'), 4)))),
           ('storage', 160, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 4)))),
           bool(('storage', 8, 160, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 4))))),
           ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 4))))
}

function sub_f4cdce3c(?) payable {
    return ('storage', 160, 0, 2)
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

function sub_75be5ae1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f4cdce3cAddress = address(arg1)
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[3]) = arg1
}

function sub_c74b60d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[1]) = address(arg1)
}

function sub_99a2faaf(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_63fd7f49 = arg1
    sub_d411401d = arg2
    sub_9235f197 = arg3
    sub_67f77e9b = arg4
    sub_33920e29 = arg5
}

function sub_09bb4f92(?) payable {
    staticcall sub_f4cdce3cAddress.0x3ddac953 with:
            gas gas_remaining wei
           args sub_6d0d6692Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    return ext_call.return_data[14 len 18]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(stor[0]) = arg1
    emit OwnershipTransferred(('storage', 160, 0, 0), arg1);
}

function sub_9f882bd5(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == bool(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(assets[address(arg1)].field_0) = uint8(bool(arg2))
    uint256(assets[address(arg1)].field_256) = arg3
    address(assets[address(arg1)].field_512) = address(arg4)
    Mask(96, 0, assets[address(arg1)].field_672) = Mask(96, 0, bool(arg5))
    address(assets[address(arg1)].field_768) = address(arg6)
}

function sub_6ca0ad95(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp <= uint256(vesting[address(arg1)].field_1024):
        return 0
    if uint256(vesting[address(arg1)].field_1024) >= uint256(vesting[address(arg1)].field_512):
        return 0
    if block.timestamp > uint256(vesting[address(arg1)].field_512):
        if uint256(vesting[address(arg1)].field_512) < uint256(vesting[address(arg1)].field_1024):
            revert with 'NH{q', 17
        if uint256(vesting[address(arg1)].field_0) and uint256(vesting[address(arg1)].field_512) - uint256(vesting[address(arg1)].field_1024) > -1 / uint256(vesting[address(arg1)].field_0):
            revert with 'NH{q', 17
        if not uint256(vesting[address(arg1)].field_256):
            revert with 'NH{q', 18
        return ((uint256(vesting[address(arg1)].field_512) * uint256(vesting[address(arg1)].field_0)) - (uint256(vesting[address(arg1)].field_1024) * uint256(vesting[address(arg1)].field_0)) / uint256(vesting[address(arg1)].field_256))
    if block.timestamp < uint256(vesting[address(arg1)].field_1024):
        revert with 'NH{q', 17
    if uint256(vesting[address(arg1)].field_0) and block.timestamp - uint256(vesting[address(arg1)].field_1024) > -1 / uint256(vesting[address(arg1)].field_0):
        revert with 'NH{q', 17
    if not uint256(vesting[address(arg1)].field_256):
        revert with 'NH{q', 18
    return ((block.timestamp * uint256(vesting[address(arg1)].field_0)) - (uint256(vesting[address(arg1)].field_1024) * uint256(vesting[address(arg1)].field_0)) / uint256(vesting[address(arg1)].field_256))
}

function sub_bf855e87(?) payable {
    staticcall ('storage', 160, 0, 2).0x3ddac953 with:
            gas gas_remaining wei
           args ('storage', 160, 0, 1), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] < 10^18:
        return 0
    if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
        revert with 'NH{q', 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
        return 0
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= ('storage', 256, 0, 8):
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6 and ('storage', 256, 0, 7) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6:
            revert with 'NH{q', 17
        return ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6)
    if ('storage', 256, 0, 8) < ('storage', 256, 0, 6):
        revert with 'NH{q', 17
    if ('storage', 256, 0, 8) - ('storage', 256, 0, 6) and ('storage', 256, 0, 7) > -1 / ('storage', 256, 0, 8) - ('storage', 256, 0, 6):
        revert with 'NH{q', 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 8):
        revert with 'NH{q', 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6 and ('storage', 256, 0, 9) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6:
        revert with 'NH{q', 17
    if (('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) - 1:
        revert with 'NH{q', 17
    return (((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6))
}

function sub_5f390ec0(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = sub_6d0d6692Address
    mem[132] = 10^18
    staticcall sub_f4cdce3cAddress.0x3ddac953 with:
            gas gas_remaining wei
           args sub_6d0d6692Address, 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] >= 10^18:
        revert with 0, 'RebateTreasury: unable to buy back'
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not lastBuyback - ext_call.return_data[0]:
        revert with 0, 'RebateTreasury: already bought back'
    lastBuyback = ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        if not uint8(assets[address(cd[((32 * idx) + cd[4] + 36)])].field_0):
            revert with 0, 'RebateTreasury: invalid token'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = this.address
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        require mem[_31] == mem[_31]
        if mem[_31] and buybackAmount > -1 / mem[_31]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _32 * buybackAmount / 10^6
        call address(cd[((32 * idx) + cd[4] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, _32 * buybackAmount / 10^6
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == bool(mem[_35])
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function getTokenPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    if not ('storage', 8, 160, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))):
        staticcall ('storage', 160, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0x3ddac953 with:
                gas gas_remaining wei
               args address(arg1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        return ext_call.return_data[14 len 18]
    staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall ('storage', 160, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0x3ddac953 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if address(ext_call.return_data[0]) - 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd:
        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[14 len 18]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] > -(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return ((ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[14 len 18]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] > -(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return ((ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]))
}

function claimRewards() payable {
    if uint256(vesting[address(msg.sender)].field_0):
        if uint256(vesting[address(msg.sender)].field_0) != uint256(vesting[address(msg.sender)].field_768):
            if block.timestamp > uint256(vesting[address(msg.sender)].field_1024):
                if uint256(vesting[address(msg.sender)].field_1024) < uint256(vesting[address(msg.sender)].field_512):
                    if block.timestamp > uint256(vesting[address(msg.sender)].field_512):
                        if uint256(vesting[address(msg.sender)].field_512) < uint256(vesting[address(msg.sender)].field_1024):
                            revert with 'NH{q', 17
                        if uint256(vesting[address(msg.sender)].field_0) and uint256(vesting[address(msg.sender)].field_512) - uint256(vesting[address(msg.sender)].field_1024) > -1 / uint256(vesting[address(msg.sender)].field_0):
                            revert with 'NH{q', 17
                        if not uint256(vesting[address(msg.sender)].field_256):
                            revert with 'NH{q', 18
                        if (uint256(vesting[address(msg.sender)].field_512) * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256):
                            if uint256(vesting[address(msg.sender)].field_768) > -((uint256(vesting[address(msg.sender)].field_512) * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)) - 1:
                                revert with 'NH{q', 17
                            uint256(vesting[address(msg.sender)].field_768) += (uint256(vesting[address(msg.sender)].field_512) * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)
                            if block.timestamp > uint256(vesting[address(msg.sender)].field_512):
                                uint256(vesting[address(msg.sender)].field_1024) = uint256(vesting[address(msg.sender)].field_512)
                            else:
                                uint256(vesting[address(msg.sender)].field_1024) = block.timestamp
                            if totalVested < (uint256(vesting[address(msg.sender)].field_512) * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256):
                                revert with 'NH{q', 17
                            totalVested -= (uint256(vesting[address(msg.sender)].field_512) * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)
                            call sub_6d0d6692Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (uint256(vesting[address(msg.sender)].field_512) * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if block.timestamp < uint256(vesting[address(msg.sender)].field_1024):
                            revert with 'NH{q', 17
                        if uint256(vesting[address(msg.sender)].field_0) and block.timestamp - uint256(vesting[address(msg.sender)].field_1024) > -1 / uint256(vesting[address(msg.sender)].field_0):
                            revert with 'NH{q', 17
                        if not uint256(vesting[address(msg.sender)].field_256):
                            revert with 'NH{q', 18
                        if (block.timestamp * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256):
                            if uint256(vesting[address(msg.sender)].field_768) > -((block.timestamp * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)) - 1:
                                revert with 'NH{q', 17
                            uint256(vesting[address(msg.sender)].field_768) += (block.timestamp * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)
                            if block.timestamp > uint256(vesting[address(msg.sender)].field_512):
                                uint256(vesting[address(msg.sender)].field_1024) = uint256(vesting[address(msg.sender)].field_512)
                            else:
                                uint256(vesting[address(msg.sender)].field_1024) = block.timestamp
                            if totalVested < (block.timestamp * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256):
                                revert with 'NH{q', 17
                            totalVested -= (block.timestamp * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)
                            call sub_6d0d6692Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (block.timestamp * uint256(vesting[address(msg.sender)].field_0)) - (uint256(vesting[address(msg.sender)].field_1024) * uint256(vesting[address(msg.sender)].field_0)) / uint256(vesting[address(msg.sender)].field_256)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a4006c8d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not uint8(assets[address(arg1)].field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    staticcall sub_f4cdce3cAddress.0x3ddac953 with:
            gas gas_remaining wei
           args sub_6d0d6692Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if not uint8(assets[address(arg1)].field_0):
        revert with 0, 'RebateTreasury: token is not a bondable asset'
    if not uint8(assets[address(arg1)].field_672):
        staticcall address(assets[address(arg1)].field_512).0x3ddac953 with:
                gas gas_remaining wei
               args address(arg1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        staticcall sub_f4cdce3cAddress.0x3ddac953 with:
                gas gas_remaining wei
               args sub_6d0d6692Address, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if ext_call.return_data[14 len 18] < 10^18:
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and uint256(assets[address(arg1)].field_256) > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
            revert with 'NH{q', 17
        if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_63fd7f49:
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and uint256(assets[address(arg1)].field_256) > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= sub_9235f197:
            if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_63fd7f49:
                revert with 'NH{q', 17
            if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_63fd7f49 - 10^6:
                revert with 'NH{q', 17
            if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                revert with 'NH{q', 17
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if sub_9235f197 < sub_63fd7f49:
            revert with 'NH{q', 17
        if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_9235f197:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_9235f197 - 10^6:
            revert with 'NH{q', 17
        if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) - 1:
            revert with 'NH{q', 17
        if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
            revert with 'NH{q', 17
        if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
            revert with 'NH{q', 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256)) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    staticcall address(assets[address(arg1)].field_768).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(assets[address(arg1)].field_768).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(assets[address(arg1)].field_768).0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(assets[address(arg1)].field_768).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(assets[address(arg1)].field_512).0x3ddac953 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if address(ext_call.return_data[0]) - 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd:
        if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[14 len 18]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] > -(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        staticcall sub_f4cdce3cAddress.0x3ddac953 with:
                gas gas_remaining wei
               args sub_6d0d6692Address, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if ext_call.return_data[14 len 18] < 10^18:
            if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 'NH{q', 17
            if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
            revert with 'NH{q', 17
        if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_63fd7f49:
            if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 'NH{q', 17
            if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= sub_9235f197:
            if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_63fd7f49:
                revert with 'NH{q', 17
            if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_63fd7f49 - 10^6:
                revert with 'NH{q', 17
            if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
                revert with 'NH{q', 17
            if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 'NH{q', 17
            if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        if sub_9235f197 < sub_63fd7f49:
            revert with 'NH{q', 17
        if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_9235f197:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_9235f197 - 10^6:
            revert with 'NH{q', 17
        if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) - 1:
            revert with 'NH{q', 17
        if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
            revert with 'NH{q', 17
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 'NH{q', 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[14 len 18]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] > -(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    staticcall sub_f4cdce3cAddress.0x3ddac953 with:
            gas gas_remaining wei
           args sub_6d0d6692Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] < 10^18:
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 'NH{q', 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
        revert with 'NH{q', 17
    if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
        revert with 'NH{q', 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_63fd7f49:
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 'NH{q', 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= sub_9235f197:
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_63fd7f49:
            revert with 'NH{q', 17
        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_63fd7f49 - 10^6 and sub_d411401d > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_63fd7f49 - 10^6:
            revert with 'NH{q', 17
        if (-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -1000001:
            revert with 'NH{q', 17
        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
            revert with 'NH{q', 17
        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
            revert with 'NH{q', 17
        if not Mask(144, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_d411401d) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    if sub_9235f197 < sub_63fd7f49:
        revert with 'NH{q', 17
    if sub_9235f197 - sub_63fd7f49 and sub_d411401d > -1 / sub_9235f197 - sub_63fd7f49:
        revert with 'NH{q', 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < sub_9235f197:
        revert with 'NH{q', 17
    if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_9235f197 - 10^6 and sub_67f77e9b > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -sub_9235f197 - 10^6:
        revert with 'NH{q', 17
    if (sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 > -((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) - 1:
        revert with 'NH{q', 17
    if ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) > -1000001:
        revert with 'NH{q', 17
    if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
        revert with 'NH{q', 17
    if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
        revert with 'NH{q', 17
    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and uint256(assets[address(arg1)].field_256) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
        revert with 'NH{q', 17
    if not Mask(144, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    return ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((sub_9235f197 * sub_d411401d) - (sub_63fd7f49 * sub_d411401d) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) + ((-1 * 10^6 * sub_67f77e9b) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * sub_67f77e9b) - (sub_9235f197 * sub_67f77e9b) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * uint256(assets[address(arg1)].field_256)) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
}

function bond(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: invalid bond amount'
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RebateTreasury: token is not a bondable asset'
    staticcall ('storage', 160, 0, 2).0x3ddac953 with:
            gas gas_remaining wei
           args ('storage', 160, 0, 1), 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if not ('storage', 8, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))):
        revert with 0, 'RebateTreasury: token is not a bondable asset'
    if not ('storage', 8, 160, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))):
        staticcall ('storage', 160, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0x3ddac953 with:
                gas gas_remaining wei
               args address(arg1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        staticcall ('storage', 160, 0, 2).0x3ddac953 with:
                gas gas_remaining wei
               args ('storage', 160, 0, 1), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if ext_call.return_data[14 len 18] < 10^18:
            if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                revert with 'NH{q', 17
            if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(144, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ('storage', 256, 0, 11):
                revert with 'NH{q', 17
            if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                revert with 0, 'RebateTreasury: insufficient tomb balance'
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                    if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    revert with 'NH{q', 17
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                    revert with 'NH{q', 17
                                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    revert with 'NH{q', 18
                                if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                        revert with 'NH{q', 17
                                    uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                    if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                    else:
                                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                    if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                    call ('storage', 160, 0, 1).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    revert with 'NH{q', 17
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                    revert with 'NH{q', 17
                                if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    revert with 'NH{q', 18
                                if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                        revert with 'NH{q', 17
                                    uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                    if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                    else:
                                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                    if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                    call ('storage', 160, 0, 1).0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                revert with 'NH{q', 17
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
            uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
            if block.timestamp > -('storage', 256, 0, 10) - 1:
                revert with 'NH{q', 17
            uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
            uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
            if ('storage', 256, 0, 11) > -(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            uint256(stor[11]) = ('storage', 256, 0, 11) + (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        else:
            if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
                revert with 'NH{q', 17
            if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
                revert with 'NH{q', 17
            if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
                if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                    revert with 'NH{q', 17
                if arg2 * Mask(144, 0, ext_call.return_data[0]) and 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(144, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ('storage', 256, 0, 11):
                    revert with 'NH{q', 17
                if 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                    revert with 0, 'RebateTreasury: insufficient tomb balance'
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                        revert with 'NH{q', 17
                                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 18
                                    if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                            revert with 'NH{q', 17
                                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        else:
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                        if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        call ('storage', 160, 0, 1).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                        revert with 'NH{q', 17
                                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 18
                                    if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                            revert with 'NH{q', 17
                                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        else:
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                        if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        call ('storage', 160, 0, 1).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                    revert with 'NH{q', 17
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                if block.timestamp > -('storage', 256, 0, 10) - 1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                if ('storage', 256, 0, 11) > -(10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                uint256(stor[11]) = ('storage', 256, 0, 11) + (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
            else:
                if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= ('storage', 256, 0, 8):
                    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
                        revert with 'NH{q', 17
                    if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6 and ('storage', 256, 0, 7) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6:
                        revert with 'NH{q', 17
                    if (-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -1000001:
                        revert with 'NH{q', 17
                    if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ('storage', 256, 0, 11):
                        revert with 'NH{q', 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                        revert with 0, 'RebateTreasury: insufficient tomb balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        revert with 'NH{q', 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                    if block.timestamp > -('storage', 256, 0, 10) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                    uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                    if ('storage', 256, 0, 11) > -((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                else:
                    if ('storage', 256, 0, 8) < ('storage', 256, 0, 6):
                        revert with 'NH{q', 17
                    if ('storage', 256, 0, 8) - ('storage', 256, 0, 6) and ('storage', 256, 0, 7) > -1 / ('storage', 256, 0, 8) - ('storage', 256, 0, 6):
                        revert with 'NH{q', 17
                    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 8):
                        revert with 'NH{q', 17
                    if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6 and ('storage', 256, 0, 9) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6:
                        revert with 'NH{q', 17
                    if (('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) - 1:
                        revert with 'NH{q', 17
                    if ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) > -1000001:
                        revert with 'NH{q', 17
                    if arg2 and Mask(144, 0, ext_call.return_data[0]) > -1 / arg2:
                        revert with 'NH{q', 17
                    if arg2 * Mask(144, 0, ext_call.return_data[0]) and ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) + 10^6 > -1 / arg2 * Mask(144, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0])):
                        revert with 'NH{q', 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ('storage', 256, 0, 11):
                        revert with 'NH{q', 17
                    if (10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                        revert with 0, 'RebateTreasury: insufficient tomb balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        revert with 'NH{q', 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                    if block.timestamp > -('storage', 256, 0, 10) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                    uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                    if ('storage', 256, 0, 11) > -((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * arg2 * Mask(144, 0, ext_call.return_data[0]) * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
    else:
        staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0xd21220a7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall ('storage', 160, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall ('storage', 160, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))).0x3ddac953 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[14 len 18]
        if address(ext_call.return_data[0]) - 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd:
            if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[14 len 18]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] > -(10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            staticcall ('storage', 160, 0, 2).0x3ddac953 with:
                    gas gas_remaining wei
                   args ('storage', 160, 0, 1), 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[14 len 18]
            if ext_call.return_data[14 len 18] < 10^18:
                if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                    revert with 'NH{q', 17
                if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                    revert with 'NH{q', 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                    revert with 'NH{q', 17
                if not Mask(144, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ('storage', 256, 0, 11):
                    revert with 'NH{q', 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                    revert with 0, 'RebateTreasury: insufficient tomb balance'
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                        revert with 'NH{q', 17
                                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 18
                                    if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                            revert with 'NH{q', 17
                                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        else:
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                        if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        call ('storage', 160, 0, 1).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                        revert with 'NH{q', 17
                                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 18
                                    if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                            revert with 'NH{q', 17
                                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        else:
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                        if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        call ('storage', 160, 0, 1).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                    revert with 'NH{q', 17
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                if block.timestamp > -('storage', 256, 0, 10) - 1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
            else:
                if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
                    revert with 'NH{q', 17
                if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
                    revert with 'NH{q', 17
                if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
                    if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                        revert with 'NH{q', 17
                    if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                        revert with 'NH{q', 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                        revert with 'NH{q', 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ('storage', 256, 0, 11):
                        revert with 'NH{q', 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                        revert with 0, 'RebateTreasury: insufficient tomb balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        revert with 'NH{q', 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                    if block.timestamp > -('storage', 256, 0, 10) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                    uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                    if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                else:
                    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= ('storage', 256, 0, 8):
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
                            revert with 'NH{q', 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6 and ('storage', 256, 0, 7) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6:
                            revert with 'NH{q', 17
                        if (-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -1000001:
                            revert with 'NH{q', 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 'NH{q', 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('storage', 256, 0, 11):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                            revert with 0, 'RebateTreasury: insufficient tomb balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            revert with 'NH{q', 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                        if block.timestamp > -('storage', 256, 0, 10) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                        if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    else:
                        if ('storage', 256, 0, 8) < ('storage', 256, 0, 6):
                            revert with 'NH{q', 17
                        if ('storage', 256, 0, 8) - ('storage', 256, 0, 6) and ('storage', 256, 0, 7) > -1 / ('storage', 256, 0, 8) - ('storage', 256, 0, 6):
                            revert with 'NH{q', 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 8):
                            revert with 'NH{q', 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6 and ('storage', 256, 0, 9) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6:
                            revert with 'NH{q', 17
                        if (('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) - 1:
                            revert with 'NH{q', 17
                        if ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) > -1000001:
                            revert with 'NH{q', 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 'NH{q', 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('storage', 256, 0, 11):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                            revert with 0, 'RebateTreasury: insufficient tomb balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            revert with 'NH{q', 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                        if block.timestamp > -('storage', 256, 0, 10) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                        if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
        else:
            if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[14 len 18] and Mask(112, 0, ext_call.return_data[0]) > -1 / ext_call.return_data[14 len 18]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[14 len 18] * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] > -(10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            staticcall ('storage', 160, 0, 2).0x3ddac953 with:
                    gas gas_remaining wei
                   args ('storage', 160, 0, 1), 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[14 len 18]
            if ext_call.return_data[14 len 18] < 10^18:
                if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                    revert with 'NH{q', 17
                if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                    revert with 'NH{q', 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                    revert with 'NH{q', 17
                if not Mask(144, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ('storage', 256, 0, 11):
                    revert with 'NH{q', 17
                if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                    revert with 0, 'RebateTreasury: insufficient tomb balance'
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                        revert with 'NH{q', 17
                                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 18
                                    if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                            revert with 'NH{q', 17
                                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        else:
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                        if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        call ('storage', 160, 0, 1).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                        revert with 'NH{q', 17
                                    if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        revert with 'NH{q', 18
                                    if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                            revert with 'NH{q', 17
                                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        else:
                                            uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                        if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                        call ('storage', 160, 0, 1).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                    revert with 'NH{q', 17
                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                if block.timestamp > -('storage', 256, 0, 10) - 1:
                    revert with 'NH{q', 17
                uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                    revert with 'NH{q', 17
                uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
            else:
                if ext_call.return_data[14 len 18] and 10^6 > -1 / ext_call.return_data[14 len 18]:
                    revert with 'NH{q', 17
                if 10^6 * ext_call.return_data[14 len 18] / 10^18 < 10^6:
                    revert with 'NH{q', 17
                if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
                    if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                        revert with 'NH{q', 17
                    if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                        revert with 'NH{q', 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                        revert with 'NH{q', 17
                    if not Mask(144, 0, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < ('storage', 256, 0, 11):
                        revert with 'NH{q', 17
                    if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                        revert with 0, 'RebateTreasury: insufficient tomb balance'
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    else:
                                        if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 17
                                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                            revert with 'NH{q', 17
                                        if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            revert with 'NH{q', 18
                                        if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                revert with 'NH{q', 17
                                            uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            else:
                                                uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                            if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                            call ('storage', 160, 0, 1).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                        revert with 'NH{q', 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                    if block.timestamp > -('storage', 256, 0, 10) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                    uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                    if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                        revert with 'NH{q', 17
                    uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                else:
                    if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 <= ('storage', 256, 0, 8):
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 6):
                            revert with 'NH{q', 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6 and ('storage', 256, 0, 7) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 6) - 10^6:
                            revert with 'NH{q', 17
                        if (-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -1000001:
                            revert with 'NH{q', 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 'NH{q', 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('storage', 256, 0, 11):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                            revert with 0, 'RebateTreasury: insufficient tomb balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            revert with 'NH{q', 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                        if block.timestamp > -('storage', 256, 0, 10) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                        if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 7)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                    else:
                        if ('storage', 256, 0, 8) < ('storage', 256, 0, 6):
                            revert with 'NH{q', 17
                        if ('storage', 256, 0, 8) - ('storage', 256, 0, 6) and ('storage', 256, 0, 7) > -1 / ('storage', 256, 0, 8) - ('storage', 256, 0, 6):
                            revert with 'NH{q', 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) - 10^6 < ('storage', 256, 0, 8):
                            revert with 'NH{q', 17
                        if (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6 and ('storage', 256, 0, 9) > -1 / (10^6 * ext_call.return_data[14 len 18] / 10^18) + -('storage', 256, 0, 8) - 10^6:
                            revert with 'NH{q', 17
                        if (('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 > -((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) - 1:
                            revert with 'NH{q', 17
                        if ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) > -1000001:
                            revert with 'NH{q', 17
                        if arg2 and (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0]) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]) > -1 / arg2:
                            revert with 'NH{q', 17
                        if (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6) + 10^6 > -1 / (Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) and ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4)))) > -1 / (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * ext_call.return_data[14 len 18] / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2):
                            revert with 'NH{q', 17
                        if not Mask(144, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] < ('storage', 256, 0, 11):
                            revert with 'NH{q', 17
                        if (10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]) > ext_call.return_data[0] - ('storage', 256, 0, 11):
                            revert with 0, 'RebateTreasury: insufficient tomb balance'
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) != ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                if block.timestamp > ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                        if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                            if ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        else:
                                            if block.timestamp < ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 17
                                            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) and block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -1 / ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))):
                                                revert with 'NH{q', 17
                                            if not ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))) - 1:
                                                    revert with 'NH{q', 17
                                                uint256(stor[sha3(address(msg.sender), 5) + 3]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                if block.timestamp > ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = ('storage', 256, 0, ('add', 2, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                else:
                                                    uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                                                if ('storage', 256, 0, 11) < (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                                                    revert with 'NH{q', 17
                                                uint256(stor[11]) = ('storage', 256, 0, 11) - ((block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))))
                                                call ('storage', 160, 0, 1).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (block.timestamp * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) - (('storage', 256, 0, ('add', 4, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) / ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))))
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))):
                            revert with 'NH{q', 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5)]) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5))) - ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 5)))) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
                        uint256(stor[sha3(address(msg.sender), 5) + 1]) = ('storage', 256, 0, 10)
                        if block.timestamp > -('storage', 256, 0, 10) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[sha3(address(msg.sender), 5) + 2]) = block.timestamp + ('storage', 256, 0, 10)
                        uint256(stor[sha3(address(msg.sender), 5) + 3]) = 0
                        uint256(stor[sha3(address(msg.sender), 5) + 4]) = block.timestamp
                        if ('storage', 256, 0, 11) > -((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        uint256(stor[11]) = ('storage', 256, 0, 11) + ((10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * Mask(144, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + (10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((('storage', 256, 0, 8) * ('storage', 256, 0, 7)) - (('storage', 256, 0, 6) * ('storage', 256, 0, 7)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) + ((-1 * 10^6 * ('storage', 256, 0, 9)) + (10^6 * Mask(144, 0, ext_call.return_data[0]) / 10^18 * ('storage', 256, 0, 9)) - (('storage', 256, 0, 8) * ('storage', 256, 0, 9)) / 10^6 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * arg2 * ('storage', 256, 0, ('add', 1, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 4))))) / 10^12 / Mask(144, 0, ext_call.return_data[0]))
}



}
