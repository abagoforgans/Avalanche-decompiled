contract main {




// =====================  Runtime code  =====================


#
#  - sub_69047d44(?)
#  - sub_e91ada58(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address pdAddress;
address sub_5bfb7508Address;
mapping of uint8 stor103;
mapping of uint256 sub_c59093f1;
mapping of uint256 sub_36261e2a;
mapping of uint256 sub_bba9071d;
mapping of uint256 sub_322f555f;
mapping of uint256 sub_d203ffb7;
mapping of uint256 sub_59c2adeb;
mapping of uint256 sub_39021990;
mapping of uint256 sub_d4dc094e;
address exchangeRateAddress;
uint256 slippageFactor;

function sub_097d2c59(?) payable {
    return slippageFactor
}

function sub_322f555f(?) payable {
    require calldata.size - 4 >= 32
    return sub_322f555f[arg1]
}

function sub_36261e2a(?) payable {
    require calldata.size - 4 >= 32
    return sub_36261e2a[arg1]
}

function sub_39021990(?) payable {
    require calldata.size - 4 >= 32
    return sub_39021990[arg1]
}

function exchangeRate() payable {
    return exchangeRateAddress
}

function sub_59c2adeb(?) payable {
    require calldata.size - 4 >= 32
    return sub_59c2adeb[arg1]
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

function sub_a07a89a2(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor103[arg1])
}

function sub_bba9071d(?) payable {
    require calldata.size - 4 >= 32
    return sub_bba9071d[arg1]
}

function sub_c59093f1(?) payable {
    require calldata.size - 4 >= 32
    return sub_c59093f1[arg1]
}

function sub_d203ffb7(?) payable {
    require calldata.size - 4 >= 32
    return sub_d203ffb7[arg1]
}

function sub_d4dc094e(?) payable {
    require calldata.size - 4 >= 32
    return sub_d4dc094e[arg1]
}

function slippageFactor() payable {
    return slippageFactor
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

function setSlippageFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'SSFT:1'
    slippageFactor = arg1
}

function setup(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    pdAddress = arg1
    sub_5bfb7508Address = arg2
    exchangeRateAddress = arg3
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

function setStatus(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'SOVWS:1'
    require ext_code.size(pdAddress)
    staticcall pdAddress.0x4a348da9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'SOVWS:1'
    stor103[arg1] = uint8(arg2)
}

function sub_e6745de1(?) payable {
    require calldata.size - 4 >= 288
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(pdAddress)
    staticcall pdAddress.0x4a348da9 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'SPMT:1'
    sub_c59093f1[arg1] = arg2
    sub_36261e2a[arg1] = arg3
    sub_bba9071d[arg1] = arg4
    sub_322f555f[arg1] = arg5
    sub_d203ffb7[arg1] = arg6
    sub_59c2adeb[arg1] = arg7
    sub_39021990[arg1] = arg8
    sub_d4dc094e[arg1] = arg9
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



}
