contract main {




// =====================  Runtime code  =====================


address owner;
address vestingTokenAddress;
address stakingContractAddress;
address stakingTokenAddress;
address sub_e545338cAddress;
uint256 sub_f68741d6;
uint256 sub_a94a49c6;
uint256 sub_84b12a90;
uint256 startDate;
uint256 periodLength;
uint256 sub_ad7f5c78;
uint256 stor11;
uint256 stor12;
mapping of struct sub_ed6272e0;

function startDate() payable {
    return startDate
}

function vestingToken() payable {
    return vestingTokenAddress
}

function stakingToken() payable {
    return stakingTokenAddress
}

function sub_84b12a90(?) payable {
    return sub_84b12a90
}

function owner() payable {
    return owner
}

function sub_a94a49c6(?) payable {
    return sub_a94a49c6
}

function sub_ad7f5c78(?) payable {
    return sub_ad7f5c78
}

function periodLength() payable {
    return periodLength
}

function sub_e545338c(?) payable {
    return sub_e545338cAddress
}

function sub_ed6272e0(?) payable {
    require calldata.size - 4 >= 32
    return sub_ed6272e0[arg1].field_0, 
           sub_ed6272e0[arg1].field_256,
           sub_ed6272e0[arg1].field_512,
           bool(sub_ed6272e0[arg1].field_768)
}

function stakingContract() payable {
    return stakingContractAddress
}

function sub_f68741d6(?) payable {
    return sub_f68741d6
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setStartDate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startDate:
        revert with 0, 'Vesting already started'
    startDate = arg1
}

function sub_6e67ca45(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startDate:
        revert with 0, 'Vesting already started'
    if arg1 <= 0:
        revert with 0, 'Need positive number of periods'
    sub_ad7f5c78 = arg1
}

function setPeriodLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startDate:
        revert with 0, 'Vesting already started'
    if arg1 <= 0:
        revert with 0, 'Need positive length'
    periodLength = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_03d2ab3f(?) payable {
    if startDate > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - startDate:
        return 0
    if not block.timestamp - startDate:
        if not periodLength:
            revert with 0, 'SafeMath: division by zero'
        if not sub_ad7f5c78:
            revert with 0, 'SafeMath: division by zero'
        if 0 / periodLength / sub_ad7f5c78 <= 10000:
            return (0 / periodLength / sub_ad7f5c78)
    else:
        if (10000 * block.timestamp) - (10000 * startDate) / block.timestamp - startDate != 10000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not periodLength:
            revert with 0, 'SafeMath: division by zero'
        if not sub_ad7f5c78:
            revert with 0, 'SafeMath: division by zero'
        if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 <= 10000:
            return ((10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78)
    return 10000
}

function sub_882c85c1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(vestingTokenAddress)
    call vestingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vestingTokenAddress)
    call vestingTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_a94a49c6 += arg1
}

function sub_e702b375(?) payable {
    require ext_code.size(sub_e545338cAddress)
    staticcall sub_e545338cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not stor11:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(stakingTokenAddress)
        staticcall stakingTokenAddress.0x2986c0e5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / stor11:
            return 0
        if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (ext_call.return_data[0] * 0 / stor11 / 10^9)
    if stor12 * ext_call.return_data[0] / ext_call.return_data[0] != stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor11:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor12 * ext_call.return_data[0] / stor11:
        return 0
    if ext_call.return_data[0] * stor12 * ext_call.return_data[0] / stor11 / stor12 * ext_call.return_data[0] / stor11 != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (ext_call.return_data[0] * stor12 * ext_call.return_data[0] / stor11 / 10^9)
}

function setStaking(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stakingContractAddress = arg1
    require ext_code.size(vestingTokenAddress)
    staticcall vestingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vestingTokenAddress)
    call vestingTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stakingContractAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.claim(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_814809dd(?) payable {
    if startDate > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - startDate:
        if 0 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if sub_ed6272e0[msg.sender].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_ed6272e0[msg.sender].field_256
    if not block.timestamp - startDate:
        if not periodLength:
            revert with 0, 'SafeMath: division by zero'
        if not sub_ad7f5c78:
            revert with 0, 'SafeMath: division by zero'
        if 0 / periodLength / sub_ad7f5c78 > 10000:
            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 != sub_ed6272e0[msg.sender].field_512:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                return 0
            if sub_ed6272e0[msg.sender].field_256 > 10000 * sub_ed6272e0[msg.sender].field_512 / 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256)
        if not 0 / periodLength / sub_ad7f5c78:
            if 0 < sub_ed6272e0[msg.sender].field_256:
                return 0
            if sub_ed6272e0[msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_ed6272e0[msg.sender].field_256
        if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 0 / periodLength / sub_ad7f5c78 != sub_ed6272e0[msg.sender].field_512:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if sub_ed6272e0[msg.sender].field_256 > sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256)
    if (10000 * block.timestamp) - (10000 * startDate) / block.timestamp - startDate != 10000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not periodLength:
        revert with 0, 'SafeMath: division by zero'
    if not sub_ad7f5c78:
        revert with 0, 'SafeMath: division by zero'
    if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 > 10000:
        if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 != sub_ed6272e0[msg.sender].field_512:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if sub_ed6272e0[msg.sender].field_256 > 10000 * sub_ed6272e0[msg.sender].field_512 / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256)
    if not (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
        if 0 < sub_ed6272e0[msg.sender].field_256:
            return 0
        if sub_ed6272e0[msg.sender].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -sub_ed6272e0[msg.sender].field_256
    if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 != sub_ed6272e0[msg.sender].field_512:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
    if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
        return 0
    if sub_ed6272e0[msg.sender].field_256 > sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256)
}

function claim() payable {
    if block.timestamp < startDate:
        revert with 0, 'Redeem not started'
    if sub_ed6272e0[msg.sender].field_768:
        if startDate > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        require periodLength
        if startDate > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - startDate:
            if sub_ed6272e0[msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_ed6272e0[msg.sender].field_256 <= 0:
                revert with 0, 'vesting: no withdrawable tokens'
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x2986c0e5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not -sub_ed6272e0[msg.sender].field_256:
                if not stor11:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / stor11:
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                else:
                    if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
            else:
                if -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / -sub_ed6272e0[msg.sender].field_256 != stor12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not stor11:
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11:
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                else:
                    if ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if (ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_f68741d6 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, msg.sender);
        else:
            if not block.timestamp - startDate:
                if not periodLength:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_ad7f5c78:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / periodLength / sub_ad7f5c78 > 10000:
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 != sub_ed6272e0[msg.sender].field_512:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if sub_ed6272e0[msg.sender].field_256 > 10000 * sub_ed6272e0[msg.sender].field_512 / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'vesting: no withdrawable tokens'
                    require ext_code.size(stakingTokenAddress)
                    staticcall stakingTokenAddress.0x2986c0e5 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256:
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                    else:
                        if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
                else:
                    if not 0 / periodLength / sub_ad7f5c78:
                        if sub_ed6272e0[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / -sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, msg.sender);
                    else:
                        if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 0 / periodLength / sub_ad7f5c78 != sub_ed6272e0[msg.sender].field_512:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if sub_ed6272e0[msg.sender].field_256 > sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
            else:
                if (10000 * block.timestamp) - (10000 * startDate) / block.timestamp - startDate != 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not periodLength:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_ad7f5c78:
                    revert with 0, 'SafeMath: division by zero'
                if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 > 10000:
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 != sub_ed6272e0[msg.sender].field_512:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if sub_ed6272e0[msg.sender].field_256 > 10000 * sub_ed6272e0[msg.sender].field_512 / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'vesting: no withdrawable tokens'
                    require ext_code.size(stakingTokenAddress)
                    staticcall stakingTokenAddress.0x2986c0e5 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256:
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                    else:
                        if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
                else:
                    if not (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                        if sub_ed6272e0[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / -sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, msg.sender);
                    else:
                        if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 != sub_ed6272e0[msg.sender].field_512:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if sub_ed6272e0[msg.sender].field_256 > sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[901 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
    else:
        require ext_code.size(sub_e545338cAddress)
        staticcall sub_e545338cAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_ed6272e0[address(msg.sender)].field_0 = 0
        sub_ed6272e0[address(msg.sender)].field_256 = 0
        sub_ed6272e0[address(msg.sender)].field_512 = ext_call.return_data[0]
        sub_ed6272e0[address(msg.sender)].field_768 = 1
        if startDate > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        require periodLength
        if startDate > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - startDate:
            if sub_ed6272e0[msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_ed6272e0[msg.sender].field_256 <= 0:
                revert with 0, 'vesting: no withdrawable tokens'
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x2986c0e5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not -sub_ed6272e0[msg.sender].field_256:
                if not stor11:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / stor11:
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                else:
                    if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
            else:
                if -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / -sub_ed6272e0[msg.sender].field_256 != stor12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                if not stor11:
                    revert with 0, 'SafeMath: division by zero'
                if not -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11:
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args 0, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                else:
                    if ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1029 len 31]
                    require ext_code.size(sub_e545338cAddress)
                    call sub_e545338cAddress.0x1e9a6950 with:
                         gas gas_remaining wei
                        args msg.sender, -sub_ed6272e0[msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stakingContractAddress, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(vestingTokenAddress)
                    call vestingTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if (ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < sub_ed6272e0[msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    sub_ed6272e0[msg.sender].field_256 = 0
                    sub_ed6272e0[msg.sender].field_768 = 1
                    sub_f68741d6 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                    sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                    emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, msg.sender);
        else:
            if not block.timestamp - startDate:
                if not periodLength:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_ad7f5c78:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / periodLength / sub_ad7f5c78 > 10000:
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 != sub_ed6272e0[msg.sender].field_512:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                    if sub_ed6272e0[msg.sender].field_256 > 10000 * sub_ed6272e0[msg.sender].field_512 / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'vesting: no withdrawable tokens'
                    require ext_code.size(stakingTokenAddress)
                    staticcall stakingTokenAddress.0x2986c0e5 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256:
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                    else:
                        if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
                else:
                    if not 0 / periodLength / sub_ad7f5c78:
                        if sub_ed6272e0[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / -sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, msg.sender);
                    else:
                        if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 0 / periodLength / sub_ad7f5c78 != sub_ed6272e0[msg.sender].field_512:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if sub_ed6272e0[msg.sender].field_256 > sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * 0 / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
            else:
                if (10000 * block.timestamp) - (10000 * startDate) / block.timestamp - startDate != 10000:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                if not periodLength:
                    revert with 0, 'SafeMath: division by zero'
                if not sub_ad7f5c78:
                    revert with 0, 'SafeMath: division by zero'
                if (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 > 10000:
                    if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 != sub_ed6272e0[msg.sender].field_512:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                    if sub_ed6272e0[msg.sender].field_256 > 10000 * sub_ed6272e0[msg.sender].field_512 / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                        revert with 0, 'vesting: no withdrawable tokens'
                    require ext_code.size(stakingTokenAddress)
                    staticcall stakingTokenAddress.0x2986c0e5 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256:
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                    else:
                        if (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                        if not stor11:
                            revert with 0, 'SafeMath: division by zero'
                        if not (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args 0, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                        else:
                            if ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                            require ext_code.size(sub_e545338cAddress)
                            call sub_e545338cAddress.0x1e9a6950 with:
                                 gas gas_remaining wei
                                args msg.sender, (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stakingContractAddress, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(vestingTokenAddress)
                            call vestingTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            if (ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 10000 * sub_ed6272e0[msg.sender].field_512 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_ed6272e0[msg.sender].field_256 = 10000 * sub_ed6272e0[msg.sender].field_512 / 10000
                            sub_ed6272e0[msg.sender].field_768 = 1
                            sub_f68741d6 += ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                            sub_84b12a90 = (10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                            emit Withdrawal((10000 * sub_ed6272e0[msg.sender].field_512 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (10000 * sub_ed6272e0[msg.sender].field_512 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
                else:
                    if not (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78:
                        if sub_ed6272e0[msg.sender].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not -sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / -sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, -sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = 0
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9
                                sub_84b12a90 -= sub_ed6272e0[msg.sender].field_256
                                emit Withdrawal(-sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * -1 * stor12 * sub_ed6272e0[msg.sender].field_256 / stor11 / 10^9, msg.sender);
                    else:
                        if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 != sub_ed6272e0[msg.sender].field_512:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[965 len 31]
                        if sub_ed6272e0[msg.sender].field_256 > sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 <= 0:
                            revert with 0, 'vesting: no withdrawable tokens'
                        require ext_code.size(stakingTokenAddress)
                        staticcall stakingTokenAddress.0x2986c0e5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256:
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * 0 / stor11 / 0 / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * 0 / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * 0 / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * 0 / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * 0 / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * 0 / stor11 / 10^9, msg.sender);
                        else:
                            if (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 != stor12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1093 len 31]
                            if not stor11:
                                revert with 0, 'SafeMath: division by zero'
                            if not (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11:
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args 0, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, 0, msg.sender);
                            else:
                                if ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1157 len 31]
                                require ext_code.size(sub_e545338cAddress)
                                call sub_e545338cAddress.0x1e9a6950 with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, 1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(vestingTokenAddress)
                                call vestingTokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                if (ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9) + sub_ed6272e0[msg.sender].field_0 < sub_ed6272e0[msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 < sub_ed6272e0[msg.sender].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_ed6272e0[msg.sender].field_0 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_ed6272e0[msg.sender].field_256 = sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000
                                sub_ed6272e0[msg.sender].field_768 = 1
                                sub_f68741d6 += ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9
                                sub_84b12a90 = (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256 + sub_84b12a90
                                emit Withdrawal((sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000) - sub_ed6272e0[msg.sender].field_256, ext_call.return_data[0] * (sub_ed6272e0[msg.sender].field_512 * (10000 * block.timestamp) - (10000 * startDate) / periodLength / sub_ad7f5c78 / 10000 * stor12) - (sub_ed6272e0[msg.sender].field_256 * stor12) / stor11 / 10^9, msg.sender);
}



}
