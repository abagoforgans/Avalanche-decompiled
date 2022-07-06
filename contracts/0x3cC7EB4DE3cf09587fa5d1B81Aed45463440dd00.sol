contract main {




// =====================  Runtime code  =====================


address sub_1de1ea1fAddress;
address sub_bd54ea46Address;
address sub_764e5d79Address;
address meltTokenAddress;
uint256 sub_f88c6411;

function sub_1de1ea1f(?) payable {
    return sub_1de1ea1fAddress
}

function meltToken() payable {
    return meltTokenAddress
}

function sub_764e5d79(?) payable {
    return sub_764e5d79Address
}

function sub_bd54ea46(?) payable {
    return sub_bd54ea46Address
}

function sub_f88c6411(?) payable {
    return sub_f88c6411
}

function _fallback() payable {
    revert
}

function sub_7a540137(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_764e5d79Address)
    staticcall sub_764e5d79Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(meltTokenAddress)
    staticcall meltTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_764e5d79Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(sub_1de1ea1fAddress)
        staticcall sub_1de1ea1fAddress.allPendingReward(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args 0, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(sub_764e5d79Address)
        staticcall sub_764e5d79Address.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bd54ea46Address)
        staticcall sub_bd54ea46Address.userInfo(uint256 arg1, address arg2) with:
                gas gas_remaining wei
               args sub_f88c6411, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 3 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 3 * ext_call.return_data[0]:
            return 0
        if (ext_call.return_data[0] * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 3 * ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((ext_call.return_data[0] * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0]) + (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10^12)
    if 10^12 * ext_call.return_data[0] / ext_call.return_data[0] != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(sub_1de1ea1fAddress)
    staticcall sub_1de1ea1fAddress.allPendingReward(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_764e5d79Address)
    staticcall sub_764e5d79Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bd54ea46Address)
    staticcall sub_bd54ea46Address.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args sub_f88c6411, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if 3 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 3 * ext_call.return_data[0]:
        return 0
    if (ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]) / 3 * ext_call.return_data[0] != 10^12 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]) + (ext_call.return_data[0] * 10^12 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^12)
}



}
