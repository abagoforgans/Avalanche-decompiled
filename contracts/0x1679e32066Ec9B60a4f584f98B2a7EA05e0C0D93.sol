contract main {




// =====================  Runtime code  =====================


address owner;
address sub_29949872Address;
address stakerAddress;

function sub_29949872(?) payable {
    return sub_29949872Address
}

function staker() payable {
    return stakerAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner!'
    owner = arg1
}

function changeStaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Not owner!'
    stakerAddress = arg1
}

function sub_04812501(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Not owner!'
    sub_29949872Address = address(arg1)
}

function userAmountStaked(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0xc17f8ce9 with:
            gas gas_remaining wei
           args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0x15f2081d with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[28 len 4]
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0xe39ac044 with:
            gas gas_remaining wei
           args uint32(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0xb45e86cf with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.syntheticTokens(uint32 arg1, bool arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[0] <= 0:
        return ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        return ext_call.return_data[0]
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0x9441752f with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(stakerAddress)
        staticcall stakerAddress.0x9441752f with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) != arg2, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require ext_code.size(stakerAddress)
            staticcall stakerAddress.userNextPrice_paymentToken_depositAmount(uint32 arg1, bool arg2, address arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                return ext_call.return_data[0]
            require ext_code.size(sub_29949872Address)
            staticcall sub_29949872Address.0x37bf1cf7 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if ext_call.return_data[0] > -(10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            return (ext_call.return_data[0] + (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
        require ext_code.size(sub_29949872Address)
        staticcall sub_29949872Address.getAmountSyntheticTokenToMintOnTargetSide(uint32 arg1, uint256 arg2, bool arg3, uint256 arg4) with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 224, ext_call.return_data[0], address(ext_call.return_data[0]) != arg2, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        require ext_code.size(stakerAddress)
        staticcall stakerAddress.userNextPrice_paymentToken_depositAmount(uint32 arg1, bool arg2, address arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            return (2 * ext_call.return_data[0])
        require ext_code.size(sub_29949872Address)
        staticcall sub_29949872Address.0x37bf1cf7 with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 2 * ext_call.return_data[0] > -(10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return ((2 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.0x9441752f with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) != arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(stakerAddress)
        staticcall stakerAddress.userNextPrice_paymentToken_depositAmount(uint32 arg1, bool arg2, address arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_code.size(sub_29949872Address)
        staticcall sub_29949872Address.0x37bf1cf7 with:
                gas gas_remaining wei
               args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if 0 > -(10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
    require ext_code.size(sub_29949872Address)
    staticcall sub_29949872Address.getAmountSyntheticTokenToMintOnTargetSide(uint32 arg1, uint256 arg2, bool arg3, uint256 arg4) with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, ext_call.return_data[0], address(ext_call.return_data[0]) != arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 > -ext_call.return_data[0] - 1:
        revert with 'NH{q', 17
    require ext_code.size(stakerAddress)
    staticcall stakerAddress.userNextPrice_paymentToken_depositAmount(uint32 arg1, bool arg2, address arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return ext_call.return_data[0]
    require ext_code.size(sub_29949872Address)
    staticcall sub_29949872Address.0x37bf1cf7 with:
            gas gas_remaining wei
           args ext_call.return_data[0] << 224, address(ext_call.return_data[0]) == arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] > -(10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] + (10^18 * ext_call.return_data[0] / ext_call.return_data[0]))
}



}
