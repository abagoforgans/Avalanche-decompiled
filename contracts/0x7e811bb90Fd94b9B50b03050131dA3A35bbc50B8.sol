contract main {




// =====================  Runtime code  =====================


const NAME = 'CommunityIssuance'


address owner;
address sub_de6c20fdAddress;
address stabilityPoolAddress;
uint256 rewardRate;
uint256 sub_68a78394;
uint256 sub_608342e9;
uint8 sub_0c7290f2;
uint256 lastUpdateTime;
uint256 sub_f558d785;
uint256 sub_11c92b13;
uint8 stor59;

function stabilityPoolAddress() payable {
    return stabilityPoolAddress
}

function sub_0c7290f2(?) payable {
    return bool(sub_0c7290f2)
}

function sub_11c92b13(?) payable {
    return sub_11c92b13
}

function sub_608342e9(?) payable {
    return sub_608342e9
}

function sub_68a78394(?) payable {
    return sub_68a78394
}

function getRewardRate() payable {
    return rewardRate
}

function owner() payable {
    return owner
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function sub_de6c20fd(?) payable {
    return sub_de6c20fdAddress
}

function sub_f558d785(?) payable {
    return sub_f558d785
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

function setRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_68a78394 = arg1
    sub_608342e9 = block.timestamp
    sub_0c7290f2 = 1
    emit 0xa1b67e74: arg1, block.timestamp
}

function setAddresses(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor59:
        revert with 0, 'Addresses Already Set'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    lastUpdateTime = block.timestamp
    sub_de6c20fdAddress = arg1
    stabilityPoolAddress = arg2
    stor59 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_86ec04e6(?) payable {
    require calldata.size - 4 >= 64
    if stabilityPoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6d6d756e69747949737375616e63653a2063616c6c6572206973206e6f742053,
                    mem[199 len 29]
    if arg2 > sub_f558d785:
        revert with 0, 'sub overflow'
    sub_f558d785 -= arg2
    require ext_code.size(sub_de6c20fdAddress)
    call sub_de6c20fdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit RewardPaid(address(arg1), arg2);
}

function sub_d6475d5b(?) payable {
    if stabilityPoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73436f6d6d756e69747949737375616e63653a2063616c6c6572206973206e6f742053,
                    mem[199 len 29]
    if not sub_0c7290f2:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'sub overflow'
        if not block.timestamp - lastUpdateTime:
            require ext_code.size(sub_de6c20fdAddress)
            staticcall sub_de6c20fdAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_f558d785:
                if sub_f558d785 < sub_f558d785:
                    revert with 0, 'add overflow'
                if sub_11c92b13 < sub_11c92b13:
                    revert with 0, 'add overflow'
                lastUpdateTime = block.timestamp
                emit 0x6d1e2d06: 0
                emit 0x63a53aa4: sub_11c92b13
                return 0
            require ext_code.size(sub_de6c20fdAddress)
            staticcall sub_de6c20fdAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f558d785 > ext_call.return_data[0]:
                revert with 0, 'sub overflow'
            if 0 < ext_call.return_data[0] - sub_f558d785:
                if sub_f558d785 < sub_f558d785:
                    revert with 0, 'add overflow'
                if sub_11c92b13 < sub_11c92b13:
                    revert with 0, 'add overflow'
                lastUpdateTime = block.timestamp
                emit 0x6d1e2d06: 0
                emit 0x63a53aa4: sub_11c92b13
                return 0
        else:
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                revert with 0, 'mul overflow'
            require ext_code.size(sub_de6c20fdAddress)
            staticcall sub_de6c20fdAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= sub_f558d785:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) >= 0:
                    if sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    if sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: 0
                    emit 0x63a53aa4: sub_11c92b13
                    return 0
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785 < sub_f558d785:
                    revert with 0, 'add overflow'
                sub_f558d785 = (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13 < sub_11c92b13:
                    revert with 0, 'add overflow'
                sub_11c92b13 = (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13
                lastUpdateTime = block.timestamp
                emit 0x6d1e2d06: ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate))
                emit 0x63a53aa4: sub_11c92b13
                return ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate))
            require ext_code.size(sub_de6c20fdAddress)
            staticcall sub_de6c20fdAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_f558d785 > ext_call.return_data[0]:
                revert with 0, 'sub overflow'
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) < ext_call.return_data[0] - sub_f558d785:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785 < sub_f558d785:
                    revert with 0, 'add overflow'
                sub_f558d785 = (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13 < sub_11c92b13:
                    revert with 0, 'add overflow'
                sub_11c92b13 = (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13
                lastUpdateTime = block.timestamp
                emit 0x6d1e2d06: ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate))
                emit 0x63a53aa4: sub_11c92b13
                return ((block.timestamp * rewardRate) - (lastUpdateTime * rewardRate))
    else:
        if sub_608342e9 > block.timestamp:
            revert with 0, 'sub overflow'
        if not block.timestamp - sub_608342e9:
            if lastUpdateTime > sub_608342e9:
                revert with 0, 'sub overflow'
            if not sub_608342e9 - lastUpdateTime:
                rewardRate = sub_68a78394
                sub_0c7290f2 = 0
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_f558d785:
                    if sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    if sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: 0
                    emit 0x63a53aa4: sub_11c92b13
                    return 0
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f558d785 > ext_call.return_data[0]:
                    revert with 0, 'sub overflow'
                if 0 < ext_call.return_data[0] - sub_f558d785:
                    if sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    if sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: 0
                    emit 0x63a53aa4: sub_11c92b13
                    return 0
            else:
                if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) / sub_608342e9 - lastUpdateTime != rewardRate:
                    revert with 0, 'mul overflow'
                if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) < 0:
                    revert with 0, 'add overflow'
                rewardRate = sub_68a78394
                sub_0c7290f2 = 0
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_f558d785:
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) >= 0:
                        if sub_f558d785 < sub_f558d785:
                            revert with 0, 'add overflow'
                        if sub_11c92b13 < sub_11c92b13:
                            revert with 0, 'add overflow'
                        lastUpdateTime = block.timestamp
                        emit 0x6d1e2d06: 0
                        emit 0x63a53aa4: sub_11c92b13
                        return 0
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    sub_f558d785 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    sub_11c92b13 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate))
                    emit 0x63a53aa4: sub_11c92b13
                    return ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate))
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f558d785 > ext_call.return_data[0]:
                    revert with 0, 'sub overflow'
                if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) < ext_call.return_data[0] - sub_f558d785:
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    sub_f558d785 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_f558d785
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    sub_11c92b13 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + sub_11c92b13
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate))
                    emit 0x63a53aa4: sub_11c92b13
                    return ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate))
        else:
            if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) / block.timestamp - sub_608342e9 != sub_68a78394:
                revert with 0, 'mul overflow'
            if lastUpdateTime > sub_608342e9:
                revert with 0, 'sub overflow'
            if not sub_608342e9 - lastUpdateTime:
                rewardRate = sub_68a78394
                sub_0c7290f2 = 0
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_f558d785:
                    if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) >= 0:
                        if sub_f558d785 < sub_f558d785:
                            revert with 0, 'add overflow'
                        if sub_11c92b13 < sub_11c92b13:
                            revert with 0, 'add overflow'
                        lastUpdateTime = block.timestamp
                        emit 0x6d1e2d06: 0
                        emit 0x63a53aa4: sub_11c92b13
                        return 0
                    if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    sub_f558d785 = (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785
                    if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    sub_11c92b13 = (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: ((block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
                    emit 0x63a53aa4: sub_11c92b13
                    return ((block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f558d785 > ext_call.return_data[0]:
                    revert with 0, 'sub overflow'
                if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) < ext_call.return_data[0] - sub_f558d785:
                    if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    sub_f558d785 = (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785
                    if (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    sub_11c92b13 = (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: ((block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
                    emit 0x63a53aa4: sub_11c92b13
                    return ((block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
            else:
                if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) / sub_608342e9 - lastUpdateTime != rewardRate:
                    revert with 0, 'mul overflow'
                if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) < 0:
                    revert with 0, 'add overflow'
                rewardRate = sub_68a78394
                sub_0c7290f2 = 0
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= sub_f558d785:
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) >= 0:
                        if sub_f558d785 < sub_f558d785:
                            revert with 0, 'add overflow'
                        if sub_11c92b13 < sub_11c92b13:
                            revert with 0, 'add overflow'
                        lastUpdateTime = block.timestamp
                        emit 0x6d1e2d06: 0
                        emit 0x63a53aa4: sub_11c92b13
                        return 0
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    sub_f558d785 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    sub_11c92b13 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
                    emit 0x63a53aa4: sub_11c92b13
                    return ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
                require ext_code.size(sub_de6c20fdAddress)
                staticcall sub_de6c20fdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_f558d785 > ext_call.return_data[0]:
                    revert with 0, 'sub overflow'
                if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) < ext_call.return_data[0] - sub_f558d785:
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785 < sub_f558d785:
                        revert with 0, 'add overflow'
                    sub_f558d785 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_f558d785
                    if (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13 < sub_11c92b13:
                        revert with 0, 'add overflow'
                    sub_11c92b13 = (sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394) + sub_11c92b13
                    lastUpdateTime = block.timestamp
                    emit 0x6d1e2d06: ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
                    emit 0x63a53aa4: sub_11c92b13
                    return ((sub_608342e9 * rewardRate) - (lastUpdateTime * rewardRate) + (block.timestamp * sub_68a78394) - (sub_608342e9 * sub_68a78394))
    if ext_call.return_data[0] < sub_f558d785:
        revert with 0, 'add overflow'
    sub_f558d785 = ext_call.return_data[0]
    if ext_call.return_data[0] - sub_f558d785 + sub_11c92b13 < sub_11c92b13:
        revert with 0, 'add overflow'
    sub_11c92b13 = ext_call.return_data[0] - sub_f558d785 + sub_11c92b13
    lastUpdateTime = block.timestamp
    emit 0x6d1e2d06: (ext_call.return_data[0] - sub_f558d785)
    emit 0x63a53aa4: sub_11c92b13
    return (ext_call.return_data[0] - sub_f558d785)
}



}
