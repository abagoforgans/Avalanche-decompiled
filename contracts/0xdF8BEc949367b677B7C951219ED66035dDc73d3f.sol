contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
address sub_ffe6e7d7Address;
address sub_a64fb0a6Address;
address coverAddress;
address claimAddress;
address sub_713e6a09Address;
uint256 vestingDuration;
mapping of struct sub_071143af;
mapping of uint256 sub_7b96f611;
mapping of uint256 sub_52588197;
mapping of uint256 sub_6067a8a5;
mapping of uint256 sub_e655fcc0;
address referralProgramAddress;

function sub_071143af(?) payable {
    require calldata.size - 4 >= 32
    return sub_071143af[arg1].field_0
}

function vestingDuration() payable {
    return vestingDuration
}

function claim() payable {
    return claimAddress
}

function sub_52588197(?) payable {
    require calldata.size - 4 >= 32
    return sub_52588197[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_6067a8a5(?) payable {
    require calldata.size - 4 >= 32
    return sub_6067a8a5[arg1]
}

function sub_713e6a09(?) payable {
    return sub_713e6a09Address
}

function sub_7b96f611(?) payable {
    require calldata.size - 4 >= 32
    return sub_7b96f611[arg1]
}

function owner() payable {
    return owner
}

function sub_a64fb0a6(?) payable {
    return sub_a64fb0a6Address
}

function referralProgram() payable {
    return referralProgramAddress
}

function sub_e655fcc0(?) payable {
    require calldata.size - 4 >= 32
    return sub_e655fcc0[arg1]
}

function cover() payable {
    return coverAddress
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
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

function sub_3dd4160e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    vestingDuration = arg1
}

function pauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unPauseAll() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setup(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg5:
        revert with 0, 'S:5'
    if not arg6:
        revert with 0, 'S:6'
    sub_ffe6e7d7Address = arg1
    coverAddress = arg2
    claimAddress = arg3
    referralProgramAddress = arg4
    sub_713e6a09Address = arg5
    sub_a64fb0a6Address = arg6
    vestingDuration = 1
}

function sub_699c8f33(?) payable {
    if block.number >= sub_52588197[address(msg.sender)]:
        if sub_6067a8a5[address(msg.sender)] + sub_071143af[address(msg.sender)].field_0 < sub_071143af[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_6067a8a5[address(msg.sender)] + sub_071143af[address(msg.sender)].field_0, 0
    if block.number >= sub_52588197[address(msg.sender)]:
        if sub_6067a8a5[address(msg.sender)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_6067a8a5[address(msg.sender)], sub_071143af[address(msg.sender)].field_0
    if block.number <= sub_7b96f611[address(msg.sender)]:
        if sub_6067a8a5[address(msg.sender)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_6067a8a5[address(msg.sender)], sub_071143af[address(msg.sender)].field_0
    if sub_7b96f611[address(msg.sender)] > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_071143af[address(msg.sender)].field_0:
        if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
        if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        return sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]), 
               sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    return sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]), 
           sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
}

function withdrawReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not arg1:
        revert with 0, 'withdrawR:1'
    if block.number >= sub_52588197[address(msg.sender)]:
        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
        sub_071143af[address(msg.sender)].field_0 = 0
        sub_7b96f611[address(msg.sender)] = 0
        sub_52588197[address(msg.sender)] = 0
    else:
        if block.number < sub_52588197[address(msg.sender)]:
            if block.number > sub_7b96f611[address(msg.sender)]:
                if sub_7b96f611[address(msg.sender)] > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_071143af[address(msg.sender)].field_0:
                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_071143af[address(msg.sender)].field_0 -= 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                    sub_7b96f611[address(msg.sender)] = block.number
                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                else:
                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_071143af[address(msg.sender)].field_0 -= (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                    sub_7b96f611[address(msg.sender)] = block.number
                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
    if arg1 > sub_6067a8a5[address(msg.sender)]:
        revert with 0, 'withdrawR:2'
    if arg1 > sub_6067a8a5[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_6067a8a5[address(msg.sender)] -= arg1
    if arg1 + sub_e655fcc0[address(msg.sender)] < sub_e655fcc0[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_e655fcc0[address(msg.sender)] += arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_a64fb0a6Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_a64fb0a6Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    stor151 = 1
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                    stor151 = 1
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
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                paused = 0
                                stor151 = 1
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
                                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        stor151 = 1
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            stor151 = 1
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}

function unlockReward(address[] arg1, bool arg2, bool arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not arg2:
        if not arg3:
            if not arg4:
                if 0 == arg1.length:
                    revert with 0, 'unlockReward:1'
                mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                require ext_code.size(sub_713e6a09Address)
                call sub_713e6a09Address.0xd5c71c37 with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'unlockReward:1'
                if block.number >= sub_52588197[address(msg.sender)]:
                    if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0]
                    sub_7b96f611[address(msg.sender)] = block.number
                    if block.number + vestingDuration < vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                    else:
                        if block.number <= sub_7b96f611[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                        else:
                            if sub_7b96f611[address(msg.sender)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_071143af[address(msg.sender)].field_0:
                                if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                sub_7b96f611[address(msg.sender)] = block.number
                                if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                            else:
                                if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                sub_7b96f611[address(msg.sender)] = block.number
                                if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                            if block.number + vestingDuration < vestingDuration:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_52588197[address(msg.sender)] = block.number + vestingDuration
            else:
                require ext_code.size(referralProgramAddress)
                call referralProgramAddress.unlockRewardByController(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 == arg1.length:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_1 = uint255(ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
        else:
            require ext_code.size(claimAddress)
            call claimAddress.unlockRewardByController(address rg1, address rg2) with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg4:
                if 0 == arg1.length:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_1 = uint255(ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
            else:
                require ext_code.size(referralProgramAddress)
                call referralProgramAddress.unlockRewardByController(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 == arg1.length:
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_1 = uint255(ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 3 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 3 * ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
    else:
        require ext_code.size(coverAddress)
        call coverAddress.unlockRewardByController(address rg1, address rg2) with:
             gas gas_remaining wei
            args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if not arg4:
                if 0 == arg1.length:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = ext_call.return_data[0] + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_1 = uint255(ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
            else:
                require ext_code.size(referralProgramAddress)
                call referralProgramAddress.unlockRewardByController(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 == arg1.length:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_1 = uint255(ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 3 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 3 * ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
        else:
            require ext_code.size(claimAddress)
            call claimAddress.unlockRewardByController(address rg1, address rg2) with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg4:
                if 0 == arg1.length:
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 2 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_1 = uint255(ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 2 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 2 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (2 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 3 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 3 * ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
            else:
                require ext_code.size(referralProgramAddress)
                call referralProgramAddress.unlockRewardByController(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args msg.sender, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 == arg1.length:
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 3 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 3 * ext_call.return_data[0]
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 3 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 3 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (3 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
                else:
                    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                    require ext_code.size(sub_713e6a09Address)
                    call sub_713e6a09Address.0xd5c71c37 with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 4 * ext_call.return_data[0]:
                        revert with 0, 'unlockReward:1'
                    if block.number >= sub_52588197[address(msg.sender)]:
                        if sub_071143af[address(msg.sender)].field_0 + sub_6067a8a5[address(msg.sender)] < sub_6067a8a5[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6067a8a5[address(msg.sender)] += sub_071143af[address(msg.sender)].field_0
                        sub_071143af[address(msg.sender)].field_0 = 0
                        sub_071143af[address(msg.sender)].field_2 = Mask(254, 0, ext_call.return_data[0])
                        sub_7b96f611[address(msg.sender)] = block.number
                        if block.number + vestingDuration < vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_52588197[address(msg.sender)] = block.number + vestingDuration
                    else:
                        if block.number >= sub_52588197[address(msg.sender)]:
                            if sub_071143af[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_071143af[address(msg.sender)].field_0 += 4 * ext_call.return_data[0]
                        else:
                            if block.number <= sub_7b96f611[address(msg.sender)]:
                                if sub_071143af[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_071143af[address(msg.sender)].field_0 += 4 * ext_call.return_data[0]
                            else:
                                if sub_7b96f611[address(msg.sender)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_7b96f611[address(msg.sender)] > sub_52588197[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_071143af[address(msg.sender)].field_0:
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 4 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (4 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + (0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += 0 / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                else:
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_071143af[address(msg.sender)].field_0 != block.number - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg1.length)
                                    if sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                    if (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)] > sub_071143af[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 4 * ext_call.return_data[0] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_071143af[address(msg.sender)].field_0 = (4 * ext_call.return_data[0]) + sub_071143af[address(msg.sender)].field_0 - ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)])
                                    sub_7b96f611[address(msg.sender)] = block.number
                                    if sub_6067a8a5[address(msg.sender)] + ((block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]) < (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_6067a8a5[address(msg.sender)] += (block.number * sub_071143af[address(msg.sender)].field_0) - (sub_7b96f611[address(msg.sender)] * sub_071143af[address(msg.sender)].field_0) / sub_52588197[address(msg.sender)] - sub_7b96f611[address(msg.sender)]
                                if block.number + vestingDuration < vestingDuration:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_52588197[address(msg.sender)] = block.number + vestingDuration
    stor151 = 1
}



}
