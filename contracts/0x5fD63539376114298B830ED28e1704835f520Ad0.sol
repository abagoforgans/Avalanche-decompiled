contract main {




// =====================  Runtime code  =====================


#
#  - getAllGrossUnitCosts()
#  - sub_fc2f5c0d(?)
#
const sub_74e58909(?) = 100


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address pdAddress;
address sub_0457dad2Address;
address sub_00c25b4aAddress;
address sub_5bfb7508Address;
address unitCostAddress;

function sub_00c25b4a(?) payable {
    return sub_00c25b4aAddress
}

function sub_0457dad2(?) payable {
    return sub_0457dad2Address
}

function sub_5bfb7508(?) payable {
    return sub_5bfb7508Address
}

function pd() payable {
    return pdAddress
}

function owner() payable {
    return owner
}

function unitCost() payable {
    return unitCostAddress
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
    pdAddress = arg1
    sub_0457dad2Address = arg2
    sub_00c25b4aAddress = arg3
    sub_5bfb7508Address = arg4
    unitCostAddress = arg5
}

function sub_b41ab54d(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(unitCostAddress)
    staticcall unitCostAddress.0x69047d44 with:
            gas gas_remaining wei
           args arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xb7283f41 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return ext_call.return_data[0]
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

function getGrossUnitCost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_5bfb7508Address)
    staticcall sub_5bfb7508Address.0xcb5bf874 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_5bfb7508Address)
        staticcall sub_5bfb7508Address.0x98acd7a6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(unitCostAddress)
        staticcall unitCostAddress.0x69047d44 with:
                gas gas_remaining wei
               args arg1, address(ext_call.return_data[0]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        if not ext_call.return_data[0]:
            staticcall sub_00c25b4aAddress.0xb7283f41 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        staticcall sub_00c25b4aAddress.0xf19381d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd29551e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0x2d06d53e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd9596445 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 100 * 10^6 * ext_call.return_data[0]:
                return 0
            if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 100 * 10^6 * ext_call.return_data[0]:
                return 0
            if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / ext_call.return_data[0] != 0x9f4f2726179a224501d762422c946590d91000000000000000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] <= 3:
        require ext_code.size(sub_5bfb7508Address)
        staticcall sub_5bfb7508Address.0x98acd7a6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(unitCostAddress)
        staticcall unitCostAddress.0x69047d44 with:
                gas gas_remaining wei
               args arg1, address(ext_call.return_data[0]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        if not ext_call.return_data[0]:
            staticcall sub_00c25b4aAddress.0xb7283f41 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        staticcall sub_00c25b4aAddress.0xf19381d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd29551e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0x2d06d53e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd9596445 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return 0
                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return 0
                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                return 0
            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if not ext_call.return_data[0]:
            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 99999999 * ext_call.return_data[0]:
                return 0
            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 99999999 * ext_call.return_data[0]:
                return 0
            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2) + 1 < 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2:
        revert with 0, 'SafeMath: addition overflow'
    s = (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2) + 1
    t = 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0]
    while s < t:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if s + (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s) < 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s:
            revert with 0, 'SafeMath: addition overflow'
        s = s + (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s) / 2
        t = s
        continue 
    if t <= 3:
        require ext_code.size(sub_5bfb7508Address)
        staticcall sub_5bfb7508Address.0x98acd7a6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(unitCostAddress)
        staticcall unitCostAddress.0x69047d44 with:
                gas gas_remaining wei
               args arg1, address(ext_call.return_data[0]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        if not ext_call.return_data[0]:
            staticcall sub_00c25b4aAddress.0xb7283f41 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        staticcall sub_00c25b4aAddress.0xf19381d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd29551e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0x2d06d53e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd9596445 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not t:
            if not ext_call.return_data[0]:
                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return 0
                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return 0
                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                return 0
            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if not ext_call.return_data[0]:
            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 99999999 * ext_call.return_data[0]:
                return 0
            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 99999999 * ext_call.return_data[0]:
                return 0
            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if (t / 2) + 1 < t / 2:
        revert with 0, 'SafeMath: addition overflow'
    s = (t / 2) + 1
    u = t
    while s < u:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if s + (t / s) < t / s:
            revert with 0, 'SafeMath: addition overflow'
        s = s + (t / s) / 2
        u = s
        continue 
    if u <= 3:
        require ext_code.size(sub_5bfb7508Address)
        staticcall sub_5bfb7508Address.0x98acd7a6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(unitCostAddress)
        staticcall unitCostAddress.0x69047d44 with:
                gas gas_remaining wei
               args arg1, address(ext_call.return_data[0]), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        if not ext_call.return_data[0]:
            staticcall sub_00c25b4aAddress.0xb7283f41 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        staticcall sub_00c25b4aAddress.0xf19381d5 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd29551e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0x2d06d53e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_00c25b4aAddress)
        staticcall sub_00c25b4aAddress.0xd9596445 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not u:
            if not ext_call.return_data[0]:
                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return 0
                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0]:
                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 100 * 10^6 * ext_call.return_data[0]:
                    return 0
                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                return 0
            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if not ext_call.return_data[0]:
            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 99999999 * ext_call.return_data[0]:
                return 0
            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 99999999 * ext_call.return_data[0]:
                return 0
            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if (u / 2) + 1 < u / 2:
        revert with 0, 'SafeMath: addition overflow'
    s = (u / 2) + 1
    t = u
    while s < t:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if s + (u / s) < u / s:
            revert with 0, 'SafeMath: addition overflow'
        s = s + (u / s) / 2
        t = s
        continue 
    require ext_code.size(sub_5bfb7508Address)
    staticcall sub_5bfb7508Address.0x98acd7a6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(unitCostAddress)
    staticcall unitCostAddress.0x69047d44 with:
            gas gas_remaining wei
           args arg1, address(ext_call.return_data[0]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_00c25b4aAddress)
    if not ext_call.return_data[0]:
        staticcall sub_00c25b4aAddress.0xb7283f41 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    staticcall sub_00c25b4aAddress.0xf19381d5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_00c25b4aAddress)
    staticcall sub_00c25b4aAddress.0xd29551e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_00c25b4aAddress)
    staticcall sub_00c25b4aAddress.0x2d06d53e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_00c25b4aAddress)
    staticcall sub_00c25b4aAddress.0xd9596445 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if t > 100 * 10^6:
        if not ext_call.return_data[0]:
            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * 10^6 * ext_call.return_data[0]:
                return 0
            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * 10^6 * ext_call.return_data[0]:
                return 0
            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) < 2 * 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]):
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if -t + 100 * 10^6 < 2 * 10^6:
        if not ext_call.return_data[0]:
            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * 10^6 * ext_call.return_data[0]:
                return 0
            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 2 * 10^6 * ext_call.return_data[0]:
                return 0
            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) < 2 * 10^6 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]):
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if not ext_call.return_data[0]:
        if not -t + 100 * 10^6:
            return 0
        if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
            return 0
        if (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        if not -t + 100 * 10^6:
            return 0
        if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
            return 0
        if (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not -t + 100 * 10^6:
        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 10000 * ext_call.return_data[0] * ext_call.return_data[0]:
            return 0
        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
    if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
        return 0
    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12)
}

function sub_81e34287(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _2267 = mem[(32 * idx) + 128]
            require ext_code.size(sub_5bfb7508Address)
            staticcall sub_5bfb7508Address.0xcb5bf874 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_5bfb7508Address)
                staticcall sub_5bfb7508Address.0x98acd7a6 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                mem[(64 * arg1.length) + 228] = 0
                require ext_code.size(unitCostAddress)
                staticcall unitCostAddress.0x69047d44 with:
                        gas gas_remaining wei
                       args _2267, address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(64 * arg1.length) + 164] = _2267
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xb7283f41 with:
                            gas gas_remaining wei
                           args _2267
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0xf19381d5 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0xd29551e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0x2d06d53e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0xd9596445 with:
                        gas gas_remaining wei
                mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                    if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 100 * 10^6 * ext_call.return_data[0]:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    else:
                        if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        else:
                            if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                    else:
                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        else:
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
            else:
                if 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / ext_call.return_data[0] != 0x9f4f2726179a224501d762422c946590d91000000000000000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                if 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] <= 3:
                    require ext_code.size(sub_5bfb7508Address)
                    staticcall sub_5bfb7508Address.0x98acd7a6 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                    mem[(64 * arg1.length) + 228] = 0
                    require ext_code.size(unitCostAddress)
                    staticcall unitCostAddress.0x69047d44 with:
                            gas gas_remaining wei
                           args _2267, address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(64 * arg1.length) + 164] = _2267
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                gas gas_remaining wei
                               args _2267
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xf19381d5 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xd29551e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0x2d06d53e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xd9596445 with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                            else:
                                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                    else:
                        if not ext_call.return_data[0]:
                            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 99999999 * ext_call.return_data[0]:
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                            else:
                                if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 99999999 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                else:
                    if (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2) + 1 < 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2:
                        revert with 0, 'SafeMath: addition overflow'
                    s = (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2) + 1
                    t = 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0]
                    while s < t:
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require s
                        if s + (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s) < 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s:
                            revert with 0, 'SafeMath: addition overflow'
                        s = s + (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s) / 2
                        t = s
                        continue 
                    if t <= 3:
                        require ext_code.size(sub_5bfb7508Address)
                        staticcall sub_5bfb7508Address.0x98acd7a6 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                        mem[(64 * arg1.length) + 228] = 0
                        require ext_code.size(unitCostAddress)
                        staticcall unitCostAddress.0x69047d44 with:
                                gas gas_remaining wei
                               args _2267, address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(64 * arg1.length) + 164] = _2267
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                    gas gas_remaining wei
                                   args _2267
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xf19381d5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xd29551e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0x2d06d53e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xd9596445 with:
                                gas gas_remaining wei
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not t:
                            if not ext_call.return_data[0]:
                                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 100 * 10^6 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if not ext_call.return_data[0]:
                                if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 99999999 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 99999999 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                    else:
                        if (t / 2) + 1 < t / 2:
                            revert with 0, 'SafeMath: addition overflow'
                        s = (t / 2) + 1
                        u = t
                        while s < u:
                            if s <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require s
                            if s + (t / s) < t / s:
                                revert with 0, 'SafeMath: addition overflow'
                            s = s + (t / s) / 2
                            u = s
                            continue 
                        if u <= 3:
                            require ext_code.size(sub_5bfb7508Address)
                            staticcall sub_5bfb7508Address.0x98acd7a6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                            mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                            mem[(64 * arg1.length) + 228] = 0
                            require ext_code.size(unitCostAddress)
                            staticcall unitCostAddress.0x69047d44 with:
                                    gas gas_remaining wei
                                   args _2267, address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(64 * arg1.length) + 164] = _2267
                                require ext_code.size(sub_00c25b4aAddress)
                                staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                        gas gas_remaining wei
                                       args _2267
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xf19381d5 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd29551e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0x2d06d53e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd9596445 with:
                                    gas gas_remaining wei
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not u:
                                if not ext_call.return_data[0]:
                                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 100 * 10^6 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 100 * 10^6 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if not ext_call.return_data[0]:
                                    if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 99999999 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 99999999 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if (u / 2) + 1 < u / 2:
                                revert with 0, 'SafeMath: addition overflow'
                            s = (u / 2) + 1
                            t = u
                            while s < t:
                                if s <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require s
                                if s + (u / s) < u / s:
                                    revert with 0, 'SafeMath: addition overflow'
                                s = s + (u / s) / 2
                                t = s
                                continue 
                            require ext_code.size(sub_5bfb7508Address)
                            staticcall sub_5bfb7508Address.0x98acd7a6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                            mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                            mem[(64 * arg1.length) + 228] = 0
                            require ext_code.size(unitCostAddress)
                            staticcall unitCostAddress.0x69047d44 with:
                                    gas gas_remaining wei
                                   args _2267, address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(64 * arg1.length) + 164] = _2267
                                require ext_code.size(sub_00c25b4aAddress)
                                staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                        gas gas_remaining wei
                                       args _2267
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xf19381d5 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd29551e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0x2d06d53e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd9596445 with:
                                    gas gas_remaining wei
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if t > 100 * 10^6:
                                if not ext_call.return_data[0]:
                                    if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 2 * 10^6 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 2 * 10^6 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) < 2 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]):
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if -t + 100 * 10^6 < 2 * 10^6:
                                    if not ext_call.return_data[0]:
                                        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 2 * 10^6 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                                            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 2 * 10^6 * ext_call.return_data[0]:
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                        else:
                                            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) < 2 * 10^6 * ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]):
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if not ext_call.return_data[0]:
                                        if not -t + 100 * 10^6:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if not (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                                            if not -t + 100 * 10^6:
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                if not (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                                else:
                                                    if (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                        else:
                                            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if not -t + 100 * 10^6:
                                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 10000 * ext_call.return_data[0] * ext_call.return_data[0]:
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                                else:
                                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                            else:
                                                if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                                else:
                                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _2271 = mem[(32 * idx) + 128]
            require ext_code.size(sub_5bfb7508Address)
            staticcall sub_5bfb7508Address.0xcb5bf874 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_5bfb7508Address)
                staticcall sub_5bfb7508Address.0x98acd7a6 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                mem[(64 * arg1.length) + 228] = 0
                require ext_code.size(unitCostAddress)
                staticcall unitCostAddress.0x69047d44 with:
                        gas gas_remaining wei
                       args _2271, address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(64 * arg1.length) + 164] = _2271
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xb7283f41 with:
                            gas gas_remaining wei
                           args _2271
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0xf19381d5 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0xd29551e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0x2d06d53e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_00c25b4aAddress)
                staticcall sub_00c25b4aAddress.0xd9596445 with:
                        gas gas_remaining wei
                mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not ext_call.return_data[0]:
                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                    if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 100 * 10^6 * ext_call.return_data[0]:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    else:
                        if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 100 * 10^6 * ext_call.return_data[0]:
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        else:
                            if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                    else:
                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        else:
                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            require idx < mem[(32 * arg1.length) + 128]
                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
            else:
                if 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / ext_call.return_data[0] != 0x9f4f2726179a224501d762422c946590d91000000000000000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                if 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] <= 3:
                    require ext_code.size(sub_5bfb7508Address)
                    staticcall sub_5bfb7508Address.0x98acd7a6 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                    mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                    mem[(64 * arg1.length) + 228] = 0
                    require ext_code.size(unitCostAddress)
                    staticcall unitCostAddress.0x69047d44 with:
                            gas gas_remaining wei
                           args _2271, address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(64 * arg1.length) + 164] = _2271
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                gas gas_remaining wei
                               args _2271
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xf19381d5 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xd29551e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0x2d06d53e with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_00c25b4aAddress)
                    staticcall sub_00c25b4aAddress.0xd9596445 with:
                            gas gas_remaining wei
                    mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 100 * 10^6 * ext_call.return_data[0]:
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                            else:
                                if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                    else:
                        if not ext_call.return_data[0]:
                            if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 99999999 * ext_call.return_data[0]:
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                            else:
                                if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                require idx < mem[(32 * arg1.length) + 128]
                                mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                            if not ext_call.return_data[0] * ext_call.return_data[0]:
                                if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 99999999 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                else:
                    if (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2) + 1 < 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2:
                        revert with 0, 'SafeMath: addition overflow'
                    s = (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / 2) + 1
                    t = 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0]
                    while s < t:
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require s
                        if s + (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s) < 0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s:
                            revert with 0, 'SafeMath: addition overflow'
                        s = s + (0x9f4f2726179a224501d762422c946590d91000000000000000 * ext_call.return_data[0] / s) / 2
                        t = s
                        continue 
                    if t <= 3:
                        require ext_code.size(sub_5bfb7508Address)
                        staticcall sub_5bfb7508Address.0x98acd7a6 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                        mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                        mem[(64 * arg1.length) + 228] = 0
                        require ext_code.size(unitCostAddress)
                        staticcall unitCostAddress.0x69047d44 with:
                                gas gas_remaining wei
                               args _2271, address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            mem[(64 * arg1.length) + 164] = _2271
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                    gas gas_remaining wei
                                   args _2271
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xf19381d5 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xd29551e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0x2d06d53e with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_00c25b4aAddress)
                        staticcall sub_00c25b4aAddress.0xd9596445 with:
                                gas gas_remaining wei
                        mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not t:
                            if not ext_call.return_data[0]:
                                if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 100 * 10^6 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 100 * 10^6 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if not ext_call.return_data[0]:
                                if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 99999999 * ext_call.return_data[0]:
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                else:
                                    if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                if not ext_call.return_data[0] * ext_call.return_data[0]:
                                    if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 99999999 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                    else:
                        if (t / 2) + 1 < t / 2:
                            revert with 0, 'SafeMath: addition overflow'
                        s = (t / 2) + 1
                        u = t
                        while s < u:
                            if s <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require s
                            if s + (t / s) < t / s:
                                revert with 0, 'SafeMath: addition overflow'
                            s = s + (t / s) / 2
                            u = s
                            continue 
                        if u <= 3:
                            require ext_code.size(sub_5bfb7508Address)
                            staticcall sub_5bfb7508Address.0x98acd7a6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                            mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                            mem[(64 * arg1.length) + 228] = 0
                            require ext_code.size(unitCostAddress)
                            staticcall unitCostAddress.0x69047d44 with:
                                    gas gas_remaining wei
                                   args _2271, address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(64 * arg1.length) + 164] = _2271
                                require ext_code.size(sub_00c25b4aAddress)
                                staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                        gas gas_remaining wei
                                       args _2271
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xf19381d5 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd29551e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0x2d06d53e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd9596445 with:
                                    gas gas_remaining wei
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if not u:
                                if not ext_call.return_data[0]:
                                    if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 100 * 10^6 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 100 * 10^6 * ext_call.return_data[0] < 100 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 100 * 10^6 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 100 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 100 * 10^6 * ext_call.return_data[0] / 100 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) < 100 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]):
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if not ext_call.return_data[0]:
                                    if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 99999999 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 99999999 * ext_call.return_data[0] < 99999999 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 99999999 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 99999999 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (277777775 * 3600 * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 99999999 * ext_call.return_data[0] / 99999999 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) < 99999999 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]):
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (277777775 * 3600 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (99999999 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                        else:
                            if (u / 2) + 1 < u / 2:
                                revert with 0, 'SafeMath: addition overflow'
                            s = (u / 2) + 1
                            t = u
                            while s < t:
                                if s <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require s
                                if s + (u / s) < u / s:
                                    revert with 0, 'SafeMath: addition overflow'
                                s = s + (u / s) / 2
                                t = s
                                continue 
                            require ext_code.size(sub_5bfb7508Address)
                            staticcall sub_5bfb7508Address.0x98acd7a6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(64 * arg1.length) + 164] = mem[(32 * idx) + 128]
                            mem[(64 * arg1.length) + 196] = address(ext_call.return_data[0])
                            mem[(64 * arg1.length) + 228] = 0
                            require ext_code.size(unitCostAddress)
                            staticcall unitCostAddress.0x69047d44 with:
                                    gas gas_remaining wei
                                   args _2271, address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                mem[(64 * arg1.length) + 164] = _2271
                                require ext_code.size(sub_00c25b4aAddress)
                                staticcall sub_00c25b4aAddress.0xb7283f41 with:
                                        gas gas_remaining wei
                                       args _2271
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xf19381d5 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd29551e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0x2d06d53e with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_00c25b4aAddress)
                            staticcall sub_00c25b4aAddress.0xd9596445 with:
                                    gas gas_remaining wei
                            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if t > 100 * 10^6:
                                if not ext_call.return_data[0]:
                                    if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 2 * 10^6 * ext_call.return_data[0]:
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                    else:
                                        if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        require idx < mem[(32 * arg1.length) + 128]
                                        mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                    if not ext_call.return_data[0] * ext_call.return_data[0]:
                                        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 2 * 10^6 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) < 2 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]):
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                            else:
                                if -t + 100 * 10^6 < 2 * 10^6:
                                    if not ext_call.return_data[0]:
                                        if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 2 * 10^6 * ext_call.return_data[0]:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                                            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if 2 * 10^6 * ext_call.return_data[0] < 2 * 10^6 * ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 2 * 10^6 * ext_call.return_data[0]:
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 2 * 10^6 * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = (2 * 10^10 * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                        else:
                                            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if 2 * 10^6 * ext_call.return_data[0] / 2 * 10^6 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) < 2 * 10^6 * ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]):
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^10 * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (2 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                else:
                                    if not ext_call.return_data[0]:
                                        if not -t + 100 * 10^6:
                                            require idx < mem[(32 * arg1.length) + 128]
                                            mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                        else:
                                            if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if not (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                        if not ext_call.return_data[0] * ext_call.return_data[0]:
                                            if not -t + 100 * 10^6:
                                                require idx < mem[(32 * arg1.length) + 128]
                                                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                            else:
                                                if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                if not (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                                else:
                                                    if (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                        else:
                                            if 10000 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] != 10000:
                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                            if not -t + 100 * 10^6:
                                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 10000 * ext_call.return_data[0] * ext_call.return_data[0]:
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                                else:
                                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10000 * ext_call.return_data[0] * ext_call.return_data[0] != (2 * ext_call.return_data[0]) + 10000:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
                                            else:
                                                if (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) / -t + 100 * 10^6 != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                if 10000 * ext_call.return_data[0] * ext_call.return_data[0] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]):
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                                                else:
                                                    if (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / (10000 * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0]) - (t * ext_call.return_data[0]) != (2 * ext_call.return_data[0]) + 10000:
                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * arg1.length) + 261 len 31]
                                                    require idx < mem[(32 * arg1.length) + 128]
                                                    mem[(32 * idx) + (32 * arg1.length) + 160] = (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) + (10^12 * ext_call.return_data[0]) - (10000 * t * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) + (10000 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) + (100 * 10^6 * ext_call.return_data[0] * ext_call.return_data[0]) - (t * ext_call.return_data[0] * ext_call.return_data[0]) / 10^12
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return Array(len=mem[(32 * arg1.length) + 128], data=mem[(64 * arg1.length) + 224 len 32 * mem[(32 * arg1.length) + 128]])
}



}
