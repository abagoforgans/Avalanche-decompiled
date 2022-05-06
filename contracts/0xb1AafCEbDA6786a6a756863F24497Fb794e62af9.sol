contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
address beneficiaryAddress;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function beneficiary() payable {
    return beneficiaryAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0xfe4c5054696d656c6f636b3a2063616e6e6f74206368616e67652062656e6566696369617279207768696c65204c502062616c616e636520706f7369746976,
                    mem[227 len 1]
    beneficiaryAddress = arg1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor6:
        stor5 = ext_call.return_data[0] / stor6
        emit PaymentsUpdatedOnDeposit(ext_call.return_data[0] / stor6, stor7, stor6);
    stor6 = stor4
    stor7 = block.timestamp
    revert
}

function getElapsedReward() payable {
    if 0 == stor1:
        return 0, stor7, stor6
    require stor1
    if not block.timestamp - stor7 / stor1:
        return 0, stor7, stor6
    if block.timestamp - stor7 / stor1 <= stor6:
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor5:
            if 0 > ext_call.return_data[0]:
                if ext_call.return_data[0] + stor8 < stor8:
                    revert with 0, 'SafeMath: addition overflow'
                return ext_call.return_data[0] + stor8, block.timestamp, stor6 - (block.timestamp - stor7 / stor1)
            if stor8 < stor8:
                revert with 0, 'SafeMath: addition overflow'
            return stor8, block.timestamp, stor6 - (block.timestamp - stor7 / stor1)
        if block.timestamp - stor7 / stor1 * stor5 / stor5 != block.timestamp - stor7 / stor1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if block.timestamp - stor7 / stor1 * stor5 > ext_call.return_data[0]:
            if ext_call.return_data[0] + stor8 < stor8:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0] + stor8, block.timestamp, stor6 - (block.timestamp - stor7 / stor1)
        if (block.timestamp - stor7 / stor1 * stor5) + stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        return (block.timestamp - stor7 / stor1 * stor5) + stor8, block.timestamp, stor6 - (block.timestamp - stor7 / stor1)
    if stor6 > stor6:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor5:
        if 0 > ext_call.return_data[0]:
            if ext_call.return_data[0] + stor8 < stor8:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0] + stor8, block.timestamp, 0
        if stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        return stor8, block.timestamp, 0
    if stor6 * stor5 / stor5 != stor6:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if stor6 * stor5 > ext_call.return_data[0]:
        if ext_call.return_data[0] + stor8 < stor8:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0] + stor8, block.timestamp, 0
    if (stor6 * stor5) + stor8 < stor8:
        revert with 0, 'SafeMath: addition overflow'
    return (stor6 * stor5) + stor8, block.timestamp, 0
}

function release() payable {
    if block.timestamp < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x654c5054696d656c6f636b3a2063757272656e742074696d65206973206265666f72652072656c656173652074696d,
                    mem[211 len 17]
    if 0 == stor1:
        stor8 = 0
    else:
        require stor1
        if not block.timestamp - stor7 / stor1:
            stor8 = 0
        else:
            if block.timestamp - stor7 / stor1 <= stor6:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5:
                    if 0 <= ext_call.return_data[0]:
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                    else:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                else:
                    if block.timestamp - stor7 / stor1 * stor5 / stor5 != block.timestamp - stor7 / stor1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if block.timestamp - stor7 / stor1 * stor5 > ext_call.return_data[0]:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                    else:
                        if (block.timestamp - stor7 / stor1 * stor5) + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                        stor8 += block.timestamp - stor7 / stor1 * stor5
            else:
                if stor6 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5:
                    if 0 <= ext_call.return_data[0]:
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                    else:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                else:
                    if stor6 * stor5 / stor5 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor6 * stor5 > ext_call.return_data[0]:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                    else:
                        if (stor6 * stor5) + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                        stor8 += stor6 * stor5
    stor8 = 0
    if stor8:
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, stor8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'release funds failed'
    emit FundsReleasedToBeneficiary(beneficiaryAddress, stor8, block.timestamp);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp < stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x654c5054696d656c6f636b3a2063757272656e742074696d65206973206265666f72652072656c656173652074696d,
                    mem[211 len 17]
    if 0 == stor1:
        stor8 = 0
        stor8 = 0
        if stor8:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, stor8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'release funds failed'
        emit FundsReleasedToBeneficiary(beneficiaryAddress, stor8, block.timestamp);
        if stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x7243616e6e6f7420696e697469616c697a6520647572696e67206163746976652076657374696e67207363686564756c,
                        mem[212 len 16]
        if arg3 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545706f636820706172616d6574657273206d75737420626520706f7369746976,
                        mem[197 len 31]
        if arg5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545706f636820706172616d6574657273206d75737420626520706f7369746976,
                        mem[197 len 31]
    else:
        require stor1
        if not block.timestamp - stor7 / stor1:
            stor8 = 0
            stor8 = 0
            if stor8:
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, stor8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'release funds failed'
            emit FundsReleasedToBeneficiary(beneficiaryAddress, stor8, block.timestamp);
            if stor6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            48,
                            0x7243616e6e6f7420696e697469616c697a6520647572696e67206163746976652076657374696e67207363686564756c,
                            mem[212 len 16]
            if arg3 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545706f636820706172616d6574657273206d75737420626520706f7369746976,
                            mem[197 len 31]
            if arg5 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545706f636820706172616d6574657273206d75737420626520706f7369746976,
                            mem[197 len 31]
        else:
            if block.timestamp - stor7 / stor1 <= stor6:
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5:
                    if 0 <= ext_call.return_data[0]:
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                    else:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                else:
                    if block.timestamp - stor7 / stor1 * stor5 / stor5 != block.timestamp - stor7 / stor1:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if block.timestamp - stor7 / stor1 * stor5 > ext_call.return_data[0]:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                    else:
                        if (block.timestamp - stor7 / stor1 * stor5) + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 -= block.timestamp - stor7 / stor1
                        stor7 = block.timestamp
                        stor8 += block.timestamp - stor7 / stor1 * stor5
            else:
                if stor6 > stor6:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(stor2)
                staticcall stor2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5:
                    if 0 <= ext_call.return_data[0]:
                        if stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                    else:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                else:
                    if stor6 * stor5 / stor5 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if stor6 * stor5 > ext_call.return_data[0]:
                        if ext_call.return_data[0] + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                        stor8 += ext_call.return_data[0]
                    else:
                        if (stor6 * stor5) + stor8 < stor8:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 = 0
                        stor7 = block.timestamp
                        stor8 += stor6 * stor5
            stor8 = 0
            if stor8:
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, stor8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'release funds failed'
            emit FundsReleasedToBeneficiary(beneficiaryAddress, stor8, block.timestamp);
            if stor6:
                revert with 0, 
                            32,
                            48,
                            0x7243616e6e6f7420696e697469616c697a6520647572696e67206163746976652076657374696e67207363686564756c,
                            mem[276 len 16]
            if arg3 <= 0:
                revert with 0, 32, 33, 0x6545706f636820706172616d6574657273206d75737420626520706f7369746976, mem[261 len 31]
            if arg5 <= 0:
                revert with 0, 32, 33, 0x6545706f636820706172616d6574657273206d75737420626520706f7369746976, mem[261 len 31]
    ('gt', ('param', 'arg5'), 0)
    stor2 = arg1
    beneficiaryAddress = arg2
    if arg3 > 8:
        stor1 = arg3
    else:
        if not arg3:
            stor1 = arg4
        else:
            if arg3 == 1:
                stor1 = 60 * arg4
            else:
                if arg3 == 2:
                    stor1 = 3600 * arg4
                else:
                    if arg3 == 3:
                        stor1 = 24 * 3600 * arg4
                    else:
                        if arg3 == 4:
                            stor1 = 168 * 24 * 3600 * arg4
                        else:
                            if arg3 == 5:
                                stor1 = 720 * 24 * 3600 * arg4
                            else:
                                if arg3 == 6:
                                    stor1 = 8736 * 24 * 3600 * arg4
                                else:
                                    if arg3 == 7:
                                        stor1 = 2184 * 24 * 3600 * arg4
                                    else:
                                        if arg3 == 8:
                                            stor1 = 4368 * 24 * 3600
    stor4 = arg5
    emit Initialized(address(arg1), address(arg2), stor1, arg5);
}



}
