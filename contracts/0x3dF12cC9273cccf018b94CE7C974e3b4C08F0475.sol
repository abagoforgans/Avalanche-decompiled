contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
address pdAddress;
mapping of struct sub_b7283f41;
mapping of uint256 sub_1a0c3a91;
uint16 stor105;
uint256 stor105; offset 16
uint256 sub_f19381d5;
uint16 stor106;
uint256 stor106; offset 16
uint256 sub_2bb5f9a7;
uint16 stor107;
uint256 stor107; offset 16
uint256 sub_d9596445;
uint16 stor108;
uint256 stor108; offset 16
uint256 sub_48878200;
uint16 stor109;
uint256 stor109; offset 16
uint256 sub_3b4e838a;
uint16 stor110;
uint256 stor110; offset 16
uint256 sub_8fa84ebc;
uint256 sub_826fc549;
mapping of uint256 sub_9fa506f1;
uint256 sub_385debe1;
uint256 sub_f7c5536f;
mapping of uint256 sub_d52fc566;

function sub_01cfe28e(?) payable {
    return sub_f19381d5
}

function sub_0d29551e(?) payable {
    return sub_2bb5f9a7
}

function sub_17bcbdd6(?) payable {
    return sub_8fa84ebc
}

function sub_1a0c3a91(?) payable {
    require calldata.size - 4 >= 64
    return sub_1a0c3a91[arg1][arg2]
}

function sub_2bb5f9a7(?) payable {
    return sub_2bb5f9a7
}

function sub_2d06d53e(?) payable {
    return sub_48878200
}

function sub_2dbb00e8(?) payable {
    return sub_3b4e838a
}

function sub_32ca2397(?) payable {
    return sub_385debe1
}

function sub_385a7274(?) payable {
    require calldata.size - 4 >= 32
    return sub_b7283f41[arg1].field_0
}

function sub_385debe1(?) payable {
    return sub_385debe1
}

function sub_3b4e838a(?) payable {
    return sub_3b4e838a
}

function sub_3fefee30(?) payable {
    require calldata.size - 4 >= 32
    return sub_9fa506f1[arg1]
}

function sub_412625fd(?) payable {
    return sub_f7c5536f
}

function sub_442eb100(?) payable {
    return sub_826fc549
}

function sub_48878200(?) payable {
    return sub_48878200
}

function sub_6f0f1737(?) payable {
    return sub_d9596445
}

function pd() payable {
    return pdAddress
}

function sub_826fc549(?) payable {
    return sub_826fc549
}

function sub_82d8cb58(?) payable {
    require calldata.size - 4 >= 32
    return sub_d52fc566[arg1]
}

function owner() payable {
    return owner
}

function sub_8fa84ebc(?) payable {
    return sub_8fa84ebc
}

function sub_9fa506f1(?) payable {
    require calldata.size - 4 >= 32
    return sub_9fa506f1[arg1]
}

function sub_b7283f41(?) payable {
    require calldata.size - 4 >= 32
    return sub_b7283f41[arg1].field_0
}

function sub_d52fc566(?) payable {
    require calldata.size - 4 >= 32
    return sub_d52fc566[arg1]
}

function sub_d9596445(?) payable {
    return sub_d9596445
}

function sub_f19381d5(?) payable {
    return sub_f19381d5
}

function sub_f7c5536f(?) payable {
    return sub_f7c5536f
}

function sub_ffe6e7d7(?) payable {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0a07ad62(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_385debe1 = arg1
}

function sub_6a8b7310(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_f7c5536f = arg1
}

function sub_fd914ea5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_826fc549 = arg1
}

function sub_226d59f4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'SPDP: 1'
    uint16(stor109.field_0) = arg1
    Mask(240, 0, stor109.field_16) = 0
}

function sub_542df743(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'SEMP: 1'
    uint16(stor108.field_0) = arg1
    Mask(240, 0, stor108.field_16) = 0
}

function sub_92521d11(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'ST2P: 1'
    uint16(stor106.field_0) = arg1
    Mask(240, 0, stor106.field_16) = 0
}

function sub_92744ee4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'SRMP: 1'
    uint16(stor107.field_0) = arg1
    Mask(240, 0, stor107.field_16) = 0
}

function sub_b42b0253(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'ST1P: 1'
    uint16(stor105.field_0) = arg1
    Mask(240, 0, stor105.field_16) = 0
}

function setup(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    sub_ffe6e7d7Address = arg1
    pdAddress = arg2
}

function sub_56de0731(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1 < 1:
        revert with 0, 'SPNOD: 1'
    if arg1 > 18:
        revert with 0, 'SPNOD: 1'
    uint16(stor110.field_0) = arg1
    Mask(240, 0, stor110.field_16) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a560c8a1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(pdAddress)
    staticcall pdAddress.0x4a348da9 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1.length != ext_call.return_data[0]:
        revert with 0, 'UAUC: 1'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 158 len 2] > 10000:
            revert with 0, 'UAUC: 2'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = idx + 1
        mem[32] = 103
        sub_b7283f41[idx + 1].field_0 = mem[(32 * idx) + 158 len 2]
        sub_b7283f41[idx + 1].field_16 = 0
        idx = idx + 1
        continue 
}

function sub_0a0199ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'SDSFT: 1'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] > 10000:
            revert with 0, 'SDSFT: 2'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 112
        sub_9fa506f1[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_1276e6e9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'SADFT: 1'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] > 10000:
            revert with 0, 'SADFT: 2'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 115
        sub_d52fc566[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_f4f032e9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UUCT: 1'
    require ext_code.size(pdAddress)
    staticcall pdAddress.0x4a348da9 with:
            gas gas_remaining wei
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UUCT: 2'
        if mem[(32 * idx) + 128] > ext_call.return_data[0]:
            revert with 0, 'UUCT: 2'
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 190 len 2] > 10000:
            revert with 0, 'UUCT: 3'
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 103
        sub_b7283f41[mem[(32 * idx) + 128]].field_0 = mem[(32 * idx) + (32 * arg1.length) + 190 len 2]
        sub_b7283f41[mem[(32 * idx) + 128]].field_16 = 0
        idx = idx + 1
        continue 
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        sub_f19381d5 = 2500
        sub_2bb5f9a7 = 7500
        sub_d9596445 = 2000
        sub_48878200 = 500
        sub_3b4e838a = 10000
        sub_8fa84ebc = 4
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
            sub_f19381d5 = 2500
            sub_2bb5f9a7 = 7500
            sub_d9596445 = 2000
            sub_48878200 = 500
            sub_3b4e838a = 10000
            sub_8fa84ebc = 4
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
                sub_f19381d5 = 2500
                sub_2bb5f9a7 = 7500
                sub_d9596445 = 2000
                sub_48878200 = 500
                sub_3b4e838a = 10000
                sub_8fa84ebc = 4
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
                    sub_f19381d5 = 2500
                    sub_2bb5f9a7 = 7500
                    sub_d9596445 = 2000
                    sub_48878200 = 500
                    sub_3b4e838a = 10000
                    sub_8fa84ebc = 4
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
                        sub_f19381d5 = 2500
                        sub_2bb5f9a7 = 7500
                        sub_d9596445 = 2000
                        sub_48878200 = 500
                        sub_3b4e838a = 10000
                        sub_8fa84ebc = 4
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        sub_f19381d5 = 2500
                        sub_2bb5f9a7 = 7500
                        sub_d9596445 = 2000
                        sub_48878200 = 500
                        sub_3b4e838a = 10000
                        sub_8fa84ebc = 4
                        uint8(stor0.field_8) = 0
}



}
