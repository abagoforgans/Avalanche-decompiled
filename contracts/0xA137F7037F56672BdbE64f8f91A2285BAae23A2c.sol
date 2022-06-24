contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - auditReserves()
#  - deposit(uint256 arg1, address arg2, uint256 arg3)
#
address owner;
address tokenAddress;
uint256 blocksNeededForQueue;
array of address reserveTokens;
mapping of uint8 stor4;
mapping of uint256 reserveTokenQueue;
array of address reserveDepositors;
mapping of uint8 stor7;
mapping of uint256 reserveDepositorQueue;
array of address reserveSpenders;
mapping of uint8 stor10;
mapping of uint256 reserveSpenderQueue;
array of address liquidityTokens;
mapping of uint8 stor13;
mapping of uint256 liquidityTokenQueue;
array of address liquidityDepositors;
mapping of uint8 stor16;
mapping of uint256 liquidityDepositorQueue;
mapping of address bondCalculator;
array of address reserveManagers;
mapping of uint8 stor20;
mapping of uint256 reserveManagerQueue;
array of address liquidityManagers;
mapping of uint8 stor23;
mapping of uint256 liquidityManagerQueue;
array of struct minters;
mapping of uint8 stor26;
mapping of uint256 sub_99dcd7b1;
uint256 totalReserves;
array of address stor67072331549493647622825787457569556318728415786901242217649037894484240406165;
array of address stor97789825912453899259273410636466998099043528421815129078110847000656284369545;

function reserveManagers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveManagers.length
    return reserveManagers[arg1]
}

function isReserveDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor7[arg1]))
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

function isReserveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor4[arg1]))
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

function reserveTokenQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveTokenQueue[arg1]
}

function minters(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < minters.length
    return minters[arg1].field_0
}

function isReserveSpender(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor10[arg1]))
}

function owner() payable {
    return owner
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

function sub_99dcd7b1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_99dcd7b1[arg1]
}

function isLiquidityDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor16[arg1]))
}

function isLiquidityToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor13[arg1]))
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor26[arg1]))
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

function reserveSpenderQueue(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return reserveSpenderQueue[arg1]
}

function reserveTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveTokens.length
    return reserveTokens[arg1]
}

function blocksNeededForQueue() payable {
    return blocksNeededForQueue
}

function isLiquidityManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor23[arg1]))
}

function isReserveManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor20[arg1]))
}

function token() payable {
    return tokenAddress
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function excessReserves() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalReserves <= ext_call.return_data[0]:
        return 0
    if totalReserves < ext_call.return_data[0]:
        revert with 0, 17
    return (totalReserves - ext_call.return_data[0])
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor26[msg.sender]):
        revert with 0, 'Treasury:NOT_APPROVED_AS_MINTER'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalReserves <= ext_call.return_data[0]:
        if arg2 > 0:
            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
    else:
        if totalReserves < ext_call.return_data[0]:
            revert with 0, 17
        if arg2 > totalReserves - ext_call.return_data[0]:
            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Minted(arg2, msg.sender, arg1);
}

function getMinters() payable {
    mem[64] = (32 * minters.length) + 128
    mem[96] = minters.length
    if not minters.length:
        mem[(32 * minters.length) + 128] = 32
        mem[(32 * minters.length) + 160] = minters.length
        idx = 0
        s = (32 * minters.length) + 192
        t = 128
        while idx < minters.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * minters.length) + 128
           len (96 * minters.length) + 64
    mem[128] = address(minters.field_0)
    idx = 128
    s = 0
    while (32 * minters.length) + 96 > idx:
        mem[idx + 32] = minters[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * minters.length) + 128] = 32
    mem[(32 * minters.length) + 160] = minters.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < minters.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * minters.length) + -mem[64] + 192
}

function queue(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < 8
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2
    if arg1 > 7:
        revert with 0, 33
    if not arg1:
        if block.number > !blocksNeededForQueue:
            revert with 0, 17
        reserveDepositorQueue[address(arg2)] = block.number + blocksNeededForQueue
    else:
        if arg1 > 7:
            revert with 0, 33
        if arg1 == 1:
            if block.number > !blocksNeededForQueue:
                revert with 0, 17
            reserveSpenderQueue[address(arg2)] = block.number + blocksNeededForQueue
        else:
            if arg1 > 7:
                revert with 0, 33
            if arg1 == 2:
                if block.number > !blocksNeededForQueue:
                    revert with 0, 17
                reserveTokenQueue[address(arg2)] = block.number + blocksNeededForQueue
            else:
                if arg1 > 7:
                    revert with 0, 33
                if arg1 == 3:
                    if blocksNeededForQueue and 2 > -1 / blocksNeededForQueue:
                        revert with 0, 17
                    if block.number > !(2 * blocksNeededForQueue):
                        revert with 0, 17
                    reserveManagerQueue[address(arg2)] = block.number + (2 * blocksNeededForQueue)
                else:
                    if arg1 > 7:
                        revert with 0, 33
                    if arg1 == 4:
                        if block.number > !blocksNeededForQueue:
                            revert with 0, 17
                        liquidityDepositorQueue[address(arg2)] = block.number + blocksNeededForQueue
                    else:
                        if arg1 > 7:
                            revert with 0, 33
                        if arg1 == 5:
                            if block.number > !blocksNeededForQueue:
                                revert with 0, 17
                            liquidityTokenQueue[address(arg2)] = block.number + blocksNeededForQueue
                        else:
                            if arg1 > 7:
                                revert with 0, 33
                            if arg1 == 6:
                                if blocksNeededForQueue and 2 > -1 / blocksNeededForQueue:
                                    revert with 0, 17
                                if block.number > !(2 * blocksNeededForQueue):
                                    revert with 0, 17
                                liquidityManagerQueue[address(arg2)] = block.number + (2 * blocksNeededForQueue)
                            else:
                                if arg1 > 7:
                                    revert with 0, 33
                                if arg1 != 7:
                                    return 0
                                if block.number > !blocksNeededForQueue:
                                    revert with 0, 17
                                sub_99dcd7b1[address(arg2)] = block.number + blocksNeededForQueue
    if arg1 > 7:
        revert with 0, 33
    emit ChangeQueued(arg2, arg1);
    return 1
}

function tokenValue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor4[address(arg1)]):
        if not uint8(stor13[address(arg1)]):
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
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            return arg2
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            return (arg2 * 10^ext_call.return_data[31 len 1])
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
        if arg2 and s * t > -1 / arg2:
            revert with 0, 17
        return (arg2 * s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (arg2 / 10^uint8(ext_call.return_data[0]))
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                revert with 0, 17
            if not 10^uint8(ext_call.return_data[0]):
                revert with 0, 18
            return (arg2 * 10^ext_call.return_data[31 len 1] / 10^uint8(ext_call.return_data[0]))
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
        if arg2 and s * t > -1 / arg2:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
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
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (arg2 / s * t)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
            revert with 0, 17
        if not s * t:
            revert with 0, 18
        return (arg2 * 10^ext_call.return_data[31 len 1] / s * t)
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
    if arg2 and u * v > -1 / arg2:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (arg2 * u * v / s * t)
}

function toggle(uint8 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 < 8
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2
    if arg1 > 7:
        revert with 0, 33
    if not arg1:
        if not uint8(stor7[address(arg2)]):
            if not reserveDepositorQueue[address(arg2)]:
                revert with 0, 'Treasury:MUST_QUEUE'
            if block.number < reserveDepositorQueue[address(arg2)]:
                revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
            reserveDepositorQueue[address(arg2)] = 0
            idx = 0
            while idx < reserveDepositors.length:
                mem[0] = 6
                if reserveDepositors[idx] != arg2:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                uint256(stor7[address(arg2)]) = not uint8(stor7[address(arg2)]) or Mask(248, 8, uint256(stor7[address(arg2)]))
                if arg1 > 7:
                    revert with 0, 33
                emit ChangeActivated(address(arg2), not bool(uint8(stor7[address(arg2)])), arg1);
                return 1
            reserveDepositors.length++
            reserveDepositors[reserveDepositors.length] = arg2
        uint256(stor7[address(arg2)]) = not uint8(stor7[address(arg2)]) or Mask(248, 8, uint256(stor7[address(arg2)]))
        if arg1 > 7:
            revert with 0, 33
        emit ChangeActivated(address(arg2), not bool(uint8(stor7[address(arg2)])), arg1);
    else:
        if arg1 > 7:
            revert with 0, 33
        if arg1 == 1:
            if not uint8(stor10[address(arg2)]):
                if not reserveSpenderQueue[address(arg2)]:
                    revert with 0, 'Treasury:MUST_QUEUE'
                if block.number < reserveSpenderQueue[address(arg2)]:
                    revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                reserveSpenderQueue[address(arg2)] = 0
                idx = 0
                while idx < reserveSpenders.length:
                    mem[0] = 9
                    if reserveSpenders[idx] != arg2:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    uint256(stor10[address(arg2)]) = not uint8(stor10[address(arg2)]) or Mask(248, 8, uint256(stor10[address(arg2)]))
                    if arg1 > 7:
                        revert with 0, 33
                    emit ChangeActivated(address(arg2), not bool(uint8(stor10[address(arg2)])), arg1);
                    return 1
                reserveSpenders.length++
                reserveSpenders[reserveSpenders.length] = arg2
            uint256(stor10[address(arg2)]) = not uint8(stor10[address(arg2)]) or Mask(248, 8, uint256(stor10[address(arg2)]))
            if arg1 > 7:
                revert with 0, 33
            emit ChangeActivated(address(arg2), not bool(uint8(stor10[address(arg2)])), arg1);
        else:
            if arg1 > 7:
                revert with 0, 33
            if arg1 == 2:
                if not uint8(stor4[address(arg2)]):
                    if not reserveTokenQueue[address(arg2)]:
                        revert with 0, 'Treasury:MUST_QUEUE'
                    if block.number < reserveTokenQueue[address(arg2)]:
                        revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                    reserveTokenQueue[address(arg2)] = 0
                    idx = 0
                    while idx < reserveTokens.length:
                        mem[0] = 3
                        if reserveTokens[idx] != arg2:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        uint256(stor4[address(arg2)]) = not uint8(stor4[address(arg2)]) or Mask(248, 8, uint256(stor4[address(arg2)]))
                        if arg1 > 7:
                            revert with 0, 33
                        emit ChangeActivated(address(arg2), not bool(uint8(stor4[address(arg2)])), arg1);
                        return 1
                    reserveTokens.length++
                    reserveTokens[reserveTokens.length] = arg2
                uint256(stor4[address(arg2)]) = not uint8(stor4[address(arg2)]) or Mask(248, 8, uint256(stor4[address(arg2)]))
                if arg1 > 7:
                    revert with 0, 33
                emit ChangeActivated(address(arg2), not bool(uint8(stor4[address(arg2)])), arg1);
            else:
                if arg1 > 7:
                    revert with 0, 33
                if arg1 == 3:
                    if not uint8(stor20[address(arg2)]):
                        if not reserveManagerQueue[address(arg2)]:
                            revert with 0, 'Treasury:MUST_QUEUE'
                        if block.number < reserveManagerQueue[address(arg2)]:
                            revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                        reserveManagers.length++
                        reserveManagers[reserveManagers.length] = arg2
                        reserveManagerQueue[address(arg2)] = 0
                        idx = 0
                        while idx < reserveManagers.length:
                            mem[0] = 19
                            if reserveManagers[idx] != arg2:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            uint256(stor20[address(arg2)]) = not uint8(stor20[address(arg2)]) or Mask(248, 8, uint256(stor20[address(arg2)]))
                            if arg1 > 7:
                                revert with 0, 33
                            emit ChangeActivated(address(arg2), not bool(uint8(stor20[address(arg2)])), arg1);
                            return 1
                        reserveManagers.length++
                        reserveManagers[reserveManagers.length] = arg2
                    uint256(stor20[address(arg2)]) = not uint8(stor20[address(arg2)]) or Mask(248, 8, uint256(stor20[address(arg2)]))
                    if arg1 > 7:
                        revert with 0, 33
                    emit ChangeActivated(address(arg2), not bool(uint8(stor20[address(arg2)])), arg1);
                else:
                    if arg1 > 7:
                        revert with 0, 33
                    if arg1 == 4:
                        if not uint8(stor16[address(arg2)]):
                            if not liquidityDepositorQueue[address(arg2)]:
                                revert with 0, 'Treasury:MUST_QUEUE'
                            if block.number < liquidityDepositorQueue[address(arg2)]:
                                revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                            liquidityDepositors.length++
                            liquidityDepositors[liquidityDepositors.length] = arg2
                            liquidityDepositorQueue[address(arg2)] = 0
                            idx = 0
                            while idx < liquidityDepositors.length:
                                mem[0] = 15
                                if liquidityDepositors[idx] != arg2:
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                uint256(stor16[address(arg2)]) = not uint8(stor16[address(arg2)]) or Mask(248, 8, uint256(stor16[address(arg2)]))
                                if arg1 > 7:
                                    revert with 0, 33
                                emit ChangeActivated(address(arg2), not bool(uint8(stor16[address(arg2)])), arg1);
                                return 1
                            liquidityDepositors.length++
                            liquidityDepositors[liquidityDepositors.length] = arg2
                        uint256(stor16[address(arg2)]) = not uint8(stor16[address(arg2)]) or Mask(248, 8, uint256(stor16[address(arg2)]))
                        if arg1 > 7:
                            revert with 0, 33
                        emit ChangeActivated(address(arg2), not bool(uint8(stor16[address(arg2)])), arg1);
                    else:
                        if arg1 > 7:
                            revert with 0, 33
                        if arg1 == 5:
                            if not uint8(stor13[address(arg2)]):
                                if not liquidityTokenQueue[address(arg2)]:
                                    revert with 0, 'Treasury:MUST_QUEUE'
                                if block.number < liquidityTokenQueue[address(arg2)]:
                                    revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                                liquidityTokenQueue[address(arg2)] = 0
                                idx = 0
                                while idx < liquidityTokens.length:
                                    mem[0] = 12
                                    if liquidityTokens[idx] != arg2:
                                        if idx == -1:
                                            revert with 0, 17
                                        idx = idx + 1
                                        continue 
                                    uint256(stor13[address(arg2)]) = not uint8(stor13[address(arg2)]) or Mask(248, 8, uint256(stor13[address(arg2)]))
                                    bondCalculator[address(arg2)] = arg3
                                    if arg1 > 7:
                                        revert with 0, 33
                                    emit ChangeActivated(address(arg2), not bool(uint8(stor13[address(arg2)])), arg1);
                                    return 1
                                liquidityTokens.length++
                                liquidityTokens[liquidityTokens.length] = arg2
                            uint256(stor13[address(arg2)]) = not uint8(stor13[address(arg2)]) or Mask(248, 8, uint256(stor13[address(arg2)]))
                            bondCalculator[address(arg2)] = arg3
                            if arg1 > 7:
                                revert with 0, 33
                            emit ChangeActivated(address(arg2), not bool(uint8(stor13[address(arg2)])), arg1);
                        else:
                            if arg1 > 7:
                                revert with 0, 33
                            if arg1 == 6:
                                if not uint8(stor23[address(arg2)]):
                                    if not liquidityManagerQueue[address(arg2)]:
                                        revert with 0, 'Treasury:MUST_QUEUE'
                                    if block.number < liquidityManagerQueue[address(arg2)]:
                                        revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                                    liquidityManagerQueue[address(arg2)] = 0
                                    idx = 0
                                    while idx < liquidityManagers.length:
                                        mem[0] = 22
                                        if liquidityManagers[idx] != arg2:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        uint256(stor23[address(arg2)]) = not uint8(stor23[address(arg2)]) or Mask(248, 8, uint256(stor23[address(arg2)]))
                                        if arg1 > 7:
                                            revert with 0, 33
                                        emit ChangeActivated(address(arg2), not bool(uint8(stor23[address(arg2)])), arg1);
                                        return 1
                                    liquidityManagers.length++
                                    storD833[stor22.length] = arg2
                                uint256(stor23[address(arg2)]) = not uint8(stor23[address(arg2)]) or Mask(248, 8, uint256(stor23[address(arg2)]))
                                if arg1 > 7:
                                    revert with 0, 33
                                emit ChangeActivated(address(arg2), not bool(uint8(stor23[address(arg2)])), arg1);
                            else:
                                if arg1 > 7:
                                    revert with 0, 33
                                if arg1 != 7:
                                    return 0
                                if not uint8(stor26[address(arg2)]):
                                    if not sub_99dcd7b1[address(arg2)]:
                                        revert with 0, 'Treasury:MUST_QUEUE'
                                    if block.number < sub_99dcd7b1[address(arg2)]:
                                        revert with 0, 'Treasury:QUEUE_NOT_EXPIRED'
                                    sub_99dcd7b1[address(arg2)] = 0
                                    idx = 0
                                    while idx < minters.length:
                                        mem[0] = 25
                                        if minters[idx].field_0 != arg2:
                                            if idx == -1:
                                                revert with 0, 17
                                            idx = idx + 1
                                            continue 
                                        uint256(stor26[address(arg2)]) = not uint8(stor26[address(arg2)]) or Mask(248, 8, uint256(stor26[address(arg2)]))
                                        if arg1 > 7:
                                            revert with 0, 33
                                        emit ChangeActivated(address(arg2), not bool(uint8(stor26[address(arg2)])), arg1);
                                        return 1
                                    minters.length++
                                    stor9449[stor25.length] = arg2
                                uint256(stor26[address(arg2)]) = not uint8(stor26[address(arg2)]) or Mask(248, 8, uint256(stor26[address(arg2)]))
                                if arg1 > 7:
                                    revert with 0, 33
                                emit ChangeActivated(address(arg2), not bool(uint8(stor26[address(arg2)])), arg1);
    return 1
}

function manage(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(stor13[address(arg1)]):
        if not uint8(stor20[msg.sender]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Treasury:NOT_APPROVED_AS_RESERVE_MANAGER'
    else:
        if not uint8(stor23[msg.sender]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Treasury:NOT_APPROVED_AS_LIQUIDITY_MANAGER'
    if not uint8(stor4[address(arg1)]):
        if not uint8(stor13[address(arg1)]):
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalReserves > ext_call.return_data[0]:
                if totalReserves < ext_call.return_data[0]:
                    revert with 0, 17
                if 0 > totalReserves - ext_call.return_data[0]:
                    revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
            if totalReserves < 0:
                revert with 0, 17
            emit 0xfe93bb8e: totalReserves
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = arg2
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[ceil32(return_data.size) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[100] = arg1
            mem[132] = arg2
            require ext_code.size(bondCalculator[address(arg1)])
            staticcall bondCalculator[address(arg1)].valuation(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if totalReserves <= ext_call.return_data[0]:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
            else:
                if totalReserves < ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] > totalReserves - ext_call.return_data[0]:
                    revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
            if totalReserves < ext_call.return_data[0]:
                revert with 0, 17
            totalReserves -= ext_call.return_data[0]
            emit 0xfe93bb8e: totalReserves - ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, Mask(224, 32, arg2) >> 32 == bool(0, Mask(224, 32, arg2) >> 32)
                    if not 0, Mask(224, 32, arg2) >> 32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalReserves <= ext_call.return_data[0]:
                    if arg2 > 0:
                        revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                else:
                    if totalReserves < ext_call.return_data[0]:
                        revert with 0, 17
                    if arg2 > totalReserves - ext_call.return_data[0]:
                        revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                if totalReserves < arg2:
                    revert with 0, 17
                totalReserves -= arg2
                emit 0xfe93bb8e: totalReserves - arg2
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalReserves <= ext_call.return_data[0]:
                        if arg2 * 10^uint8(ext_call.return_data[0]) > 0:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    else:
                        if totalReserves < ext_call.return_data[0]:
                            revert with 0, 17
                        if arg2 * 10^uint8(ext_call.return_data[0]) > totalReserves - ext_call.return_data[0]:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    if totalReserves < arg2 * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    totalReserves += -1 * arg2 * 10^uint8(ext_call.return_data[0])
                    emit 0xfe93bb8e: totalReserves - (arg2 * 10^uint8(ext_call.return_data[0]))
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
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalReserves <= ext_call.return_data[0]:
                        if arg2 * s * t > 0:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    else:
                        if totalReserves < ext_call.return_data[0]:
                            revert with 0, 17
                        if arg2 * s * t > totalReserves - ext_call.return_data[0]:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    if totalReserves < arg2 * s * t:
                        revert with 0, 17
                    totalReserves += -1 * arg2 * s * t
                    emit 0xfe93bb8e: totalReserves - (arg2 * s * t)
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x313ce567 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalReserves <= ext_call.return_data[0]:
                        if arg2 / 10^uint8(ext_call.return_data[0]) > 0:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    else:
                        if totalReserves < ext_call.return_data[0]:
                            revert with 0, 17
                        if arg2 / 10^uint8(ext_call.return_data[0]) > totalReserves - ext_call.return_data[0]:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    if totalReserves < arg2 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    totalReserves -= arg2 / 10^uint8(ext_call.return_data[0])
                    emit 0xfe93bb8e: totalReserves - (arg2 / 10^uint8(ext_call.return_data[0]))
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if totalReserves <= ext_call.return_data[0]:
                            if arg2 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > 0:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        else:
                            if totalReserves < ext_call.return_data[0]:
                                revert with 0, 17
                            if arg2 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]) > totalReserves - ext_call.return_data[0]:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        if totalReserves < arg2 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        totalReserves -= arg2 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                        emit 0xfe93bb8e: totalReserves - (arg2 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]))
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
                        if arg2 and s * t > -1 / arg2:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if totalReserves <= ext_call.return_data[0]:
                            if arg2 * s * t / 10^uint8(ext_call.return_data[0]) > 0:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        else:
                            if totalReserves < ext_call.return_data[0]:
                                revert with 0, 17
                            if arg2 * s * t / 10^uint8(ext_call.return_data[0]) > totalReserves - ext_call.return_data[0]:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        if totalReserves < arg2 * s * t / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        totalReserves -= arg2 * s * t / 10^uint8(ext_call.return_data[0])
                        emit 0xfe93bb8e: totalReserves - (arg2 * s * t / 10^uint8(ext_call.return_data[0]))
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
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x313ce567 with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg2 and 1 > -1 / arg2:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if totalReserves <= ext_call.return_data[0]:
                        if arg2 / s * t > 0:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    else:
                        if totalReserves < ext_call.return_data[0]:
                            revert with 0, 17
                        if arg2 / s * t > totalReserves - ext_call.return_data[0]:
                            revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                    if totalReserves < arg2 / s * t:
                        revert with 0, 17
                    totalReserves -= arg2 / s * t
                    emit 0xfe93bb8e: totalReserves - (arg2 / s * t)
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg2 and 10^ext_call.return_data[31 len 1] > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if totalReserves <= ext_call.return_data[0]:
                            if arg2 * 10^uint8(ext_call.return_data[0]) / s * t > 0:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        else:
                            if totalReserves < ext_call.return_data[0]:
                                revert with 0, 17
                            if arg2 * 10^uint8(ext_call.return_data[0]) / s * t > totalReserves - ext_call.return_data[0]:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        if totalReserves < arg2 * 10^uint8(ext_call.return_data[0]) / s * t:
                            revert with 0, 17
                        totalReserves -= arg2 * 10^uint8(ext_call.return_data[0]) / s * t
                        emit 0xfe93bb8e: totalReserves - (arg2 * 10^uint8(ext_call.return_data[0]) / s * t)
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
                        if arg2 and u * v > -1 / arg2:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x18160ddd with:
                                gas gas_remaining wei
                        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if totalReserves <= ext_call.return_data[0]:
                            if arg2 * u * v / s * t > 0:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        else:
                            if totalReserves < ext_call.return_data[0]:
                                revert with 0, 17
                            if arg2 * u * v / s * t > totalReserves - ext_call.return_data[0]:
                                revert with 0, 'Treasury:INSUFFICIENT_EXCESS_RESERVES'
                        if totalReserves < arg2 * u * v / s * t:
                            revert with 0, 17
                        totalReserves -= arg2 * u * v / s * t
                        emit 0xfe93bb8e: totalReserves - (arg2 * u * v / s * t)
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ReservesManaged(arg2, arg1);
}



}
