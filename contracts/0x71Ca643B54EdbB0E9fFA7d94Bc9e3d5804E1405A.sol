contract main {




// =====================  Runtime code  =====================


address policyAddress;
address stor1;
address vestingTokenAddress;
address stakingContractAddress;
address stakingTokenAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of struct sub_ed6272e0;

function policy() payable {
    return policyAddress
}

function vestingToken() payable {
    return vestingTokenAddress
}

function stakingToken() payable {
    return stakingTokenAddress
}

function sub_ed6272e0(?) payable {
    require calldata.size - 4 >= 32
    return sub_ed6272e0[arg1].field_0, 
           sub_ed6272e0[arg1].field_256,
           sub_ed6272e0[arg1].field_512,
           sub_ed6272e0[arg1].field_768,
           sub_ed6272e0[arg1].field_1024,
           sub_ed6272e0[arg1].field_1280,
           bool(sub_ed6272e0[arg1].field_1536)
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if policyAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipPushed(policyAddress, 0);
    policyAddress = 0
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x734f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(policyAddress, stor1);
    policyAddress = stor1
}

function sub_e702b375(?) payable {
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((sub_ed6272e0[msg.sender].field_0 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]))
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(policyAddress, arg1);
    stor1 = arg1
}

function sub_77db53bf(?) payable {
    require calldata.size - 4 >= 160
    if policyAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if sub_ed6272e0[address(arg1)].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7241647265737320616c726561647920686176652056657374656420746f6b656e,
                    mem[197 len 31]
    sub_ed6272e0[address(arg1)].field_0 = arg2
    sub_ed6272e0[address(arg1)].field_256 = 0
    sub_ed6272e0[address(arg1)].field_512 = 0
    sub_ed6272e0[address(arg1)].field_768 = arg3
    sub_ed6272e0[address(arg1)].field_1024 = arg4
    sub_ed6272e0[address(arg1)].field_1280 = arg5
    sub_ed6272e0[address(arg1)].field_1536 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
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
    stor6 += arg1
}

function setStaking(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
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

function withdraw() payable {
    if not sub_ed6272e0[msg.sender].field_1536:
        revert with 0, 'not authorized'
    if sub_ed6272e0[msg.sender].field_512 >= sub_ed6272e0[msg.sender].field_0:
        revert with 0, 'Already withdrawn all tokens'
    if sub_ed6272e0[msg.sender].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require sub_ed6272e0[msg.sender].field_1024
    if not sub_ed6272e0[msg.sender].field_1280:
        revert with 0, 'SafeMath: division by zero'
    if block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 <= sub_ed6272e0[msg.sender].field_1280:
        if not block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024:
            if sub_ed6272e0[msg.sender].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_ed6272e0[msg.sender].field_512 <= 0:
                revert with 0, 'vesting: no withdrawable tokens'
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x2986c0e5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not -sub_ed6272e0[msg.sender].field_512:
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
                if sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = 0
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor7 -= sub_ed6272e0[msg.sender].field_512
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_512, 0, msg.sender);
            else:
                if -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / -sub_ed6272e0[msg.sender].field_512 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingContractAddress, -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if (-1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9) + sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = (-1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9) + sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = 0
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor5 += -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9
                stor7 -= sub_ed6272e0[msg.sender].field_512
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_512, -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9, msg.sender);
        else:
            if sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 / block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 != sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if sub_ed6272e0[msg.sender].field_512 > sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512 <= 0:
                revert with 0, 'vesting: no withdrawable tokens'
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x2986c0e5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512:
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
                if sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor7 = stor7 + (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512
                emit Withdrawal((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512, 0, msg.sender);
            else:
                if (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingContractAddress, (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if ((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9) + sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = ((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9) + sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor5 += (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9
                stor7 = stor7 + (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512
                emit Withdrawal((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024) - sub_ed6272e0[msg.sender].field_512, (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * block.timestamp - sub_ed6272e0[msg.sender].field_768 / sub_ed6272e0[msg.sender].field_1024 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9, msg.sender);
    else:
        if not sub_ed6272e0[msg.sender].field_1280:
            if sub_ed6272e0[msg.sender].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -sub_ed6272e0[msg.sender].field_512 <= 0:
                revert with 0, 'vesting: no withdrawable tokens'
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x2986c0e5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not -sub_ed6272e0[msg.sender].field_512:
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
                if sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = 0
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor7 -= sub_ed6272e0[msg.sender].field_512
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_512, 0, msg.sender);
            else:
                if -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / -sub_ed6272e0[msg.sender].field_512 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingContractAddress, -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if (-1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9) + sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = (-1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9) + sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = 0
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor5 += -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9
                stor7 -= sub_ed6272e0[msg.sender].field_512
                emit Withdrawal(-sub_ed6272e0[msg.sender].field_512, -1 * ext_call.return_data[0] * sub_ed6272e0[msg.sender].field_512 / 10^9, msg.sender);
        else:
            if sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 / sub_ed6272e0[msg.sender].field_1280 != sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if sub_ed6272e0[msg.sender].field_512 > sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280:
                revert with 0, 'SafeMath: subtraction overflow'
            if (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512 <= 0:
                revert with 0, 'vesting: no withdrawable tokens'
            require ext_code.size(stakingTokenAddress)
            staticcall stakingTokenAddress.0x2986c0e5 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512:
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
                if sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor7 = stor7 + (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512
                emit Withdrawal((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512, 0, msg.sender);
            else:
                if (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[837 len 31]
                require ext_code.size(stakingTokenAddress)
                call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stakingContractAddress, (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(vestingTokenAddress)
                call vestingTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                if ((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9) + sub_ed6272e0[msg.sender].field_256 < sub_ed6272e0[msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 < sub_ed6272e0[msg.sender].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                sub_ed6272e0[address(msg.sender)].field_0 = sub_ed6272e0[msg.sender].field_0
                sub_ed6272e0[address(msg.sender)].field_256 = ((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9) + sub_ed6272e0[msg.sender].field_256
                sub_ed6272e0[address(msg.sender)].field_512 = sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_768 = sub_ed6272e0[msg.sender].field_768
                sub_ed6272e0[address(msg.sender)].field_1024 = sub_ed6272e0[msg.sender].field_1024
                sub_ed6272e0[address(msg.sender)].field_1280 = sub_ed6272e0[msg.sender].field_1280
                sub_ed6272e0[address(msg.sender)].field_1536 = uint8(bool(sub_ed6272e0[msg.sender].field_1536))
                stor5 += (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9
                stor7 = stor7 + (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512
                emit Withdrawal((sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280) - sub_ed6272e0[msg.sender].field_512, (sub_ed6272e0[msg.sender].field_0 / sub_ed6272e0[msg.sender].field_1280 * sub_ed6272e0[msg.sender].field_1280 * ext_call.return_data[0]) - (sub_ed6272e0[msg.sender].field_512 * ext_call.return_data[0]) / 10^9, msg.sender);
}



}
