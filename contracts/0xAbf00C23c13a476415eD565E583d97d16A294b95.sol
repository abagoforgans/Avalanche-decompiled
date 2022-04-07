contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256[] arg1)
#  - sub_c6f7a6eb(?)
#  - kill(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor4;
address governorAddress;
uint256 stor55;
address pendingGovernorAddress;
array of struct sub_15b99487;
address sub_42294bfeAddress;
uint32 stor59;
address vaultAddress;
uint256 stor59;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address configAddress; offset 8
mapping of struct positions;
uint256 nextPositionID;
uint256 glbDebtShare;
uint256 glbDebtVal;
uint256 lastAccrueTime;
uint256 reservePool;

function reservePool() payable {
    return reservePool
}

function name() payable {
    return name[0 len name.length]
}

function governor() payable {
    return address(governorAddress)
}

function glbDebtShare() payable {
    return glbDebtShare
}

function sub_15b99487(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_15b99487[arg1].field_0
    return sub_15b99487[arg1][arg2].field_0, 
           sub_15b99487[arg1][arg2].field_256,
           sub_15b99487[arg1][arg2].field_512,
           sub_15b99487[arg1][arg2].field_768,
           sub_15b99487[arg1][arg2].field_1024
}

function totalSupply() payable {
    return totalSupply
}

function nextPositionID() payable {
    return nextPositionID
}

function decimals() payable {
    return decimals
}

function sub_42294bfe(?) payable {
    return sub_42294bfeAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function config() payable {
    return configAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function positions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return positions[arg1].field_0, positions[arg1].field_256, positions[arg1].field_512
}

function lastAccrueTime() payable {
    return lastAccrueTime
}

function glbDebtVal() payable {
    return glbDebtVal
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function updateConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    configAddress = arg1
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
}

function reduceReserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if arg1 > reservePool:
        revert with 0, 'SafeMath: subtraction overflow'
    reservePool -= arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x45524332303a20617070726f766520746f20746865207a65726f2061646472657300,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function debtShareToVal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == glbDebtShare:
        return arg1
    if not arg1:
        if glbDebtShare <= 0:
            revert with 0, 'SafeMath: division by zero'
        if glbDebtShare:
            return (0 / glbDebtShare)
    else:
        if glbDebtVal * arg1 / arg1 != glbDebtVal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if glbDebtShare <= 0:
            revert with 0, 'SafeMath: division by zero'
        if glbDebtShare:
            return (glbDebtVal * arg1 / glbDebtShare)
    ('iszero', ('stor', ('name', 'glbDebtShare', 65)))
    revert
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x45524332303a20617070726f766520746f20746865207a65726f2061646472657300,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function debtValToShare(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == glbDebtShare:
        return arg1
    if not arg1:
        if glbDebtVal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require glbDebtVal
        if (0 / glbDebtVal) + 1 < 0 / glbDebtVal:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / glbDebtVal) + 1)
    if glbDebtShare * arg1 / arg1 != glbDebtShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if glbDebtVal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require glbDebtVal
    if (glbDebtShare * arg1 / glbDebtVal) + 1 < glbDebtShare * arg1 / glbDebtVal:
        revert with 0, 'SafeMath: addition overflow'
    return ((glbDebtShare * arg1 / glbDebtVal) + 1)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x45524332303a20617070726f766520746f20746865207a65726f2061646472657300,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6b45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function recover(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    stor4++
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor4 + 1 != stor4:
        revert with 0, 'sReentrancyGuard: reentrant call'
}

function sub_2da7271b(?) payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_29a1f362(?) payable {
    require calldata.size - 4 >= 64
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if sub_42294bfeAddress == arg1:
        revert with 0, 'no rugs allowed'
    if address(vaultAddress) == arg1:
        revert with 0, 'no rugs allowed'
    mem[196 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call arg1 with:
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, '!safeApprove'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeApprove'
}

function positionInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(positions[arg1].field_0)
    staticcall positions[arg1].field_0.health(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == glbDebtShare:
        return ext_call.return_data[0], positions[arg1].field_512
    if not positions[arg1].field_512:
        if glbDebtShare <= 0:
            revert with 0, 'SafeMath: division by zero'
        if glbDebtShare:
            return ext_call.return_data[0], 0 / glbDebtShare
    else:
        if glbDebtVal * positions[arg1].field_512 / positions[arg1].field_512 != glbDebtVal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if glbDebtShare <= 0:
            revert with 0, 'SafeMath: division by zero'
        if glbDebtShare:
            return ext_call.return_data[0], glbDebtVal * positions[arg1].field_512 / glbDebtShare
    ('iszero', ('stor', ('name', 'glbDebtShare', 65)))
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6b45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7445524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x45524332303a20617070726f766520746f20746865207a65726f2061646472657300,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_23af9b2f(?) payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_42294bfeAddress)
    staticcall sub_42294bfeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
}

function sub_6b735cca(?) payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (glbDebtVal + ext_call.return_data[0] - reservePool)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_42294bfeAddress)
    staticcall sub_42294bfeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if glbDebtVal < 0:
        revert with 0, 'SafeMath: addition overflow'
    if reservePool > glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - reservePool)
}

function getPricePerFullShare() payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^18 * glbDebtVal) + (10^18 * ext_call.return_data[0]) - (10^18 * reservePool) / 10^18 != glbDebtVal + ext_call.return_data[0] - reservePool:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return ((10^18 * glbDebtVal) + (10^18 * ext_call.return_data[0]) - (10^18 * reservePool) / totalSupply)
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal < 0:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^18 * glbDebtVal) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0]) - (10^18 * reservePool) / 10^18 != glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - reservePool:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return ((10^18 * glbDebtVal) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0]) - (10^18 * reservePool) / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 3)))
    revert
}

function pendingInterest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= lastAccrueTime:
        return 0
    if lastAccrueTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.getInterestRate(uint256 rg1, uint256 rg2) with:
                gas gas_remaining wei
               args glbDebtVal, ext_call.return_data[0] - arg1
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(configAddress)
        staticcall configAddress.getInterestRate(uint256 rg1, uint256 rg2) with:
                gas gas_remaining wei
               args glbDebtVal, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if glbDebtVal * ext_call.return_data[0] / ext_call.return_data[0] != glbDebtVal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not glbDebtVal * ext_call.return_data[0]:
        return 0
    if (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / glbDebtVal * ext_call.return_data[0] != block.timestamp - lastAccrueTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18)
}

function withdrawReserve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    stor4++
    if arg2 > reservePool:
        revert with 0, 'SafeMath: subtraction overflow'
    reservePool -= arg2
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 > ext_call.return_data[0]:
            revert with 0, 'not enough funds'
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'not enough funds'
    require ext_code.size(sub_42294bfeAddress)
    staticcall sub_42294bfeAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        call sub_42294bfeAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[260 len 4]
    else:
        if ext_call.return_data[0] > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x77c7b8fc with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(vaultAddress))
            if arg2 - ext_call.return_data[0] >= 0:
                call address(vaultAddress).withdrawAll() with:
                     gas gas_remaining wei
            else:
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg2 - ext_call.return_data[0]:
                    if ext_call.return_data[0] + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0] + 1
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0] + 1)
                else:
                    if (10^18 * arg2) - (10^18 * ext_call.return_data[0]) / arg2 - ext_call.return_data[0] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0] + 1
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * arg2) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(vaultAddress))
            if arg2 - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                call address(vaultAddress).withdrawAll() with:
                     gas gas_remaining wei
            else:
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg2 - ext_call.return_data[0]:
                    if ext_call.return_data[0] + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0] + 1
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args (0 / ext_call.return_data[0] + 1)
                else:
                    if (10^18 * arg2) - (10^18 * ext_call.return_data[0]) / arg2 - ext_call.return_data[0] != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0] + 1
                    require ext_code.size(address(vaultAddress))
                    call address(vaultAddress).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ((10^18 * arg2) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
        call sub_42294bfeAddress with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if stor4 + 1 != stor4:
        revert with 0, 'sReentrancyGuard: reentrant call'
}

function initialize(address arg1, address arg2, address arg3, string arg4, string arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        sub_42294bfeAddress = arg2
        address(vaultAddress) = arg3
        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
        pendingGovernorAddress = 0
        stor4 = 1
        configAddress = arg1
        lastAccrueTime = block.timestamp
        nextPositionID = 1
        name.length = (2 * arg4.length) + 1
        s = 0
        idx = arg4 + 36
        while arg4 + arg4.length + 36 > idx:
            name[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg4.length + 31) >> 5
        while name.length + 31 / 32 > idx:
            name[idx] = 0
            idx = idx + 1
            continue 
        symbol.length = (2 * arg5.length) + 1
        s = 0
        idx = arg5 + 36
        while arg5 + arg5.length + 36 > idx:
            symbol[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg5.length + 31) >> 5
        while symbol.length + 31 / 32 > idx:
            symbol[idx] = 0
            idx = idx + 1
            continue 
        decimals = arg6
        mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call sub_42294bfeAddress with:
           funct uint32(stor59)
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
    else:
        if not ext_code.size(this.address):
            if uint8(stor0.field_8):
                sub_42294bfeAddress = arg2
                address(vaultAddress) = arg3
                uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                pendingGovernorAddress = 0
                stor4 = 1
                configAddress = arg1
                lastAccrueTime = block.timestamp
                nextPositionID = 1
                name.length = (2 * arg4.length) + 1
                s = 0
                idx = arg4 + 36
                while arg4 + arg4.length + 36 > idx:
                    name[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg4.length + 31) >> 5
                while name.length + 31 / 32 > idx:
                    name[idx] = 0
                    idx = idx + 1
                    continue 
                symbol.length = (2 * arg5.length) + 1
                s = 0
                idx = arg5 + 36
                while arg5 + arg5.length + 36 > idx:
                    symbol[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg5.length + 31) >> 5
                while symbol.length + 31 / 32 > idx:
                    symbol[idx] = 0
                    idx = idx + 1
                    continue 
                decimals = arg6
                mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call sub_42294bfeAddress with:
                   funct uint32(stor59)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                sub_42294bfeAddress = arg2
                address(vaultAddress) = arg3
                if not ext_code.size(this.address):
                    if uint8(stor0.field_8):
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        stor4 = 1
                        configAddress = arg1
                        lastAccrueTime = block.timestamp
                        nextPositionID = 1
                        name.length = (2 * arg4.length) + 1
                        s = 0
                        idx = arg4 + 36
                        while arg4 + arg4.length + 36 > idx:
                            name[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg4.length + 31) >> 5
                        while name.length + 31 / 32 > idx:
                            name[idx] = 0
                            idx = idx + 1
                            continue 
                        symbol.length = (2 * arg5.length) + 1
                        s = 0
                        idx = arg5 + 36
                        while arg5 + arg5.length + 36 > idx:
                            symbol[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg5.length + 31) >> 5
                        while symbol.length + 31 / 32 > idx:
                            symbol[idx] = 0
                            idx = idx + 1
                            continue 
                        decimals = arg6
                        mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call sub_42294bfeAddress with:
                           funct uint32(stor59)
                             gas gas_remaining wei
                            args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor4 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor4 = 1
                            uint8(stor0.field_8) = 0
                        configAddress = arg1
                        lastAccrueTime = block.timestamp
                        nextPositionID = 1
                        name.length = (2 * arg4.length) + 1
                        s = 0
                        idx = arg4 + 36
                        while arg4 + arg4.length + 36 > idx:
                            name[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg4.length + 31) >> 5
                        while name.length + 31 / 32 > idx:
                            name[idx] = 0
                            idx = idx + 1
                            continue 
                        symbol.length = (2 * arg5.length) + 1
                        s = 0
                        idx = arg5 + 36
                        while arg5 + arg5.length + 36 > idx:
                            symbol[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg5.length + 31) >> 5
                        while symbol.length + 31 / 32 > idx:
                            symbol[idx] = 0
                            idx = idx + 1
                            continue 
                        decimals = arg6
                        mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call sub_42294bfeAddress with:
                           funct uint32(stor59)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                else:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                    if uint8(stor0.field_8):
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        stor4 = 1
                        configAddress = arg1
                        lastAccrueTime = block.timestamp
                        nextPositionID = 1
                        name.length = (2 * arg4.length) + 1
                        s = 0
                        idx = arg4 + 36
                        while arg4 + arg4.length + 36 > idx:
                            name[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg4.length + 31) >> 5
                        while name.length + 31 / 32 > idx:
                            name[idx] = 0
                            idx = idx + 1
                            continue 
                        symbol.length = (2 * arg5.length) + 1
                        s = 0
                        idx = arg5 + 36
                        while arg5 + arg5.length + 36 > idx:
                            symbol[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg5.length + 31) >> 5
                        while symbol.length + 31 / 32 > idx:
                            symbol[idx] = 0
                            idx = idx + 1
                            continue 
                        decimals = arg6
                        mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call sub_42294bfeAddress with:
                           funct uint32(stor59)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        uint8(stor0.field_8) = 0
                        if not ext_code.size(this.address):
                            if uint8(stor0.field_8):
                                stor4 = 1
                                configAddress = arg1
                                lastAccrueTime = block.timestamp
                                nextPositionID = 1
                                name.length = (2 * arg4.length) + 1
                                s = 0
                                idx = arg4 + 36
                                while arg4 + arg4.length + 36 > idx:
                                    name[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg4.length + 31) >> 5
                                while name.length + 31 / 32 > idx:
                                    name[idx] = 0
                                    idx = idx + 1
                                    continue 
                                symbol.length = (2 * arg5.length) + 1
                                s = 0
                                idx = arg5 + 36
                                while arg5 + arg5.length + 36 > idx:
                                    symbol[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg5.length + 31) >> 5
                                while symbol.length + 31 / 32 > idx:
                                    symbol[idx] = 0
                                    idx = idx + 1
                                    continue 
                                decimals = arg6
                                mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call sub_42294bfeAddress with:
                                   funct uint32(stor59)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor4 = 1
                                uint8(stor0.field_8) = 0
                                configAddress = arg1
                                lastAccrueTime = block.timestamp
                                nextPositionID = 1
                                name.length = (2 * arg4.length) + 1
                                s = 0
                                idx = arg4 + 36
                                while arg4 + arg4.length + 36 > idx:
                                    name[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg4.length + 31) >> 5
                                while name.length + 31 / 32 > idx:
                                    name[idx] = 0
                                    idx = idx + 1
                                    continue 
                                symbol.length = (2 * arg5.length) + 1
                                s = 0
                                idx = arg5 + 36
                                while arg5 + arg5.length + 36 > idx:
                                    symbol[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg5.length + 31) >> 5
                                while symbol.length + 31 / 32 > idx:
                                    symbol[idx] = 0
                                    idx = idx + 1
                                    continue 
                                decimals = arg6
                                mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call sub_42294bfeAddress with:
                                   funct uint32(stor59)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
                        else:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor4 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor4 = 1
                                uint8(stor0.field_8) = 0
                            configAddress = arg1
                            lastAccrueTime = block.timestamp
                            nextPositionID = 1
                            name.length = (2 * arg4.length) + 1
                            s = 0
                            idx = arg4 + 36
                            while arg4 + arg4.length + 36 > idx:
                                name[s] = cd[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, arg4.length + 31) >> 5
                            while name.length + 31 / 32 > idx:
                                name[idx] = 0
                                idx = idx + 1
                                continue 
                            symbol.length = (2 * arg5.length) + 1
                            s = 0
                            idx = arg5 + 36
                            while arg5 + arg5.length + 36 > idx:
                                symbol[s] = cd[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, arg5.length + 31) >> 5
                            while symbol.length + 31 / 32 > idx:
                                symbol[idx] = 0
                                idx = idx + 1
                                continue 
                            decimals = arg6
                            mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call sub_42294bfeAddress with:
                               funct uint32(stor59)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        else:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
            if uint8(stor0.field_8):
                sub_42294bfeAddress = arg2
                address(vaultAddress) = arg3
                uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                pendingGovernorAddress = 0
                stor4 = 1
                configAddress = arg1
                lastAccrueTime = block.timestamp
                nextPositionID = 1
                name.length = (2 * arg4.length) + 1
                s = 0
                idx = arg4 + 36
                while arg4 + arg4.length + 36 > idx:
                    name[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg4.length + 31) >> 5
                while name.length + 31 / 32 > idx:
                    name[idx] = 0
                    idx = idx + 1
                    continue 
                symbol.length = (2 * arg5.length) + 1
                s = 0
                idx = arg5 + 36
                while arg5 + arg5.length + 36 > idx:
                    symbol[s] = cd[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg5.length + 31) >> 5
                while symbol.length + 31 / 32 > idx:
                    symbol[idx] = 0
                    idx = idx + 1
                    continue 
                decimals = arg6
                mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call sub_42294bfeAddress with:
                   funct uint32(stor59)
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                sub_42294bfeAddress = arg2
                address(vaultAddress) = arg3
                if not ext_code.size(this.address):
                    if uint8(stor0.field_8):
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        stor4 = 1
                        configAddress = arg1
                        lastAccrueTime = block.timestamp
                        nextPositionID = 1
                        name.length = (2 * arg4.length) + 1
                        s = 0
                        idx = arg4 + 36
                        while arg4 + arg4.length + 36 > idx:
                            name[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg4.length + 31) >> 5
                        while name.length + 31 / 32 > idx:
                            name[idx] = 0
                            idx = idx + 1
                            continue 
                        symbol.length = (2 * arg5.length) + 1
                        s = 0
                        idx = arg5 + 36
                        while arg5 + arg5.length + 36 > idx:
                            symbol[s] = cd[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = Mask(251, 0, arg5.length + 31) >> 5
                        while symbol.length + 31 / 32 > idx:
                            symbol[idx] = 0
                            idx = idx + 1
                            continue 
                        decimals = arg6
                        mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        call sub_42294bfeAddress with:
                           funct uint32(stor59)
                             gas gas_remaining wei
                            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        uint8(stor0.field_8) = 0
                        if not ext_code.size(this.address):
                            if uint8(stor0.field_8):
                                stor4 = 1
                                configAddress = arg1
                                lastAccrueTime = block.timestamp
                                nextPositionID = 1
                                name.length = (2 * arg4.length) + 1
                                s = 0
                                idx = arg4 + 36
                                while arg4 + arg4.length + 36 > idx:
                                    name[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg4.length + 31) >> 5
                                while name.length + 31 / 32 > idx:
                                    name[idx] = 0
                                    idx = idx + 1
                                    continue 
                                symbol.length = (2 * arg5.length) + 1
                                s = 0
                                idx = arg5 + 36
                                while arg5 + arg5.length + 36 > idx:
                                    symbol[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg5.length + 31) >> 5
                                while symbol.length + 31 / 32 > idx:
                                    symbol[idx] = 0
                                    idx = idx + 1
                                    continue 
                                decimals = arg6
                                mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call sub_42294bfeAddress with:
                                   funct uint32(stor59)
                                     gas gas_remaining wei
                                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor4 = 1
                                uint8(stor0.field_8) = 0
                                configAddress = arg1
                                lastAccrueTime = block.timestamp
                                nextPositionID = 1
                                name.length = (2 * arg4.length) + 1
                                s = 0
                                idx = arg4 + 36
                                while arg4 + arg4.length + 36 > idx:
                                    name[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg4.length + 31) >> 5
                                while name.length + 31 / 32 > idx:
                                    name[idx] = 0
                                    idx = idx + 1
                                    continue 
                                symbol.length = (2 * arg5.length) + 1
                                s = 0
                                idx = arg5 + 36
                                while arg5 + arg5.length + 36 > idx:
                                    symbol[s] = cd[idx]
                                    s = s + 1
                                    idx = idx + 32
                                    continue 
                                idx = Mask(251, 0, arg5.length + 31) >> 5
                                while symbol.length + 31 / 32 > idx:
                                    symbol[idx] = 0
                                    idx = idx + 1
                                    continue 
                                decimals = arg6
                                mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                                call sub_42294bfeAddress with:
                                   funct uint32(stor59)
                                     gas gas_remaining wei
                                    args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
                        else:
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor4 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor4 = 1
                                uint8(stor0.field_8) = 0
                            configAddress = arg1
                            lastAccrueTime = block.timestamp
                            nextPositionID = 1
                            name.length = (2 * arg4.length) + 1
                            s = 0
                            idx = arg4 + 36
                            while arg4 + arg4.length + 36 > idx:
                                name[s] = cd[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, arg4.length + 31) >> 5
                            while name.length + 31 / 32 > idx:
                                name[idx] = 0
                                idx = idx + 1
                                continue 
                            symbol.length = (2 * arg5.length) + 1
                            s = 0
                            idx = arg5 + 36
                            while arg5 + arg5.length + 36 > idx:
                                symbol[s] = cd[idx]
                                s = s + 1
                                idx = idx + 32
                                continue 
                            idx = Mask(251, 0, arg5.length + 31) >> 5
                            while symbol.length + 31 / 32 > idx:
                                symbol[idx] = 0
                                idx = idx + 1
                                continue 
                            decimals = arg6
                            mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            call sub_42294bfeAddress with:
                               funct uint32(stor59)
                                 gas gas_remaining wei
                                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
                else:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                    if uint8(stor0.field_8):
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        stor4 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint256(stor55) = msg.sender or Mask(96, 160, uint256(stor55))
                        pendingGovernorAddress = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor4 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor4 = 1
                            uint8(stor0.field_8) = 0
                    configAddress = arg1
                    lastAccrueTime = block.timestamp
                    nextPositionID = 1
                    name.length = (2 * arg4.length) + 1
                    s = 0
                    idx = arg4 + 36
                    while arg4 + arg4.length + 36 > idx:
                        name[s] = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg4.length + 31) >> 5
                    while name.length + 31 / 32 > idx:
                        name[idx] = 0
                        idx = idx + 1
                        continue 
                    symbol.length = (2 * arg5.length) + 1
                    s = 0
                    idx = arg5 + 36
                    while arg5 + arg5.length + 36 > idx:
                        symbol[s] = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, arg5.length + 31) >> 5
                    while symbol.length + 31 / 32 > idx:
                        symbol[idx] = 0
                        idx = idx + 1
                        continue 
                    decimals = arg6
                    mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor59), uint32(stor59), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    call sub_42294bfeAddress with:
                       funct uint32(stor59)
                         gas gas_remaining wei
                        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor59):
            revert with 0, '!safeApprove'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeApprove'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeApprove'
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function emergencyWithdraw() payable {
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = 0
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        else:
            if (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != glbDebtVal + ext_call.return_data[0] - reservePool:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = 0
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal < 0:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = 0
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        else:
            if (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - reservePool:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if balanceOf[address(msg.sender)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] = 0
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * balanceOf[address(msg.sender)]) + (ext_call.return_data[0] * balanceOf[address(msg.sender)]) - (reservePool * balanceOf[address(msg.sender)]) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
}

function withdraw(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp > lastAccrueTime:
        if lastAccrueTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(vaultAddress))
        staticcall address(vaultAddress).0x77c7b8fc with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.getInterestRate(uint256 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args glbDebtVal, ext_call.return_data[0]
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(configAddress)
            staticcall configAddress.getInterestRate(uint256 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args glbDebtVal, (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.getReservePoolBps() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reservePool < reservePool:
                revert with 0, 'SafeMath: addition overflow'
            if glbDebtVal < glbDebtVal:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if glbDebtVal * ext_call.return_data[0] / ext_call.return_data[0] != glbDebtVal:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not glbDebtVal * ext_call.return_data[0]:
                require ext_code.size(configAddress)
                staticcall configAddress.getReservePoolBps() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reservePool < reservePool:
                    revert with 0, 'SafeMath: addition overflow'
                if glbDebtVal < glbDebtVal:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / glbDebtVal * ext_call.return_data[0] != block.timestamp - lastAccrueTime:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(configAddress)
                staticcall configAddress.getReservePoolBps() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18:
                    if reservePool < reservePool:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if ext_call.return_data[0] * (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18 / (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18 != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (ext_call.return_data[0] * (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18 / 10000) + reservePool < reservePool:
                        revert with 0, 'SafeMath: addition overflow'
                    reservePool += ext_call.return_data[0] * (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18 / 10000
                if ((block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18) + glbDebtVal < glbDebtVal:
                    revert with 0, 'SafeMath: addition overflow'
                glbDebtVal += (block.timestamp * glbDebtVal * ext_call.return_data[0]) - (lastAccrueTime * glbDebtVal * ext_call.return_data[0]) / 10^18
        lastAccrueTime = block.timestamp
    stor4++
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(vaultAddress))
    staticcall address(vaultAddress).0x77c7b8fc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x77c7b8fc with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        else:
            if (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / arg1 != glbDebtVal + ext_call.return_data[0] - reservePool:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x77c7b8fc with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_42294bfeAddress)
        staticcall sub_42294bfeAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if glbDebtVal < 0:
            revert with 0, 'SafeMath: addition overflow'
        if reservePool > glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x77c7b8fc with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / totalSupply > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if (0 / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (0 / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / (0 / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * 0 / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        else:
            if (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / arg1 != glbDebtVal + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - reservePool:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(vaultAddress))
            staticcall address(vaultAddress).0x77c7b8fc with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                48,
                                0x735574696c697a6174696f6e20746f6f20686967682c20776974686472617720616e20736d616c6c657220616d6f756e,
                                mem[212 len 16]
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            balanceOf[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(sub_42294bfeAddress)
            staticcall sub_42294bfeAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply:
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) >> 32
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) << 224, mem[260 len 4]
            else:
                if ext_call.return_data[0] > (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(vaultAddress))
                staticcall address(vaultAddress).0x77c7b8fc with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] >= 0:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require ext_code.size(address(vaultAddress))
                    if ((glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] >= ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                        call address(vaultAddress).withdrawAll() with:
                             gas gas_remaining wei
                    else:
                        staticcall address(vaultAddress).0x77c7b8fc with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not ((glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0]:
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / ext_call.return_data[0] + 1)
                        else:
                            if (10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ((glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - ext_call.return_data[0] != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if ext_call.return_data[0] + 1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0] + 1
                            require ext_code.size(address(vaultAddress))
                            call address(vaultAddress).withdraw(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ((10^18 * (glbDebtVal * arg1) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * arg1) + (ext_call.return_data[0] * arg1) - (reservePool * arg1) / totalSupply) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0] + 1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_42294bfeAddress)
                staticcall sub_42294bfeAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call sub_42294bfeAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, '!safeTransfer'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, '!safeTransfer'
    if totalSupply:
        if totalSupply < 10^17:
            revert with 0, 'withdraw: total supply too low'
    if stor4 + 1 != stor4:
        revert with 0, 'sReentrancyGuard: reentrant call'
}



}
