contract main {




// =====================  Runtime code  =====================


const BP = 10000


address owner;
mapping of uint256 minFee;
uint256 feeMultiplier;
uint256 baseFeeRateBP;
address xABRAddress;

function xABR() payable {
    return xABRAddress
}

function minFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minFee[arg1]
}

function owner() payable {
    return owner
}

function baseFeeRateBP() payable {
    return baseFeeRateBP
}

function feeMultiplier() payable {
    return feeMultiplier
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

function setBaseFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseFeeRateBP = arg1
}

function setFeeMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeMultiplier = arg1
}

function setMinFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minFee[address(arg1)] = arg2
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

function fee(address arg1, address arg2, uint256 arg3, bytes4 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == Mask(32, 224, arg4)
    require ext_code.size(xABRAddress)
    staticcall xABRAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        if baseFeeRateBP:
            if arg3:
                require ext_code.size(xABRAddress)
                staticcall xABRAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(xABRAddress)
                staticcall xABRAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] and feeMultiplier > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] * feeMultiplier and 10000 > -1 / ext_call.return_data[0] * feeMultiplier:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if not baseFeeRateBP:
                    revert with 'NH{q', 18
                if 10000 * ext_call.return_data[0] * feeMultiplier / ext_call.return_data[0] > -(100 * 10^6 / baseFeeRateBP) - 1:
                    revert with 'NH{q', 17
                if arg3 and 10000 > -1 / arg3:
                    revert with 'NH{q', 17
                if not (10000 * ext_call.return_data[0] * feeMultiplier / ext_call.return_data[0]) + (100 * 10^6 / baseFeeRateBP):
                    revert with 'NH{q', 18
                if minFee[address(arg1)] <= 0:
                    return (10000 * arg3 / (10000 * ext_call.return_data[0] * feeMultiplier / ext_call.return_data[0]) + (100 * 10^6 / baseFeeRateBP))
                if 10000 * arg3 / (10000 * ext_call.return_data[0] * feeMultiplier / ext_call.return_data[0]) + (100 * 10^6 / baseFeeRateBP) >= minFee[address(arg1)]:
                    return (10000 * arg3 / (10000 * ext_call.return_data[0] * feeMultiplier / ext_call.return_data[0]) + (100 * 10^6 / baseFeeRateBP))
    return minFee[address(arg1)]
}



}
