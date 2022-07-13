contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
address sub_a64fb0a6Address;
address dataAddress;
address sub_0457dad2Address;
address exchangeRateAddress;

function sub_0457dad2(?) payable {
    return sub_0457dad2Address
}

function exchangeRate() payable {
    return exchangeRateAddress
}

function data() payable {
    return dataAddress
}

function owner() payable {
    return owner
}

function sub_a64fb0a6(?) payable {
    return sub_a64fb0a6Address
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

function setup(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
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
    if not arg5:
        revert with 0, 'S:5'
    sub_ffe6e7d7Address = arg1
    sub_a64fb0a6Address = arg2
    dataAddress = arg3
    sub_0457dad2Address = arg4
    exchangeRateAddress = arg5
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

function sub_d414f861(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(dataAddress)
    staticcall dataAddress.0xc3a82e47 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverEstimatedPremiumAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverBeginTimestamp(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverEndTimestamp(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverClaimedAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(dataAddress)
        staticcall dataAddress.getCoverReferralRewardPctg(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataAddress)
        staticcall dataAddress.getCoverRewardPctg(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
            else:
                if block.timestamp > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (block.timestamp * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.timestamp:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
        else:
            if 2 * ext_call.return_data[0] > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < ext_call.return_data[0]:
                else:
                    if block.timestamp > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (-2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < ext_call.return_data[0]:
                    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                        if (ext_call.return_data[0] * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (ext_call.return_data[0] * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) / (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                else:
                    if block.timestamp > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                        if (ext_call.return_data[0] * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (block.timestamp * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) / (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 != ext_call.return_data[0] - block.timestamp:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
    else:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverReferralRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp < ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                    else:
                        if block.timestamp > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (block.timestamp * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != ext_call.return_data[0] - block.timestamp:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                else:
                    if 2 * ext_call.return_data[0] > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != (-2 * ext_call.return_data[0]) + 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                            if (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) - (ext_call.return_data[0] * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) - (block.timestamp * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000 != ext_call.return_data[0] - block.timestamp:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverReferralRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp < ext_call.return_data[0]:
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                    else:
                        if block.timestamp > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.timestamp:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                else:
                    if 2 * ext_call.return_data[0] > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (-2 * ext_call.return_data[0]) + 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                            if (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) - (ext_call.return_data[0] * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) / (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) - (block.timestamp * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) / (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000 != ext_call.return_data[0] - block.timestamp:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
    revert with 0, 'SafeMath: division by zero'
}

function sub_133f3dd0(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.isAllowdCaller(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    require ext_code.size(dataAddress)
    staticcall dataAddress.getAdjustedCoverStatus(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'CCCV: 1'
    require ext_code.size(dataAddress)
    call dataAddress.setCoverStatus(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), arg2, 4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(dataAddress)
    staticcall dataAddress.0xc3a82e47 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverEstimatedPremiumAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverBeginTimestamp(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverEndTimestamp(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.getCoverClaimedAmount(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(dataAddress)
        staticcall dataAddress.getCoverReferralRewardPctg(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataAddress)
        staticcall dataAddress.getCoverRewardPctg(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not uint255(ext_call.return_data[0]):
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < ext_call.return_data[0]:
                if ext_call.return_data[0]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
            else:
                if block.timestamp > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0]:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (block.timestamp * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.timestamp:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
        else:
            if 2 * ext_call.return_data[0] > 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < ext_call.return_data[0]:
                else:
                    if block.timestamp > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (-2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp < ext_call.return_data[0]:
                    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                        if (ext_call.return_data[0] * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (ext_call.return_data[0] * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) / (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                else:
                    if block.timestamp > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000:
                        if (ext_call.return_data[0] * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) - (block.timestamp * (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) / (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 != ext_call.return_data[0] - block.timestamp:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
    else:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverReferralRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp < ext_call.return_data[0]:
                        if 0 / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                    else:
                        if block.timestamp > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (block.timestamp * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != ext_call.return_data[0] - block.timestamp:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                else:
                    if 2 * ext_call.return_data[0] > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not 0 / ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != (-2 * ext_call.return_data[0]) + 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                            if (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) - (ext_call.return_data[0] * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) - (block.timestamp * (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000) / (10000 * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) - (ext_call.return_data[0] * 0 / ext_call.return_data[0]) / 10000 != ext_call.return_data[0] - block.timestamp:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverReferralRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(dataAddress)
                staticcall dataAddress.getCoverRewardPctg(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint255(ext_call.return_data[0]):
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.timestamp < ext_call.return_data[0]:
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                    else:
                        if block.timestamp > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                            if (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (block.timestamp * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - block.timestamp:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                else:
                    if 2 * ext_call.return_data[0] > 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != (-2 * ext_call.return_data[0]) + 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.timestamp < ext_call.return_data[0]:
                            if (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) - (ext_call.return_data[0] * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) / (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                        else:
                            if block.timestamp > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000:
                                if (ext_call.return_data[0] * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) - (block.timestamp * (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000) / (10000 * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) - (ext_call.return_data[0] * (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]) / 10000 != ext_call.return_data[0] - block.timestamp:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
    revert with 0, 'SafeMath: division by zero'
}



}
