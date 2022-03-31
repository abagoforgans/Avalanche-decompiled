contract main {




// =====================  Runtime code  =====================


address owner;
address depositTokenAddress;
address rewardTokenAddress;
address sysAddr;
address stakingContractAddress;
uint256 totalDeposits;
uint256 totalSupply;
uint256 sub_9ab7fa1c;
uint8 depositsEnabled;
uint256 sub_d995f24b;
uint256 sub_e53798d2;
mapping of uint256 balance;

function sysAddr() payable {
    return sysAddr
}

function totalSupply() payable {
    return totalSupply
}

function depositsEnabled() payable {
    return bool(depositsEnabled)
}

function totalDeposits() payable {
    return totalDeposits
}

function owner() payable {
    return owner
}

function sub_9ab7fa1c(?) payable {
    return sub_9ab7fa1c
}

function depositToken() payable {
    return depositTokenAddress
}

function sub_d995f24b(?) payable {
    return sub_d995f24b
}

function sub_e53798d2(?) payable {
    return sub_e53798d2
}

function stakingContract() payable {
    return stakingContractAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return balance[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_647abe2e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sysAddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_16da8223(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d995f24b = arg1
}

function sub_e6199df4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9ab7fa1c = arg1
}

function setSystemFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e53798d2 = arg1
}

function setDepositsEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != bool(depositsEnabled)
    depositsEnabled = uint8(arg1)
}

function checkReward() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setAllowances() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stakingContractAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    if totalDeposits * totalSupply / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalDeposits * totalSupply:
        return 0
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if totalDeposits * arg1 / arg1 != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (totalDeposits * arg1 / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 6)))
    revert
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return arg1
    if totalDeposits * totalSupply / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalDeposits * totalSupply:
        return arg1
    if not arg1:
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalDeposits:
            return (0 / totalDeposits)
    else:
        if totalSupply * arg1 / arg1 != totalSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalDeposits:
            return (totalSupply * arg1 / totalDeposits)
    ('iszero', ('stor', ('name', 'totalDeposits', 5)))
    revert
}

function rescueDeployedFunds(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x30434e524175746f636f6d706f756e643a3a7265736375654465706c6f79656446756e64,
                    mem[200 len 28]
    totalDeposits = ext_call.return_data[0]
    emit Reinvest(ext_call.return_data[0], totalSupply);
    if 1 == bool(depositsEnabled):
        if arg2 == 1:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            require bool(depositsEnabled) != 0
            depositsEnabled = 0
}

function depositFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if bool(depositsEnabled) != 1:
        revert with 0, 'CNRAutocompound::deposit false'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 <= 0:
        revert with 0, 'CNRAutocompound::_stakeCNRToken'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if arg2 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if arg2 + balance[address(arg1)] < balance[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balance[address(arg1)] += arg2
    else:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalDeposits * totalSupply:
            if arg2 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
            if arg2 + balance[address(arg1)] < balance[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balance[address(arg1)] += arg2
        else:
            if not arg2:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (0 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if (0 / totalDeposits) + balance[address(arg1)] < balance[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balance[address(arg1)] += 0 / totalDeposits
            else:
                if totalSupply * arg2 / arg2 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (totalSupply * arg2 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg2 / totalDeposits
                if (totalSupply * arg2 / totalDeposits) + balance[address(arg1)] < balance[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balance[address(arg1)] += totalSupply * arg2 / totalDeposits
    if arg2 + totalDeposits < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg2
    emit Deposit(arg2, arg1);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(depositsEnabled) != 1:
        revert with 0, 'CNRAutocompound::deposit false'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg1 <= 0:
        revert with 0, 'CNRAutocompound::_stakeCNRToken'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balance[address(msg.sender)] < balance[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balance[address(msg.sender)] += arg1
    else:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalDeposits * totalSupply:
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balance[address(msg.sender)] < balance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balance[address(msg.sender)] += arg1
        else:
            if not arg1:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (0 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if (0 / totalDeposits) + balance[address(msg.sender)] < balance[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balance[address(msg.sender)] += 0 / totalDeposits
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (totalSupply * arg1 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalDeposits
                if (totalSupply * arg1 / totalDeposits) + balance[address(msg.sender)] < balance[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balance[address(msg.sender)] += totalSupply * arg1 / totalDeposits
    if arg1 + totalDeposits < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg1
    emit Deposit(arg1, msg.sender);
}

function depositWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.permit(address rg1, address rg2, uint256 rg3, uint256 rg4, uint8 rg5, bytes32 rg6, bytes32 rg7) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), this.address, arg1, arg2, arg3 << 248, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if bool(depositsEnabled) != 1:
        revert with 0, 'CNRAutocompound::deposit false'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg1 <= 0:
        revert with 0, 'CNRAutocompound::_stakeCNRToken'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.stake(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balance[address(msg.sender)] < balance[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balance[address(msg.sender)] += arg1
    else:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        Mask(248, 0, arg2)
        if not totalDeposits * totalSupply:
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balance[address(msg.sender)] < balance[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balance[address(msg.sender)] += arg1
        else:
            if not arg1:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (0 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if (0 / totalDeposits) + balance[address(msg.sender)] < balance[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balance[address(msg.sender)] += 0 / totalDeposits
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                Mask(248, 0, arg2)
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalDeposits
                if (totalSupply * arg1 / totalDeposits) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / totalDeposits
                if (totalSupply * arg1 / totalDeposits) + balance[address(msg.sender)] < balance[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balance[address(msg.sender)] += totalSupply * arg1 / totalDeposits
    if arg1 + totalDeposits < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg1
    emit Deposit(arg1, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77434e524175746f3a3a77697468647261773a20616d6f756e742063616e7420626520,
                    mem[199 len 29]
    if arg1 > balance[msg.sender]:
        revert with 0, 'CNRAuto::withdraw: no balance'
    if totalSupply:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalDeposits * totalSupply:
            if not arg1:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 0 / totalSupply:
                    if 0 / totalSupply <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x64434e524175746f636f6d706f756e643a3a5f77697468647261774465706f736974546f6b656e,
                                    mem[203 len 25]
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (0 / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'CNRAutocompound::withdraw'
                    if arg1 > balance[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balance[msg.sender] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalDeposits -= 0 / totalSupply
                    emit Withdraw((0 / totalSupply), msg.sender);
            else:
                if totalDeposits * arg1 / arg1 != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalDeposits * arg1 / totalSupply:
                    if totalDeposits * arg1 / totalSupply <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x64434e524175746f636f6d706f756e643a3a5f77697468647261774465706f736974546f6b656e,
                                    mem[203 len 25]
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (totalDeposits * arg1 / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, totalDeposits * arg1 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'CNRAutocompound::withdraw'
                    if arg1 > balance[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balance[msg.sender] -= arg1
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if totalDeposits * arg1 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalDeposits -= totalDeposits * arg1 / totalSupply
                    emit Withdraw((totalDeposits * arg1 / totalSupply), msg.sender);
}

function exit() payable {
    if not balance[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77434e524175746f3a3a77697468647261773a20616d6f756e742063616e7420626520,
                    mem[199 len 29]
    if balance[msg.sender] > balance[msg.sender]:
        revert with 0, 'CNRAuto::withdraw: no balance'
    if totalSupply:
        if totalDeposits * totalSupply / totalSupply != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalDeposits * totalSupply:
            if not balance[msg.sender]:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if 0 / totalSupply:
                    if 0 / totalSupply <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x64434e524175746f636f6d706f756e643a3a5f77697468647261774465706f736974546f6b656e,
                                    mem[203 len 25]
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (0 / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, 0 / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'CNRAutocompound::withdraw'
                    if balance[msg.sender] > balance[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balance[msg.sender] = 0
                    if balance[msg.sender] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balance[msg.sender]
                    if 0 / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalDeposits -= 0 / totalSupply
                    emit Withdraw((0 / totalSupply), msg.sender);
            else:
                if totalDeposits * balance[msg.sender] / balance[msg.sender] != totalDeposits:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if totalDeposits * balance[msg.sender] / totalSupply:
                    if totalDeposits * balance[msg.sender] / totalSupply <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x64434e524175746f636f6d706f756e643a3a5f77697468647261774465706f736974546f6b656e,
                                    mem[203 len 25]
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.0x2e1a7d4d with:
                         gas gas_remaining wei
                        args (totalDeposits * balance[msg.sender] / totalSupply)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(depositTokenAddress)
                    call depositTokenAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, totalDeposits * balance[msg.sender] / totalSupply
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'CNRAutocompound::withdraw'
                    if balance[msg.sender] > balance[msg.sender]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balance[msg.sender] = 0
                    if balance[msg.sender] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= balance[msg.sender]
                    if totalDeposits * balance[msg.sender] / totalSupply > totalDeposits:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalDeposits -= totalDeposits * balance[msg.sender] / totalSupply
                    emit Withdraw((totalDeposits * balance[msg.sender] / totalSupply), msg.sender);
}

function reinvest() payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_9ab7fa1c:
        revert with 0, 'CNRAutocompound::reinvest'
    require ext_code.size(stakingContractAddress)
    call stakingContractAddress.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'CNRAutocompound::_stakeCNRToken'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits += ext_call.return_data[0]
            emit Reinvest(ext_call.return_data[0] + totalDeposits, totalSupply);
        else:
            if sub_d995f24b * ext_call.return_data[0] / ext_call.return_data[0] != sub_d995f24b:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_d995f24b * ext_call.return_data[0] / 10000:
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_d995f24b * ext_call.return_data[0] / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x73434e524175746f636f6d706f756e643a3a5f7265696e766573742c207265776172,
                                mem[198 len 30]
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_d995f24b * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - (sub_d995f24b * ext_call.return_data[0] / 10000) <= 0:
                revert with 0, 'CNRAutocompound::_stakeCNRToken'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (sub_d995f24b * ext_call.return_data[0] / 10000))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] - (sub_d995f24b * ext_call.return_data[0] / 10000) + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits = ext_call.return_data[0] - (sub_d995f24b * ext_call.return_data[0] / 10000) + totalDeposits
            emit Reinvest(ext_call.return_data[0] - (sub_d995f24b * ext_call.return_data[0] / 10000) + totalDeposits, totalSupply);
    else:
        if sub_e53798d2 * ext_call.return_data[0] / ext_call.return_data[0] != sub_e53798d2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_e53798d2 * ext_call.return_data[0] / 10000:
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args sysAddr, sub_e53798d2 * ext_call.return_data[0] / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'CNRAutocompound::_systemfee, fee'
        if not ext_call.return_data[0]:
            if sub_e53798d2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000):
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) <= 0:
                revert with 0, 'CNRAutocompound::_stakeCNRToken'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits = ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) + totalDeposits
            emit Reinvest(ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) + totalDeposits, totalSupply);
        else:
            if sub_d995f24b * ext_call.return_data[0] / ext_call.return_data[0] != sub_d995f24b:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_d995f24b * ext_call.return_data[0] / 10000:
                require ext_code.size(rewardTokenAddress)
                call rewardTokenAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_d995f24b * ext_call.return_data[0] / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x73434e524175746f636f6d706f756e643a3a5f7265696e766573742c207265776172,
                                mem[198 len 30]
            if sub_e53798d2 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_d995f24b * ext_call.return_data[0] / 10000 > ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000):
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) - (sub_d995f24b * ext_call.return_data[0] / 10000) <= 0:
                revert with 0, 'CNRAutocompound::_stakeCNRToken'
            require ext_code.size(stakingContractAddress)
            call stakingContractAddress.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) - (sub_d995f24b * ext_call.return_data[0] / 10000))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) - (sub_d995f24b * ext_call.return_data[0] / 10000) + totalDeposits < totalDeposits:
                revert with 0, 'SafeMath: addition overflow'
            totalDeposits = ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) - (sub_d995f24b * ext_call.return_data[0] / 10000) + totalDeposits
            emit Reinvest(ext_call.return_data[0] - (sub_e53798d2 * ext_call.return_data[0] / 10000) - (sub_d995f24b * ext_call.return_data[0] / 10000) + totalDeposits, totalSupply);
}



}
