contract main {




// =====================  Runtime code  =====================


#
#  - recalculateAssessor(address arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
address sub_3ec4d4d6Address;
address sub_e7912d4aAddress;
address sub_f8ab6a85Address;

function sub_3ec4d4d6(?) payable {
    return sub_3ec4d4d6Address
}

function owner() payable {
    return owner
}

function sub_e7912d4a(?) payable {
    return sub_e7912d4aAddress
}

function sub_f8ab6a85(?) payable {
    return sub_f8ab6a85Address
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setup(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    sub_ffe6e7d7Address = arg1
    sub_3ec4d4d6Address = arg3
    sub_e7912d4aAddress = arg2
    sub_f8ab6a85Address = arg4
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

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}

function getClaimAssessorRewardAmount(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0x36dbd2f9 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != 9:
        if ext_call.return_data[0] != 11:
            return 0
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0x65651c2d with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] != 9:
            return 0
    else:
        if ext_call.return_data[0] != 11:
            if ext_call.return_data[0]:
                return 0
            if ext_call.return_data[0] != 9:
                return 0
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.0xea9b8411 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    if ext_call.return_data[0]:
        staticcall sub_f8ab6a85Address.0xf332c24 with:
                gas gas_remaining wei
               args arg1
    else:
        staticcall sub_f8ab6a85Address.0x70586d97 with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f8ab6a85Address)
    staticcall sub_f8ab6a85Address.0xf46d7b8a with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10000)
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10000 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (10000 * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / 10000)
}

function getTotalWithdrawableINSURRewardAmount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require ext_code.size(sub_e7912d4aAddress)
    staticcall sub_e7912d4aAddress.0x5d0414eb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e7912d4aAddress)
    staticcall sub_e7912d4aAddress.0xb9ccb089 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        require ext_code.size(sub_e7912d4aAddress)
        staticcall sub_e7912d4aAddress.0xeb6b45c8 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    if ext_call.return_data[0] == ext_call.return_data[0]:
        require ext_code.size(sub_e7912d4aAddress)
        staticcall sub_e7912d4aAddress.0xeb6b45c8 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if var93003 >= ext_call.return_data[0] + 1:
        require ext_code.size(sub_e7912d4aAddress)
        staticcall sub_e7912d4aAddress.0xeb6b45c8 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    if 1 > var97002:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[96] = 0xbb30462800000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = var101001
    require ext_code.size(sub_e7912d4aAddress)
    staticcall sub_e7912d4aAddress.mem[var103003 len 4] with:
            gas gas_remaining wei
           args mem[var103003 + 4 len var103004 - 4]
    mem[var103005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _25971 = mem[var107002]
    mem[96] = 0x36dbd2f900000000000000000000000000000000000000000000000000000000
    mem[100] = _25971
    require ext_code.size(sub_3ec4d4d6Address)
    staticcall sub_3ec4d4d6Address.mem[var109003 len 4] with:
            gas gas_remaining wei
           args mem[var109003 + 4 len var109004 - 4]
    mem[var109005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if mem[var113002] == 9:
        if not var115001:
            mem[96] = 0x36dbd2f900000000000000000000000000000000000000000000000000000000
            mem[100] = var119002
            require ext_code.size(sub_3ec4d4d6Address)
            staticcall sub_3ec4d4d6Address.mem[var121003 len 4] with:
                    gas gas_remaining wei
                   args mem[var121003 + 4 len var121004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            require ext_code.size(sub_e7912d4aAddress)
            staticcall sub_e7912d4aAddress.0xeb6b45c8 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
    else:
        if not var116001:
            require ext_code.size(sub_3ec4d4d6Address)
            # nil
        else:
            require ext_code.size(sub_e7912d4aAddress)
            staticcall sub_e7912d4aAddress.0xeb6b45c8 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ext_call.return_data[0]
}



}
