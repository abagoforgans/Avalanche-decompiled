contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - manage(address arg1, uint256 arg2)
#  - deposit(uint256 arg1, address arg2, uint256 arg3)
#  - repayDebtWithReserve(uint256 arg1, address arg2)
#
address managerAddress;
address stor1;
address sub_bd612a3eAddress;
uint256 secondsNeededForQueue;
array of address reserveTokens;
mapping of uint8 stor5;
mapping of uint256 reserveTokenQueue;
array of address reserveDepositors;
mapping of uint8 stor8;
mapping of uint256 reserveDepositorQueue;
array of address reserveSpenders;
mapping of uint8 stor11;
mapping of uint256 reserveSpenderQueue;
array of address liquidityTokens;
mapping of uint8 stor14;
mapping of uint256 liquidityTokenQueue;
array of address liquidityDepositors;
mapping of uint8 stor17;
mapping of uint256 liquidityDepositorQueue;
mapping of address bondCalculator;
array of address reserveManagers;
mapping of uint8 stor21;
mapping of uint256 reserveManagerQueue;
array of address liquidityManagers;
mapping of uint8 stor24;
mapping of uint256 liquidityManagerQueue;
array of address debtors;
mapping of uint8 stor27;
mapping of uint256 debtorQueue;
mapping of uint256 debtorBalance;
array of address rewardManagers;
mapping of uint8 stor31;
mapping of uint256 rewardManagerQueue;
address sub_71afe8b0Address;
uint256 sub_7373a7e6;
address sub_4df83e60Address;
uint256 totalReserves;
uint256 totalDebt;
array of address stor2481041784956016742021570618494952475758789857281704946240779902470294861374;
array of address stor36516136433507714556481507284757523525550975291680945358964353894568634540880;
array of address stor89622809563556123081897041840816014639138942293158154584485133346364573191189;
array of address stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function reserveManagers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveManagers.length
    return reserveManagers[arg1]
}

function debtorBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return debtorBalance[arg1]
}

function isReserveDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor8[arg1]))
}

function bondCalculator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bondCalculator[arg1]
}

function reserveSpenders(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveSpenders.length
    return reserveSpenders[arg1]
}

function manager() payable {
    return managerAddress
}

function sub_4df83e60(?) payable {
    return sub_4df83e60Address
}

function isRewardManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor31[arg1]))
}

function isReserveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor5[arg1]))
}

function reserveDepositors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveDepositors.length
    return reserveDepositors[arg1]
}

function liquidityManagers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < liquidityManagers.length
    return liquidityManagers[arg1]
}

function sub_71afe8b0(?) payable {
    return sub_71afe8b0Address
}

function sub_7373a7e6(?) payable {
    return sub_7373a7e6
}

function reserveTokenQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveTokenQueue[arg1]
}

function secondsNeededForQueue() payable {
    return secondsNeededForQueue
}

function debtors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < debtors.length
    return debtors[arg1]
}

function isReserveSpender(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor11[arg1]))
}

function LiquidityTokenQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return liquidityTokenQueue[arg1]
}

function liquidityDepositors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < liquidityDepositors.length
    return liquidityDepositors[arg1]
}

function totalReserves() payable {
    return totalReserves
}

function reserveDepositorQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveDepositorQueue[arg1]
}

function isLiquidityDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor17[arg1]))
}

function isLiquidityToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor14[arg1]))
}

function LiquidityManagerQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return liquidityManagerQueue[arg1]
}

function ReserveManagerQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveManagerQueue[arg1]
}

function rewardManagers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardManagers.length
    return rewardManagers[arg1]
}

function sub_bd612a3e(?) payable {
    return sub_bd612a3eAddress
}

function reserveSpenderQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveSpenderQueue[arg1]
}

function debtorQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return debtorQueue[arg1]
}

function reserveTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveTokens.length
    return reserveTokens[arg1]
}

function isLiquidityManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor24[arg1]))
}

function isReserveManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor21[arg1]))
}

function isDebtor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor27[arg1]))
}

function rewardManagerQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardManagerQueue[arg1]
}

function totalDebt() payable {
    return totalDebt
}

function liquidityTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < liquidityTokens.length
    return liquidityTokens[arg1]
}

function LiquidityDepositorQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return liquidityDepositorQueue[arg1]
}

function _fallback() payable {
    revert
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: must be new owner to pull'
    emit OwnershipPulled(managerAddress, stor1);
    managerAddress = stor1
}

function renounceManagement() payable {
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the Manager'
    emit OwnershipPushed(managerAddress, 0);
    managerAddress = 0
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the Manager'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipPushed(managerAddress, arg1);
    stor1 = arg1
}

function excessReserves() payable {
    require ext_code.size(sub_bd612a3eAddress)
    staticcall sub_bd612a3eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalDebt > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 17
    if ext_call.return_data[0] - totalDebt > totalReserves:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalReserves < ext_call.return_data[0] - totalDebt:
        revert with 0, 17
    return (totalReserves - ext_call.return_data[0] + totalDebt)
}

function sub_2aa06aa9(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor27[msg.sender]):
        revert with 0, 'Not approved as a Debtor'
    require ext_code.size(sub_bd612a3eAddress)
    call sub_bd612a3eAddress.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 > debtorBalance[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if debtorBalance[msg.sender] < arg1:
        revert with 0, 17
    debtorBalance[msg.sender] -= arg1
    if arg1 > totalDebt:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalDebt < arg1:
        revert with 0, 17
    totalDebt -= arg1
    emit RepayDebt(arg1, arg1, msg.sender, sub_bd612a3eAddress);
}

function mintRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor31[msg.sender]):
        revert with 0, 'Not approved as reward manager'
    require ext_code.size(sub_bd612a3eAddress)
    staticcall sub_bd612a3eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalDebt > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 17
    if ext_call.return_data[0] - totalDebt > totalReserves:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalReserves < ext_call.return_data[0] - totalDebt:
        revert with 0, 17
    if arg2 > totalReserves - ext_call.return_data[0] + totalDebt:
        revert with 0, 'Insufficient reserves'
    require ext_code.size(sub_bd612a3eAddress)
    call sub_bd612a3eAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RewardsMinted(arg2, msg.sender, arg1);
}

function queue(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < 10
    require arg2 == arg2
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the Manager'
    require arg2
    if arg1 > 9:
        revert with 0, 33
    if not arg1:
        if block.timestamp > !secondsNeededForQueue:
            revert with 0, 17
        if block.timestamp + secondsNeededForQueue < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        reserveDepositorQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
    else:
        if arg1 > 9:
            revert with 0, 33
        if arg1 == 1:
            if block.timestamp > !secondsNeededForQueue:
                revert with 0, 17
            if block.timestamp + secondsNeededForQueue < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            reserveSpenderQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
        else:
            if arg1 > 9:
                revert with 0, 33
            if arg1 == 2:
                if block.timestamp > !secondsNeededForQueue:
                    revert with 0, 17
                if block.timestamp + secondsNeededForQueue < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                reserveTokenQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
            else:
                if arg1 > 9:
                    revert with 0, 33
                if arg1 == 3:
                    if not secondsNeededForQueue:
                        if block.timestamp > -1:
                            revert with 0, 17
                        if block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        reserveManagerQueue[address(arg2)] = block.timestamp
                    else:
                        if secondsNeededForQueue and 2 > -1 / secondsNeededForQueue:
                            revert with 0, 17
                        if not secondsNeededForQueue:
                            revert with 0, 18
                        if 2 * secondsNeededForQueue / secondsNeededForQueue != 2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if block.timestamp > !(2 * secondsNeededForQueue):
                            revert with 0, 17
                        if block.timestamp + (2 * secondsNeededForQueue) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        reserveManagerQueue[address(arg2)] = block.timestamp + (2 * secondsNeededForQueue)
                else:
                    if arg1 > 9:
                        revert with 0, 33
                    if arg1 == 4:
                        if block.timestamp > !secondsNeededForQueue:
                            revert with 0, 17
                        if block.timestamp + secondsNeededForQueue < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        liquidityDepositorQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
                    else:
                        if arg1 > 9:
                            revert with 0, 33
                        if arg1 == 5:
                            if block.timestamp > !secondsNeededForQueue:
                                revert with 0, 17
                            if block.timestamp + secondsNeededForQueue < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            liquidityTokenQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
                        else:
                            if arg1 > 9:
                                revert with 0, 33
                            if arg1 == 6:
                                if not secondsNeededForQueue:
                                    if block.timestamp > -1:
                                        revert with 0, 17
                                    if block.timestamp < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    liquidityManagerQueue[address(arg2)] = block.timestamp
                                else:
                                    if secondsNeededForQueue and 2 > -1 / secondsNeededForQueue:
                                        revert with 0, 17
                                    if not secondsNeededForQueue:
                                        revert with 0, 18
                                    if 2 * secondsNeededForQueue / secondsNeededForQueue != 2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if block.timestamp > !(2 * secondsNeededForQueue):
                                        revert with 0, 17
                                    if block.timestamp + (2 * secondsNeededForQueue) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    liquidityManagerQueue[address(arg2)] = block.timestamp + (2 * secondsNeededForQueue)
                            else:
                                if arg1 > 9:
                                    revert with 0, 33
                                if arg1 == 7:
                                    if block.timestamp > !secondsNeededForQueue:
                                        revert with 0, 17
                                    if block.timestamp + secondsNeededForQueue < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    debtorQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
                                else:
                                    if arg1 > 9:
                                        revert with 0, 33
                                    if arg1 == 8:
                                        if block.timestamp > !secondsNeededForQueue:
                                            revert with 0, 17
                                        if block.timestamp + secondsNeededForQueue < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewardManagerQueue[address(arg2)] = block.timestamp + secondsNeededForQueue
                                    else:
                                        if arg1 > 9:
                                            revert with 0, 33
                                        if arg1 != 9:
                                            return 0
                                        if block.timestamp > !secondsNeededForQueue:
                                            revert with 0, 17
                                        if block.timestamp + secondsNeededForQueue < block.timestamp:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_7373a7e6 = block.timestamp + secondsNeededForQueue
    if arg1 > 9:
        revert with 0, 33
    emit ChangeQueued(arg2, arg1);
    return 1
}

function valueOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor5[address(arg1)]):
        if not uint8(stor14[address(arg1)]):
            return 0
        require ext_code.size(bondCalculator[address(arg1)])
        staticcall bondCalculator[address(arg1)].valuation(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(sub_bd612a3eAddress)
        staticcall sub_bd612a3eAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not arg2:
                return 0
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 / arg2 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            return arg2
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not arg2:
                return 0
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * 10^ext_call.return_data[31 len 1] / arg2 != 10^ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg2 * 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not arg2:
            return 0
        if arg2 and s * t > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * s * t / arg2 != s * t:
            revert with 0, 'SafeMath: multiplication overflow'
        return (arg2 * s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(sub_bd612a3eAddress)
        staticcall sub_bd612a3eAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if not arg2:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 10^uint8(ext_call.return_data[0]))
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 / arg2 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (arg2 / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if not arg2:
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / 10^uint8(ext_call.return_data[0]))
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * 10^ext_call.return_data[31 len 1] / arg2 != 10^ext_call.return_data[31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (arg2 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 0, 17
        if not arg2:
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / 10^uint8(ext_call.return_data[0]))
        if arg2 and s * t > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * s * t / arg2 != s * t:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero', 0
        return (arg2 * s * t / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(sub_bd612a3eAddress)
    staticcall sub_bd612a3eAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if not arg2:
            if not s * t:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / s * t)
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 / arg2 != 1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not s * t:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg2 / s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if not arg2:
            if not s * t:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / s * t)
        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * 10^ext_call.return_data[31 len 1] / arg2 != 10^ext_call.return_data[31 len 1]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not s * t:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg2 * 10^uint8(ext_call.return_data[0]) / s * t)
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if not arg2:
        if not s * t:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / s * t)
    if arg2 and u * v > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * u * v / arg2 != u * v:
        revert with 0, 'SafeMath: multiplication overflow'
    if not s * t:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * u * v / s * t)
}

function toggle(uint8 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 < 10
    require arg2 == arg2
    require arg3 == arg3
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the Manager'
    require arg2
    if arg1 > 9:
        revert with 0, 33
    if not arg1:
        if not uint8(stor8[address(arg2)]):
            if not reserveDepositorQueue[address(arg2)]:
                revert with 0, 'Must queue'
            if block.timestamp < reserveDepositorQueue[address(arg2)]:
                revert with 0, 'Queue not expired'
            reserveDepositorQueue[address(arg2)] = 0
            idx = 0
            while idx < reserveDepositors.length:
                mem[0] = 7
                if reserveDepositors[idx] != arg2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                uint256(stor8[address(arg2)]) = not uint8(stor8[address(arg2)]) or Mask(248, 8, uint256(stor8[address(arg2)]))
                if arg1 > 9:
                    revert with 0, 33
                emit ChangeActivated(address(arg2), not bool(uint8(stor8[address(arg2)])), arg1);
                return 1
            reserveDepositors.length++
            reserveDepositors[reserveDepositors.length] = arg2
        uint256(stor8[address(arg2)]) = not uint8(stor8[address(arg2)]) or Mask(248, 8, uint256(stor8[address(arg2)]))
        if arg1 > 9:
            revert with 0, 33
        emit ChangeActivated(address(arg2), not bool(uint8(stor8[address(arg2)])), arg1);
    else:
        if arg1 > 9:
            revert with 0, 33
        if arg1 == 1:
            if not uint8(stor11[address(arg2)]):
                if not reserveSpenderQueue[address(arg2)]:
                    revert with 0, 'Must queue'
                if block.timestamp < reserveSpenderQueue[address(arg2)]:
                    revert with 0, 'Queue not expired'
                reserveSpenderQueue[address(arg2)] = 0
                idx = 0
                while idx < reserveSpenders.length:
                    mem[0] = 10
                    if reserveSpenders[idx] != arg2:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    uint256(stor11[address(arg2)]) = not uint8(stor11[address(arg2)]) or Mask(248, 8, uint256(stor11[address(arg2)]))
                    if arg1 > 9:
                        revert with 0, 33
                    emit ChangeActivated(address(arg2), not bool(uint8(stor11[address(arg2)])), arg1);
                    return 1
                reserveSpenders.length++
                reserveSpenders[reserveSpenders.length] = arg2
            uint256(stor11[address(arg2)]) = not uint8(stor11[address(arg2)]) or Mask(248, 8, uint256(stor11[address(arg2)]))
            if arg1 > 9:
                revert with 0, 33
            emit ChangeActivated(address(arg2), not bool(uint8(stor11[address(arg2)])), arg1);
        else:
            if arg1 > 9:
                revert with 0, 33
            if arg1 == 2:
                if not uint8(stor5[address(arg2)]):
                    if not reserveTokenQueue[address(arg2)]:
                        revert with 0, 'Must queue'
                    if block.timestamp < reserveTokenQueue[address(arg2)]:
                        revert with 0, 'Queue not expired'
                    reserveTokenQueue[address(arg2)] = 0
                    idx = 0
                    while idx < reserveTokens.length:
                        mem[0] = 4
                        if reserveTokens[idx] != arg2:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        uint256(stor5[address(arg2)]) = not uint8(stor5[address(arg2)]) or Mask(248, 8, uint256(stor5[address(arg2)]))
                        if arg1 > 9:
                            revert with 0, 33
                        emit ChangeActivated(address(arg2), not bool(uint8(stor5[address(arg2)])), arg1);
                        return 1
                    reserveTokens.length++
                    reserveTokens[reserveTokens.length] = arg2
                uint256(stor5[address(arg2)]) = not uint8(stor5[address(arg2)]) or Mask(248, 8, uint256(stor5[address(arg2)]))
                if arg1 > 9:
                    revert with 0, 33
                emit ChangeActivated(address(arg2), not bool(uint8(stor5[address(arg2)])), arg1);
            else:
                if arg1 > 9:
                    revert with 0, 33
                if arg1 == 3:
                    if not uint8(stor21[address(arg2)]):
                        if not reserveManagerQueue[address(arg2)]:
                            revert with 0, 'Must queue'
                        if block.timestamp < reserveManagerQueue[address(arg2)]:
                            revert with 0, 'Queue not expired'
                        reserveManagers.length++
                        storCE6D[stor20.length] = arg2
                        reserveManagerQueue[address(arg2)] = 0
                        idx = 0
                        while idx < reserveManagers.length:
                            mem[0] = 20
                            if reserveManagers[idx] != arg2:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            uint256(stor21[address(arg2)]) = not uint8(stor21[address(arg2)]) or Mask(248, 8, uint256(stor21[address(arg2)]))
                            if arg1 > 9:
                                revert with 0, 33
                            emit ChangeActivated(address(arg2), not bool(uint8(stor21[address(arg2)])), arg1);
                            return 1
                        reserveManagers.length++
                        storCE6D[stor20.length] = arg2
                    uint256(stor21[address(arg2)]) = not uint8(stor21[address(arg2)]) or Mask(248, 8, uint256(stor21[address(arg2)]))
                    if arg1 > 9:
                        revert with 0, 33
                    emit ChangeActivated(address(arg2), not bool(uint8(stor21[address(arg2)])), arg1);
                else:
                    if arg1 > 9:
                        revert with 0, 33
                    if arg1 == 4:
                        if not uint8(stor17[address(arg2)]):
                            if not liquidityDepositorQueue[address(arg2)]:
                                revert with 0, 'Must queue'
                            if block.timestamp < liquidityDepositorQueue[address(arg2)]:
                                revert with 0, 'Queue not expired'
                            liquidityDepositors.length++
                            liquidityDepositors[liquidityDepositors.length] = arg2
                            liquidityDepositorQueue[address(arg2)] = 0
                            idx = 0
                            while idx < liquidityDepositors.length:
                                mem[0] = 16
                                if liquidityDepositors[idx] != arg2:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                uint256(stor17[address(arg2)]) = not uint8(stor17[address(arg2)]) or Mask(248, 8, uint256(stor17[address(arg2)]))
                                if arg1 > 9:
                                    revert with 0, 33
                                emit ChangeActivated(address(arg2), not bool(uint8(stor17[address(arg2)])), arg1);
                                return 1
                            liquidityDepositors.length++
                            liquidityDepositors[liquidityDepositors.length] = arg2
                        uint256(stor17[address(arg2)]) = not uint8(stor17[address(arg2)]) or Mask(248, 8, uint256(stor17[address(arg2)]))
                        if arg1 > 9:
                            revert with 0, 33
                        emit ChangeActivated(address(arg2), not bool(uint8(stor17[address(arg2)])), arg1);
                    else:
                        if arg1 > 9:
                            revert with 0, 33
                        if arg1 == 5:
                            if not uint8(stor14[address(arg2)]):
                                if not liquidityTokenQueue[address(arg2)]:
                                    revert with 0, 'Must queue'
                                if block.timestamp < liquidityTokenQueue[address(arg2)]:
                                    revert with 0, 'Queue not expired'
                                liquidityTokenQueue[address(arg2)] = 0
                                idx = 0
                                while idx < liquidityTokens.length:
                                    mem[0] = 13
                                    if liquidityTokens[idx] != arg2:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    uint256(stor14[address(arg2)]) = not uint8(stor14[address(arg2)]) or Mask(248, 8, uint256(stor14[address(arg2)]))
                                    bondCalculator[address(arg2)] = arg3
                                    if arg1 > 9:
                                        revert with 0, 33
                                    emit ChangeActivated(address(arg2), not bool(uint8(stor14[address(arg2)])), arg1);
                                    return 1
                                liquidityTokens.length++
                                liquidityTokens[liquidityTokens.length] = arg2
                            uint256(stor14[address(arg2)]) = not uint8(stor14[address(arg2)]) or Mask(248, 8, uint256(stor14[address(arg2)]))
                            bondCalculator[address(arg2)] = arg3
                            if arg1 > 9:
                                revert with 0, 33
                            emit ChangeActivated(address(arg2), not bool(uint8(stor14[address(arg2)])), arg1);
                        else:
                            if arg1 > 9:
                                revert with 0, 33
                            if arg1 == 6:
                                if not uint8(stor24[address(arg2)]):
                                    if not liquidityManagerQueue[address(arg2)]:
                                        revert with 0, 'Must queue'
                                    if block.timestamp < liquidityManagerQueue[address(arg2)]:
                                        revert with 0, 'Queue not expired'
                                    liquidityManagerQueue[address(arg2)] = 0
                                    idx = 0
                                    while idx < liquidityManagers.length:
                                        mem[0] = 23
                                        if liquidityManagers[idx] != arg2:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        uint256(stor24[address(arg2)]) = not uint8(stor24[address(arg2)]) or Mask(248, 8, uint256(stor24[address(arg2)]))
                                        if arg1 > 9:
                                            revert with 0, 33
                                        emit ChangeActivated(address(arg2), not bool(uint8(stor24[address(arg2)])), arg1);
                                        return 1
                                    liquidityManagers.length++
                                    storC624[stor23.length] = arg2
                                uint256(stor24[address(arg2)]) = not uint8(stor24[address(arg2)]) or Mask(248, 8, uint256(stor24[address(arg2)]))
                                if arg1 > 9:
                                    revert with 0, 33
                                emit ChangeActivated(address(arg2), not bool(uint8(stor24[address(arg2)])), arg1);
                            else:
                                if arg1 > 9:
                                    revert with 0, 33
                                if arg1 == 7:
                                    if not uint8(stor27[address(arg2)]):
                                        if not debtorQueue[address(arg2)]:
                                            revert with 0, 'Must queue'
                                        if block.timestamp < debtorQueue[address(arg2)]:
                                            revert with 0, 'Queue not expired'
                                        debtorQueue[address(arg2)] = 0
                                        idx = 0
                                        while idx < debtors.length:
                                            mem[0] = 26
                                            if debtors[idx] != arg2:
                                                if idx == -1:
                                                    revert with 0, 17
                                                idx = idx + 1
                                                continue 
                                            uint256(stor27[address(arg2)]) = not uint8(stor27[address(arg2)]) or Mask(248, 8, uint256(stor27[address(arg2)]))
                                            if arg1 > 9:
                                                revert with 0, 33
                                            emit ChangeActivated(address(arg2), not bool(uint8(stor27[address(arg2)])), arg1);
                                            return 1
                                        debtors.length++
                                        stor57C3[stor26.length] = arg2
                                    uint256(stor27[address(arg2)]) = not uint8(stor27[address(arg2)]) or Mask(248, 8, uint256(stor27[address(arg2)]))
                                    if arg1 > 9:
                                        revert with 0, 33
                                    emit ChangeActivated(address(arg2), not bool(uint8(stor27[address(arg2)])), arg1);
                                else:
                                    if arg1 > 9:
                                        revert with 0, 33
                                    if arg1 != 8:
                                        if arg1 > 9:
                                            revert with 0, 33
                                        if arg1 != 9:
                                            return 0
                                        sub_7373a7e6 = 0
                                        sub_71afe8b0Address = arg2
                                        if arg1 > 9:
                                            revert with 0, 33
                                        emit ChangeActivated(address(arg2), 1, arg1);
                                    else:
                                        if not uint8(stor31[address(arg2)]):
                                            if not rewardManagerQueue[address(arg2)]:
                                                revert with 0, 'Must queue'
                                            if block.timestamp < rewardManagerQueue[address(arg2)]:
                                                revert with 0, 'Queue not expired'
                                            rewardManagerQueue[address(arg2)] = 0
                                            idx = 0
                                            while idx < rewardManagers.length:
                                                mem[0] = 30
                                                if rewardManagers[idx] != arg2:
                                                    if idx == -1:
                                                        revert with 0, 17
                                                    idx = idx + 1
                                                    continue 
                                                uint256(stor31[address(arg2)]) = not uint8(stor31[address(arg2)]) or Mask(248, 8, uint256(stor31[address(arg2)]))
                                                if arg1 > 9:
                                                    revert with 0, 33
                                                emit ChangeActivated(address(arg2), not bool(uint8(stor31[address(arg2)])), arg1);
                                                return 1
                                            rewardManagers.length++
                                            stor50BB[stor30.length] = arg2
                                        uint256(stor31[address(arg2)]) = not uint8(stor31[address(arg2)]) or Mask(248, 8, uint256(stor31[address(arg2)]))
                                        if arg1 > 9:
                                            revert with 0, 33
                                        emit ChangeActivated(address(arg2), not bool(uint8(stor31[address(arg2)])), arg1);
    return 1
}

function auditReserves() payable {
    mem[64] = 96
    if managerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the Manager'
    idx = 0
    while idx < reserveTokens.length:
        mem[0] = 4
        mem[mem[64] + 4] = this.address
        require ext_code.size(reserveTokens[idx])
        staticcall reserveTokens[idx].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _259 = mem[_257]
        mem[0] = reserveTokens[idx]
        mem[32] = 5
        if not uint8(stor5[stor4[idx]]):
            mem[0] = reserveTokens[idx]
            mem[32] = 14
            if uint8(stor14[stor4[idx]]):
                mem[0] = reserveTokens[idx]
                mem[32] = 19
                mem[mem[64] + 4] = reserveTokens[idx]
                mem[mem[64] + 36] = _259
                require ext_code.size(bondCalculator[stor4[idx]])
                staticcall bondCalculator[stor4[idx]].valuation(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args reserveTokens[idx], _259
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 > !mem[_276]:
                    revert with 0, 17
                if mem[_276] < 0:
                    revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ext_code.size(reserveTokens[idx])
        staticcall reserveTokens[idx].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _278 = mem[_272]
        require mem[_272] == mem[_272 + 31 len 1]
        if not mem[_272 + 31 len 1]:
            require ext_code.size(sub_bd612a3eAddress)
            staticcall sub_bd612a3eAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _293 = mem[_290]
            require mem[_290] == mem[_290 + 31 len 1]
            if not mem[_290 + 31 len 1]:
                if not _259:
                    _311 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_311] = 26
                    mem[_311 + 32] = 'SafeMath: division by zero'
                else:
                    if _259 and 1 > -1 / _259:
                        revert with 0, 17
                    if not _259:
                        revert with 0, 18
                    if _259 / _259 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_322] = 26
                    mem[_322 + 32] = 'SafeMath: division by zero'
                    if 0 > !_259:
                        revert with 0, 17
                    if _259 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if bool(bool(mem[_290 + 31 len 1] < 78)) or bool(bool(mem[_290 + 31 len 1] < 32)):
                    if not _259:
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = 26
                        mem[_315 + 32] = 'SafeMath: division by zero'
                    else:
                        if _259 and 10^mem[_290 + 31 len 1] > -1 / _259:
                            revert with 0, 17
                        if not _259:
                            revert with 0, 18
                        if _259 * 10^mem[_290 + 31 len 1] / _259 != 10^mem[_290 + 31 len 1]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_344] = 26
                        mem[_344 + 32] = 'SafeMath: division by zero'
                        if 0 > !(_259 * 10^uint8(_293)):
                            revert with 0, 17
                        if _259 * 10^uint8(_293) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    t = 10
                    u = 1
                    s = mem[_290 + 31 len 1]
                    while s > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(s):
                            t = t * t
                            u = u
                            s = uint255(s) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        s = uint255(s) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if not _259:
                        _523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_523] = 26
                        mem[_523 + 32] = 'SafeMath: division by zero'
                    else:
                        if _259 and t * u > -1 / _259:
                            revert with 0, 17
                        if not _259:
                            revert with 0, 18
                        if _259 * t * u / _259 != t * u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_536] = 26
                        mem[_536 + 32] = 'SafeMath: division by zero'
                        if 0 > !(_259 * t * u):
                            revert with 0, 17
                        if _259 * t * u < 0:
                            revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if bool(bool(mem[_272 + 31 len 1] < 78)) or bool(bool(mem[_272 + 31 len 1] < 32)):
            require ext_code.size(sub_bd612a3eAddress)
            staticcall sub_bd612a3eAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _303 = mem[_299]
            require mem[_299] == mem[_299 + 31 len 1]
            if not mem[_299 + 31 len 1]:
                if not _259:
                    _314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_314] = 26
                    mem[_314 + 32] = 'SafeMath: division by zero'
                    if 10^uint8(_278):
                        if 0 > !(0 / 10^uint8(_278)):
                            revert with 0, 17
                        if 0 / 10^uint8(_278) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _321 + 68] = mem[idx + _314 + 32]
                        idx = idx + 32
                        continue 
                    mem[_321 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _321 + -mem[64] + 100
                if _259 and 1 > -1 / _259:
                    revert with 0, 17
                if not _259:
                    revert with 0, 18
                if _259 / _259 != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                _343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_343] = 26
                mem[_343 + 32] = 'SafeMath: division by zero'
                if 10^uint8(_278):
                    if 0 > !(_259 / 10^uint8(_278)):
                        revert with 0, 17
                    if _259 / 10^uint8(_278) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _356 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _356 + 68] = mem[idx + _343 + 32]
                    idx = idx + 32
                    continue 
                mem[_356 + 94] = 0
                revert with memory
                  from mem[64]
                   len _356 + -mem[64] + 100
            if bool(bool(mem[_299 + 31 len 1] < 78)) or bool(bool(mem[_299 + 31 len 1] < 32)):
                if not _259:
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = 26
                    mem[_331 + 32] = 'SafeMath: division by zero'
                    if 10^uint8(_278):
                        if 0 > !(0 / 10^uint8(_278)):
                            revert with 0, 17
                        if 0 / 10^uint8(_278) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _342 + 68] = mem[idx + _331 + 32]
                        idx = idx + 32
                        continue 
                    mem[_342 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _342 + -mem[64] + 100
                if _259 and 10^mem[_299 + 31 len 1] > -1 / _259:
                    revert with 0, 17
                if not _259:
                    revert with 0, 18
                if _259 * 10^mem[_299 + 31 len 1] / _259 != 10^mem[_299 + 31 len 1]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_380] = 26
                mem[_380 + 32] = 'SafeMath: division by zero'
                if 10^uint8(_278):
                    if 0 > !(_259 * 10^uint8(_303) / 10^uint8(_278)):
                        revert with 0, 17
                    if _259 * 10^uint8(_303) / 10^uint8(_278) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _393 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _393 + 68] = mem[idx + _380 + 32]
                    idx = idx + 32
                    continue 
                mem[_393 + 94] = 0
                revert with memory
                  from mem[64]
                   len _393 + -mem[64] + 100
            t = 10
            u = 1
            s = mem[_299 + 31 len 1]
            while s > 1:
                if t > -1 / t:
                    revert with 0, 17
                if not bool(s):
                    t = t * t
                    u = u
                    s = uint255(s) * 0.5
                    continue 
                t = t * t
                u = t * u
                s = uint255(s) * 0.5
                continue 
            if u > -1 / t:
                revert with 0, 17
            if not _259:
                _522 = mem[64]
                mem[64] = mem[64] + 64
                mem[_522] = 26
                mem[_522 + 32] = 'SafeMath: division by zero'
                if 10^uint8(_278):
                    if 0 > !(0 / 10^uint8(_278)):
                        revert with 0, 17
                    if 0 / 10^uint8(_278) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _526 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _526 + 68] = mem[idx + _522 + 32]
                    idx = idx + 32
                    continue 
                mem[_526 + 94] = 0
                revert with memory
                  from mem[64]
                   len _526 + -mem[64] + 100
            if _259 and t * u > -1 / _259:
                revert with 0, 17
            if not _259:
                revert with 0, 18
            if _259 * t * u / _259 != t * u:
                revert with 0, 'SafeMath: multiplication overflow'
            _535 = mem[64]
            mem[64] = mem[64] + 64
            mem[_535] = 26
            mem[_535 + 32] = 'SafeMath: division by zero'
            if 10^uint8(_278):
                if 0 > !(_259 * t * u / 10^uint8(_278)):
                    revert with 0, 17
                if _259 * t * u / 10^uint8(_278) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _537 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _537 + 68] = mem[idx + _535 + 32]
                idx = idx + 32
                continue 
            mem[_537 + 94] = 0
            revert with memory
              from mem[64]
               len _537 + -mem[64] + 100
        t = 10
        u = 1
        s = mem[_272 + 31 len 1]
        while s > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(s):
                t = t * t
                u = u
                s = uint255(s) * 0.5
                continue 
            t = t * t
            u = t * u
            s = uint255(s) * 0.5
            continue 
        if u > -1 / t:
            revert with 0, 17
        require ext_code.size(sub_bd612a3eAddress)
        staticcall sub_bd612a3eAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _513 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _518 = mem[_513]
        require mem[_513] == mem[_513 + 31 len 1]
        if not mem[_513 + 31 len 1]:
            if not _259:
                _545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_545] = 26
                mem[_545 + 32] = 'SafeMath: division by zero'
                if t * u:
                    if 0 > !(0 / t * u):
                        revert with 0, 17
                    if 0 / t * u < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _548 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _548 + 68] = mem[idx + _545 + 32]
                    idx = idx + 32
                    continue 
                mem[_548 + 94] = 0
                revert with memory
                  from mem[64]
                   len _548 + -mem[64] + 100
            if _259 and 1 > -1 / _259:
                revert with 0, 17
            if not _259:
                revert with 0, 18
            if _259 / _259 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            _563 = mem[64]
            mem[64] = mem[64] + 64
            mem[_563] = 26
            mem[_563 + 32] = 'SafeMath: division by zero'
            if t * u:
                if 0 > !(_259 / t * u):
                    revert with 0, 17
                if _259 / t * u < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _570 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _570 + 68] = mem[idx + _563 + 32]
                idx = idx + 32
                continue 
            mem[_570 + 94] = 0
            revert with memory
              from mem[64]
               len _570 + -mem[64] + 100
        if bool(bool(mem[_513 + 31 len 1] < 78)) or bool(bool(mem[_513 + 31 len 1] < 32)):
            if not _259:
                _558 = mem[64]
                mem[64] = mem[64] + 64
                mem[_558] = 26
                mem[_558 + 32] = 'SafeMath: division by zero'
                if t * u:
                    if 0 > !(0 / t * u):
                        revert with 0, 17
                    if 0 / t * u < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _562 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _562 + 68] = mem[idx + _558 + 32]
                    idx = idx + 32
                    continue 
                mem[_562 + 94] = 0
                revert with memory
                  from mem[64]
                   len _562 + -mem[64] + 100
            if _259 and 10^mem[_513 + 31 len 1] > -1 / _259:
                revert with 0, 17
            if not _259:
                revert with 0, 18
            if _259 * 10^mem[_513 + 31 len 1] / _259 != 10^mem[_513 + 31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            _584 = mem[64]
            mem[64] = mem[64] + 64
            mem[_584] = 26
            mem[_584 + 32] = 'SafeMath: division by zero'
            if t * u:
                if 0 > !(_259 * 10^uint8(_518) / t * u):
                    revert with 0, 17
                if _259 * 10^uint8(_518) / t * u < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _588 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _588 + 68] = mem[idx + _584 + 32]
                idx = idx + 32
                continue 
            mem[_588 + 94] = 0
            revert with memory
              from mem[64]
               len _588 + -mem[64] + 100
        v = 10
        w = 1
        s = mem[_513 + 31 len 1]
        while s > 1:
            if v > -1 / v:
                revert with 0, 17
            if not bool(s):
                v = v * v
                w = w
                s = uint255(s) * 0.5
                continue 
            v = v * v
            w = v * w
            s = uint255(s) * 0.5
            continue 
        if w > -1 / v:
            revert with 0, 17
        if not _259:
            _744 = mem[64]
            mem[64] = mem[64] + 64
            mem[_744] = 26
            mem[_744 + 32] = 'SafeMath: division by zero'
            if t * u:
                if 0 > !(0 / t * u):
                    revert with 0, 17
                if 0 / t * u < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _746 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _746 + 68] = mem[idx + _744 + 32]
                idx = idx + 32
                continue 
            mem[_746 + 94] = 0
            revert with memory
              from mem[64]
               len _746 + -mem[64] + 100
        if _259 and v * w > -1 / _259:
            revert with 0, 17
        if not _259:
            revert with 0, 18
        if _259 * v * w / _259 != v * w:
            revert with 0, 'SafeMath: multiplication overflow'
        _759 = mem[64]
        mem[64] = mem[64] + 64
        mem[_759] = 26
        mem[_759 + 32] = 'SafeMath: division by zero'
        if t * u:
            if 0 > !(_259 * v * w / t * u):
                revert with 0, 17
            if _259 * v * w / t * u < 0:
                revert with 0, 'SafeMath: addition overflow'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _763 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _763 + 68] = mem[idx + _759 + 32]
            idx = idx + 32
            continue 
        mem[_763 + 94] = 0
        revert with memory
          from mem[64]
           len _763 + -mem[64] + 100
    s = 0
    while s < liquidityTokens.length:
        mem[0] = 13
        mem[mem[64] + 4] = this.address
        require ext_code.size(liquidityTokens[s])
        staticcall liquidityTokens[s].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _509 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _512 = mem[_509]
        mem[0] = liquidityTokens[s]
        mem[32] = 5
        if not uint8(stor5[stor13[s]]):
            mem[0] = liquidityTokens[s]
            mem[32] = 14
            if uint8(stor14[stor13[s]]):
                mem[0] = liquidityTokens[s]
                mem[32] = 19
                mem[mem[64] + 4] = liquidityTokens[s]
                mem[mem[64] + 36] = _512
                require ext_code.size(bondCalculator[stor13[s]])
                staticcall bondCalculator[stor13[s]].valuation(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args liquidityTokens[s], _512
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _525 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if 0 > !mem[_525]:
                    revert with 0, 17
                if mem[_525] < 0:
                    revert with 0, 'SafeMath: addition overflow'
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        require ext_code.size(liquidityTokens[s])
        staticcall liquidityTokens[s].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _524 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _527 = mem[_524]
        require mem[_524] == mem[_524 + 31 len 1]
        if not mem[_524 + 31 len 1]:
            require ext_code.size(sub_bd612a3eAddress)
            staticcall sub_bd612a3eAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _547 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _550 = mem[_547]
            require mem[_547] == mem[_547 + 31 len 1]
            if not mem[_547 + 31 len 1]:
                if not _512:
                    _598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_598] = 26
                    mem[_598 + 32] = 'SafeMath: division by zero'
                else:
                    if _512 and 1 > -1 / _512:
                        revert with 0, 17
                    if not _512:
                        revert with 0, 18
                    if _512 / _512 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_616] = 26
                    mem[_616 + 32] = 'SafeMath: division by zero'
                    if 0 > !_512:
                        revert with 0, 17
                    if _512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
            else:
                if bool(bool(mem[_547 + 31 len 1] < 78)) or bool(bool(mem[_547 + 31 len 1] < 32)):
                    if not _512:
                        _610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_610] = 26
                        mem[_610 + 32] = 'SafeMath: division by zero'
                    else:
                        if _512 and 10^mem[_547 + 31 len 1] > -1 / _512:
                            revert with 0, 17
                        if not _512:
                            revert with 0, 18
                        if _512 * 10^mem[_547 + 31 len 1] / _512 != 10^mem[_547 + 31 len 1]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _634 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_634] = 26
                        mem[_634 + 32] = 'SafeMath: division by zero'
                        if 0 > !(_512 * 10^uint8(_550)):
                            revert with 0, 17
                        if _512 * 10^uint8(_550) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                else:
                    t = 10
                    u = 1
                    idx = mem[_547 + 31 len 1]
                    while idx > 1:
                        if t > -1 / t:
                            revert with 0, 17
                        if not bool(idx):
                            t = t * t
                            u = u
                            idx = uint255(idx) * 0.5
                            continue 
                        t = t * t
                        u = t * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if u > -1 / t:
                        revert with 0, 17
                    if not _512:
                        _743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_743] = 26
                        mem[_743 + 32] = 'SafeMath: division by zero'
                    else:
                        if _512 and t * u > -1 / _512:
                            revert with 0, 17
                        if not _512:
                            revert with 0, 18
                        if _512 * t * u / _512 != t * u:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_758] = 26
                        mem[_758 + 32] = 'SafeMath: division by zero'
                        if 0 > !(_512 * t * u):
                            revert with 0, 17
                        if _512 * t * u < 0:
                            revert with 0, 'SafeMath: addition overflow'
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if bool(bool(mem[_524 + 31 len 1] < 78)) or bool(bool(mem[_524 + 31 len 1] < 32)):
            require ext_code.size(sub_bd612a3eAddress)
            staticcall sub_bd612a3eAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _560 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _566 = mem[_560]
            require mem[_560] == mem[_560 + 31 len 1]
            if not mem[_560 + 31 len 1]:
                if not _512:
                    _609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_609] = 26
                    mem[_609 + 32] = 'SafeMath: division by zero'
                    if 10^uint8(_527):
                        if 0 > !(0 / 10^uint8(_527)):
                            revert with 0, 17
                        if 0 / 10^uint8(_527) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    _615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _615 + 68] = mem[idx + _609 + 32]
                        idx = idx + 32
                        continue 
                    mem[_615 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _615 + -mem[64] + 100
                if _512 and 1 > -1 / _512:
                    revert with 0, 17
                if not _512:
                    revert with 0, 18
                if _512 / _512 != 1:
                    revert with 0, 'SafeMath: multiplication overflow'
                _633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_633] = 26
                mem[_633 + 32] = 'SafeMath: division by zero'
                if 10^uint8(_527):
                    if 0 > !(_512 / 10^uint8(_527)):
                        revert with 0, 17
                    if _512 / 10^uint8(_527) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _642 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _642 + 68] = mem[idx + _633 + 32]
                    idx = idx + 32
                    continue 
                mem[_642 + 94] = 0
                revert with memory
                  from mem[64]
                   len _642 + -mem[64] + 100
            if bool(bool(mem[_560 + 31 len 1] < 78)) or bool(bool(mem[_560 + 31 len 1] < 32)):
                if not _512:
                    _626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_626] = 26
                    mem[_626 + 32] = 'SafeMath: division by zero'
                    if 10^uint8(_527):
                        if 0 > !(0 / 10^uint8(_527)):
                            revert with 0, 17
                        if 0 / 10^uint8(_527) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    _632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[s + _632 + 68] = mem[s + _626 + 32]
                        s = s + 32
                        continue 
                    mem[_632 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _632 + -mem[64] + 100
                if _512 and 10^mem[_560 + 31 len 1] > -1 / _512:
                    revert with 0, 17
                if not _512:
                    revert with 0, 18
                if _512 * 10^mem[_560 + 31 len 1] / _512 != 10^mem[_560 + 31 len 1]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _655 = mem[64]
                mem[64] = mem[64] + 64
                mem[_655] = 26
                mem[_655 + 32] = 'SafeMath: division by zero'
                if 10^uint8(_527):
                    if 0 > !(_512 * 10^uint8(_566) / 10^uint8(_527)):
                        revert with 0, 17
                    if _512 * 10^uint8(_566) / 10^uint8(_527) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _662 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _662 + 68] = mem[idx + _655 + 32]
                    idx = idx + 32
                    continue 
                mem[_662 + 94] = 0
                revert with memory
                  from mem[64]
                   len _662 + -mem[64] + 100
            t = 10
            u = 1
            idx = mem[_560 + 31 len 1]
            while idx > 1:
                if t > -1 / t:
                    revert with 0, 17
                if not bool(idx):
                    t = t * t
                    u = u
                    idx = uint255(idx) * 0.5
                    continue 
                t = t * t
                u = t * u
                idx = uint255(idx) * 0.5
                continue 
            if u > -1 / t:
                revert with 0, 17
            if not _512:
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 26
                mem[_742 + 32] = 'SafeMath: division by zero'
                if 10^uint8(_527):
                    if 0 > !(0 / 10^uint8(_527)):
                        revert with 0, 17
                    if 0 / 10^uint8(_527) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _745 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _745 + 68] = mem[idx + _742 + 32]
                    idx = idx + 32
                    continue 
                mem[_745 + 94] = 0
                revert with memory
                  from mem[64]
                   len _745 + -mem[64] + 100
            if _512 and t * u > -1 / _512:
                revert with 0, 17
            if not _512:
                revert with 0, 18
            if _512 * t * u / _512 != t * u:
                revert with 0, 'SafeMath: multiplication overflow'
            _757 = mem[64]
            mem[64] = mem[64] + 64
            mem[_757] = 26
            mem[_757 + 32] = 'SafeMath: division by zero'
            if 10^uint8(_527):
                if 0 > !(_512 * t * u / 10^uint8(_527)):
                    revert with 0, 17
                if _512 * t * u / 10^uint8(_527) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            _760 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _760 + 68] = mem[idx + _757 + 32]
                idx = idx + 32
                continue 
            mem[_760 + 94] = 0
            revert with memory
              from mem[64]
               len _760 + -mem[64] + 100
        u = 10
        v = 1
        t = mem[_524 + 31 len 1]
        while t > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = u * v
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        require ext_code.size(sub_bd612a3eAddress)
        staticcall sub_bd612a3eAddress.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _740 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _741 = mem[_740]
        require mem[_740] == mem[_740 + 31 len 1]
        if not mem[_740 + 31 len 1]:
            if not _512:
                _768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_768] = 26
                mem[_768 + 32] = 'SafeMath: division by zero'
                if u * v:
                    if 0 > !(0 / u * v):
                        revert with 0, 17
                    if 0 / u * v < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _771 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                s = 0
                while s < 26:
                    mem[s + _771 + 68] = mem[s + _768 + 32]
                    s = s + 32
                    continue 
                mem[_771 + 94] = 0
                revert with memory
                  from mem[64]
                   len _771 + -mem[64] + 100
            if _512 and 1 > -1 / _512:
                revert with 0, 17
            if not _512:
                revert with 0, 18
            if _512 / _512 != 1:
                revert with 0, 'SafeMath: multiplication overflow'
            _786 = mem[64]
            mem[64] = mem[64] + 64
            mem[_786] = 26
            mem[_786 + 32] = 'SafeMath: division by zero'
            if u * v:
                if 0 > !(_512 / u * v):
                    revert with 0, 17
                if _512 / u * v < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            _790 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _790 + 68] = mem[idx + _786 + 32]
                idx = idx + 32
                continue 
            mem[_790 + 94] = 0
            revert with memory
              from mem[64]
               len _790 + -mem[64] + 100
        if bool(bool(mem[_740 + 31 len 1] < 78)) or bool(bool(mem[_740 + 31 len 1] < 32)):
            if not _512:
                _782 = mem[64]
                mem[64] = mem[64] + 64
                mem[_782] = 26
                mem[_782 + 32] = 'SafeMath: division by zero'
                if u * v:
                    if 0 > !(0 / u * v):
                        revert with 0, 17
                    if 0 / u * v < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                _785 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _785 + 68] = mem[idx + _782 + 32]
                    idx = idx + 32
                    continue 
                mem[_785 + 94] = 0
                revert with memory
                  from mem[64]
                   len _785 + -mem[64] + 100
            if _512 and 10^mem[_740 + 31 len 1] > -1 / _512:
                revert with 0, 17
            if not _512:
                revert with 0, 18
            if _512 * 10^mem[_740 + 31 len 1] / _512 != 10^mem[_740 + 31 len 1]:
                revert with 0, 'SafeMath: multiplication overflow'
            _804 = mem[64]
            mem[64] = mem[64] + 64
            mem[_804] = 26
            mem[_804 + 32] = 'SafeMath: division by zero'
            if u * v:
                if 0 > !(_512 * 10^uint8(_741) / u * v):
                    revert with 0, 17
                if _512 * 10^uint8(_741) / u * v < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            _808 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _808 + 68] = mem[idx + _804 + 32]
                idx = idx + 32
                continue 
            mem[_808 + 94] = 0
            revert with memory
              from mem[64]
               len _808 + -mem[64] + 100
        t = 10
        w = 1
        idx = mem[_740 + 31 len 1]
        while idx > 1:
            if t > -1 / t:
                revert with 0, 17
            if not bool(idx):
                t = t * t
                w = w
                idx = uint255(idx) * 0.5
                continue 
            t = t * t
            w = t * w
            idx = uint255(idx) * 0.5
            continue 
        if w > -1 / t:
            revert with 0, 17
        if not _512:
            _862 = mem[64]
            mem[64] = mem[64] + 64
            mem[_862] = 26
            mem[_862 + 32] = 'SafeMath: division by zero'
            if u * v:
                if 0 > !(0 / u * v):
                    revert with 0, 17
                if 0 / u * v < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            _863 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _863 + 68] = mem[idx + _862 + 32]
                idx = idx + 32
                continue 
            mem[_863 + 94] = 0
            revert with memory
              from mem[64]
               len _863 + -mem[64] + 100
        if _512 and t * w > -1 / _512:
            revert with 0, 17
        if not _512:
            revert with 0, 18
        if _512 * t * w / _512 != t * w:
            revert with 0, 'SafeMath: multiplication overflow'
        _868 = mem[64]
        mem[64] = mem[64] + 64
        mem[_868] = 26
        mem[_868 + 32] = 'SafeMath: division by zero'
        if u * v:
            if 0 > !(_512 * t * w / u * v):
                revert with 0, 17
            if _512 * t * w / u * v < 0:
                revert with 0, 'SafeMath: addition overflow'
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        _869 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _869 + 68] = mem[idx + _868 + 32]
            idx = idx + 32
            continue 
        mem[_869 + 94] = 0
        revert with memory
          from mem[64]
           len _869 + -mem[64] + 100
    totalReserves = 0
    emit ReservesUpdated(uint256 arg1)
    emit 0x0 
    emit ReservesAudited(uint256 arg1)
    emit 0x0 
}

function incurDebt(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(stor27[msg.sender]):
        revert with 0, 'Not approved as a Debtor'
    if not uint8(stor5[address(arg2)]):
        revert with 0, 'Not accepted as a Reserve Token'
    if not uint8(stor5[address(arg2)]):
        if not uint8(stor14[address(arg2)]):
            require ext_code.size(sub_71afe8b0Address)
            staticcall sub_71afe8b0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                revert with 0, 17
            if 0 > ext_call.return_data[0] - debtorBalance[msg.sender]:
                revert with 0, 'Exceeds debt limit'
            if debtorBalance[msg.sender] > -1:
                revert with 0, 17
            if debtorBalance[msg.sender] < debtorBalance[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            if totalDebt > -1:
                revert with 0, 17
            if totalDebt < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > totalReserves:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalReserves < 0:
                revert with 0, 17
            emit ReservesUpdated(totalReserves);
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit CreateDebt(arg1, 0, msg.sender, arg2);
        else:
            require ext_code.size(bondCalculator[address(arg2)])
            staticcall bondCalculator[address(arg2)].valuation(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_71afe8b0Address)
            staticcall sub_71afe8b0Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                revert with 0, 17
            if ext_call.return_data[0] > ext_call.return_data[0] - debtorBalance[msg.sender]:
                revert with 0, 'Exceeds debt limit'
            if debtorBalance[msg.sender] > !ext_call.return_data[0]:
                revert with 0, 17
            if debtorBalance[msg.sender] + ext_call.return_data[0] < debtorBalance[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            debtorBalance[msg.sender] += ext_call.return_data[0]
            if totalDebt > !ext_call.return_data[0]:
                revert with 0, 17
            if totalDebt + ext_call.return_data[0] < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += ext_call.return_data[0]
            if ext_call.return_data[0] > totalReserves:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalReserves < ext_call.return_data[0]:
                revert with 0, 17
            totalReserves -= ext_call.return_data[0]
            emit ReservesUpdated(totalReserves - ext_call.return_data[0]);
            require ext_code.size(arg2)
            call arg2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit CreateDebt(arg1, ext_call.return_data[0], msg.sender, arg2);
    else:
        require ext_code.size(arg2)
        staticcall arg2.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(sub_bd612a3eAddress)
            staticcall sub_bd612a3eAddress.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if not arg1:
                    require ext_code.size(sub_71afe8b0Address)
                    staticcall sub_71afe8b0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if debtorBalance[msg.sender] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] < debtorBalance[msg.sender]:
                        revert with 0, 17
                    if 0 > ext_call.return_data[0] - debtorBalance[msg.sender]:
                        revert with 0, 'Exceeds debt limit'
                    if debtorBalance[msg.sender] > -1:
                        revert with 0, 17
                    if debtorBalance[msg.sender] < debtorBalance[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalDebt > -1:
                        revert with 0, 17
                    if totalDebt < totalDebt:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > totalReserves:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalReserves < 0:
                        revert with 0, 17
                    emit ReservesUpdated(totalReserves);
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit CreateDebt(arg1, 0, msg.sender, arg2);
                else:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 / arg1 != 1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(sub_71afe8b0Address)
                    staticcall sub_71afe8b0Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if debtorBalance[msg.sender] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if ext_call.return_data[0] < debtorBalance[msg.sender]:
                        revert with 0, 17
                    if arg1 > ext_call.return_data[0] - debtorBalance[msg.sender]:
                        revert with 0, 'Exceeds debt limit'
                    if debtorBalance[msg.sender] > !arg1:
                        revert with 0, 17
                    if debtorBalance[msg.sender] + arg1 < debtorBalance[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    debtorBalance[msg.sender] += arg1
                    if totalDebt > !arg1:
                        revert with 0, 17
                    if totalDebt + arg1 < totalDebt:
                        revert with 0, 'SafeMath: addition overflow'
                    totalDebt += arg1
                    if arg1 > totalReserves:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if totalReserves < arg1:
                        revert with 0, 17
                    totalReserves -= arg1
                    emit ReservesUpdated(totalReserves - arg1);
                    require ext_code.size(arg2)
                    call arg2.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit CreateDebt(arg1, arg1, msg.sender, arg2);
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if not arg1:
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if 0 > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > -1:
                            revert with 0, 17
                        if debtorBalance[msg.sender] < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalDebt > -1:
                            revert with 0, 17
                        if totalDebt < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < 0:
                            revert with 0, 17
                        emit ReservesUpdated(totalReserves);
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, 0, msg.sender, arg2);
                    else:
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * 10^ext_call.return_data[31 len 1] / arg1 != 10^ext_call.return_data[31 len 1]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if arg1 * 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > !(arg1 * 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        if debtorBalance[msg.sender] + (arg1 * 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        debtorBalance[msg.sender] += arg1 * 10^uint8(ext_call.return_data[0])
                        if totalDebt > !(arg1 * 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        if totalDebt + (arg1 * 10^uint8(ext_call.return_data[0])) < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDebt += arg1 * 10^uint8(ext_call.return_data[0])
                        if arg1 * 10^uint8(ext_call.return_data[0]) > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < arg1 * 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        totalReserves += -1 * arg1 * 10^uint8(ext_call.return_data[0])
                        emit ReservesUpdated(totalReserves - (arg1 * 10^uint8(ext_call.return_data[0])));
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, arg1 * 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if not arg1:
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if 0 > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > -1:
                            revert with 0, 17
                        if debtorBalance[msg.sender] < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalDebt > -1:
                            revert with 0, 17
                        if totalDebt < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < 0:
                            revert with 0, 17
                        emit ReservesUpdated(totalReserves);
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, 0, msg.sender, arg2);
                    else:
                        if arg1 and s * t > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 * s * t / arg1 != s * t:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if arg1 * s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > !(arg1 * s * t):
                            revert with 0, 17
                        if debtorBalance[msg.sender] + (arg1 * s * t) < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        debtorBalance[msg.sender] += arg1 * s * t
                        if totalDebt > !(arg1 * s * t):
                            revert with 0, 17
                        if totalDebt + (arg1 * s * t) < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDebt += arg1 * s * t
                        if arg1 * s * t > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < arg1 * s * t:
                            revert with 0, 17
                        totalReserves += -1 * arg1 * s * t
                        emit ReservesUpdated(totalReserves - (arg1 * s * t));
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, arg1 * s * t, msg.sender, arg2);
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(sub_bd612a3eAddress)
                staticcall sub_bd612a3eAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if not arg1:
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if 0 / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > !(0 / 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        if debtorBalance[msg.sender] + (0 / 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        debtorBalance[msg.sender] += 0 / 10^uint8(ext_call.return_data[0])
                        if totalDebt > !(0 / 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        if totalDebt + (0 / 10^uint8(ext_call.return_data[0])) < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDebt += 0 / 10^uint8(ext_call.return_data[0])
                        if 0 / 10^uint8(ext_call.return_data[0]) > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < 0 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        totalReserves -= 0 / 10^uint8(ext_call.return_data[0])
                        emit ReservesUpdated(totalReserves - (0 / 10^uint8(ext_call.return_data[0])));
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, 0 / 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
                    else:
                        if arg1 and 1 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 / arg1 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if arg1 / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > !(arg1 / 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        if debtorBalance[msg.sender] + (arg1 / 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        debtorBalance[msg.sender] += arg1 / 10^uint8(ext_call.return_data[0])
                        if totalDebt > !(arg1 / 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        if totalDebt + (arg1 / 10^uint8(ext_call.return_data[0])) < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDebt += arg1 / 10^uint8(ext_call.return_data[0])
                        if arg1 / 10^uint8(ext_call.return_data[0]) > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < arg1 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        totalReserves -= arg1 / 10^uint8(ext_call.return_data[0])
                        emit ReservesUpdated(totalReserves - (arg1 / 10^uint8(ext_call.return_data[0])));
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, arg1 / 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if not arg1:
                            if not 10^uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if 0 / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(0 / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (0 / 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += 0 / 10^uint8(ext_call.return_data[0])
                            if totalDebt > !(0 / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if totalDebt + (0 / 10^uint8(ext_call.return_data[0])) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += 0 / 10^uint8(ext_call.return_data[0])
                            if 0 / 10^uint8(ext_call.return_data[0]) > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < 0 / 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            totalReserves -= 0 / 10^uint8(ext_call.return_data[0])
                            emit ReservesUpdated(totalReserves - (0 / 10^uint8(ext_call.return_data[0])));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, 0 / 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
                        else:
                            if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * 10^ext_call.return_data[31 len 1] / arg1 != 10^ext_call.return_data[31 len 1]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 10^uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                            if totalDebt > !(arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if totalDebt + (arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                            if arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            totalReserves -= arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                            emit ReservesUpdated(totalReserves - (arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not arg1:
                            if not 10^uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if 0 / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(0 / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (0 / 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += 0 / 10^uint8(ext_call.return_data[0])
                            if totalDebt > !(0 / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if totalDebt + (0 / 10^uint8(ext_call.return_data[0])) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += 0 / 10^uint8(ext_call.return_data[0])
                            if 0 / 10^uint8(ext_call.return_data[0]) > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < 0 / 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            totalReserves -= 0 / 10^uint8(ext_call.return_data[0])
                            emit ReservesUpdated(totalReserves - (0 / 10^uint8(ext_call.return_data[0])));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, 0 / 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
                        else:
                            if arg1 and s * t > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * s * t / arg1 != s * t:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 10^uint8(ext_call.return_data[0]):
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if arg1 * s * t / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(arg1 * s * t / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (arg1 * s * t / 10^uint8(ext_call.return_data[0])) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += arg1 * s * t / 10^uint8(ext_call.return_data[0])
                            if totalDebt > !(arg1 * s * t / 10^uint8(ext_call.return_data[0])):
                                revert with 0, 17
                            if totalDebt + (arg1 * s * t / 10^uint8(ext_call.return_data[0])) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += arg1 * s * t / 10^uint8(ext_call.return_data[0])
                            if arg1 * s * t / 10^uint8(ext_call.return_data[0]) > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < arg1 * s * t / 10^uint8(ext_call.return_data[0]):
                                revert with 0, 17
                            totalReserves -= arg1 * s * t / 10^uint8(ext_call.return_data[0])
                            emit ReservesUpdated(totalReserves - (arg1 * s * t / 10^uint8(ext_call.return_data[0])));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, arg1 * s * t / 10^uint8(ext_call.return_data[0]), msg.sender, arg2);
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(sub_bd612a3eAddress)
                staticcall sub_bd612a3eAddress.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if not arg1:
                        if not s * t:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if 0 / s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > !(0 / s * t):
                            revert with 0, 17
                        if debtorBalance[msg.sender] + (0 / s * t) < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        debtorBalance[msg.sender] += 0 / s * t
                        if totalDebt > !(0 / s * t):
                            revert with 0, 17
                        if totalDebt + (0 / s * t) < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDebt += 0 / s * t
                        if 0 / s * t > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < 0 / s * t:
                            revert with 0, 17
                        totalReserves -= 0 / s * t
                        emit ReservesUpdated(totalReserves - (0 / s * t));
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, 0 / s * t, msg.sender, arg2);
                    else:
                        if arg1 and 1 > -1 / arg1:
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 18
                        if arg1 / arg1 != 1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not s * t:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_71afe8b0Address)
                        staticcall sub_71afe8b0Address.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if debtorBalance[msg.sender] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if ext_call.return_data[0] < debtorBalance[msg.sender]:
                            revert with 0, 17
                        if arg1 / s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                            revert with 0, 'Exceeds debt limit'
                        if debtorBalance[msg.sender] > !(arg1 / s * t):
                            revert with 0, 17
                        if debtorBalance[msg.sender] + (arg1 / s * t) < debtorBalance[msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        debtorBalance[msg.sender] += arg1 / s * t
                        if totalDebt > !(arg1 / s * t):
                            revert with 0, 17
                        if totalDebt + (arg1 / s * t) < totalDebt:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDebt += arg1 / s * t
                        if arg1 / s * t > totalReserves:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if totalReserves < arg1 / s * t:
                            revert with 0, 17
                        totalReserves -= arg1 / s * t
                        emit ReservesUpdated(totalReserves - (arg1 / s * t));
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        emit CreateDebt(arg1, arg1 / s * t, msg.sender, arg2);
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if not arg1:
                            if not s * t:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if 0 / s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(0 / s * t):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (0 / s * t) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += 0 / s * t
                            if totalDebt > !(0 / s * t):
                                revert with 0, 17
                            if totalDebt + (0 / s * t) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += 0 / s * t
                            if 0 / s * t > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < 0 / s * t:
                                revert with 0, 17
                            totalReserves -= 0 / s * t
                            emit ReservesUpdated(totalReserves - (0 / s * t));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, 0 / s * t, msg.sender, arg2);
                        else:
                            if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * 10^ext_call.return_data[31 len 1] / arg1 != 10^ext_call.return_data[31 len 1]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not s * t:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if arg1 * 10^uint8(ext_call.return_data[0]) / s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(arg1 * 10^uint8(ext_call.return_data[0]) / s * t):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (arg1 * 10^uint8(ext_call.return_data[0]) / s * t) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                            if totalDebt > !(arg1 * 10^uint8(ext_call.return_data[0]) / s * t):
                                revert with 0, 17
                            if totalDebt + (arg1 * 10^uint8(ext_call.return_data[0]) / s * t) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                            if arg1 * 10^uint8(ext_call.return_data[0]) / s * t > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < arg1 * 10^uint8(ext_call.return_data[0]) / s * t:
                                revert with 0, 17
                            totalReserves -= arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                            emit ReservesUpdated(totalReserves - (arg1 * 10^uint8(ext_call.return_data[0]) / s * t));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, arg1 * 10^uint8(ext_call.return_data[0]) / s * t, msg.sender, arg2);
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if not arg1:
                            if not s * t:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if 0 / s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(0 / s * t):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (0 / s * t) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += 0 / s * t
                            if totalDebt > !(0 / s * t):
                                revert with 0, 17
                            if totalDebt + (0 / s * t) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += 0 / s * t
                            if 0 / s * t > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < 0 / s * t:
                                revert with 0, 17
                            totalReserves -= 0 / s * t
                            emit ReservesUpdated(totalReserves - (0 / s * t));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, 0 / s * t, msg.sender, arg2);
                        else:
                            if arg1 and u * v > -1 / arg1:
                                revert with 0, 17
                            if not arg1:
                                revert with 0, 18
                            if arg1 * u * v / arg1 != u * v:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not s * t:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_71afe8b0Address)
                            staticcall sub_71afe8b0Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if debtorBalance[msg.sender] > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if ext_call.return_data[0] < debtorBalance[msg.sender]:
                                revert with 0, 17
                            if arg1 * u * v / s * t > ext_call.return_data[0] - debtorBalance[msg.sender]:
                                revert with 0, 'Exceeds debt limit'
                            if debtorBalance[msg.sender] > !(arg1 * u * v / s * t):
                                revert with 0, 17
                            if debtorBalance[msg.sender] + (arg1 * u * v / s * t) < debtorBalance[msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            debtorBalance[msg.sender] += arg1 * u * v / s * t
                            if totalDebt > !(arg1 * u * v / s * t):
                                revert with 0, 17
                            if totalDebt + (arg1 * u * v / s * t) < totalDebt:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDebt += arg1 * u * v / s * t
                            if arg1 * u * v / s * t > totalReserves:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if totalReserves < arg1 * u * v / s * t:
                                revert with 0, 17
                            totalReserves -= arg1 * u * v / s * t
                            emit ReservesUpdated(totalReserves - (arg1 * u * v / s * t));
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            emit CreateDebt(arg1, arg1 * u * v / s * t, msg.sender, arg2);
}



}
