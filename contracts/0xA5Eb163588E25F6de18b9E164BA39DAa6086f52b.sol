contract main {




// =====================  Runtime code  =====================


#
#  - getAllProductDetails()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address sub_ffe6e7d7Address;
uint256 productCount;
array of uint256 sub_272f15d9;
mapping of uint256 productStatus;
mapping of uint256 sub_b918250a;
mapping of uint256 sub_f8395c1e;
mapping of uint256 sub_7f7ab611;
mapping of uint256 productDelayEffectiveDays;
mapping of uint256 sub_fdfd37dc;

function sub_0bb68adb(?) payable {
    require calldata.size - 4 >= 32
    return productStatus[arg1]
}

function getProductStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return productStatus[arg1]
}

function sub_272f15d9(?) payable {
    return sub_272f15d9[arg1][0 len sub_272f15d9[arg1].length]
}

function getProductCount() payable {
    return productCount
}

function sub_7f7ab611(?) payable {
    require calldata.size - 4 >= 32
    return sub_7f7ab611[arg1]
}

function owner() payable {
    return owner
}

function sub_98234df8(?) payable {
    require calldata.size - 4 >= 32
    return sub_fdfd37dc[arg1]
}

function sub_b2f25046(?) payable {
    require calldata.size - 4 >= 32
    return productDelayEffectiveDays[arg1]
}

function sub_b918250a(?) payable {
    require calldata.size - 4 >= 32
    return sub_b918250a[arg1]
}

function getProductDelayEffectiveDays(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return productDelayEffectiveDays[arg1]
}

function productCount() payable {
    return productCount
}

function sub_f8395c1e(?) payable {
    require calldata.size - 4 >= 32
    return sub_f8395c1e[arg1]
}

function sub_fdfd37dc(?) payable {
    require calldata.size - 4 >= 32
    return sub_fdfd37dc[arg1]
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

function setup(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    sub_ffe6e7d7Address = arg1
}

function getProductDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_b918250a[arg1], 
           sub_f8395c1e[arg1],
           sub_7f7ab611[arg1],
           productStatus[arg1],
           productDelayEffectiveDays[arg1],
           sub_fdfd37dc[arg1]
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

function sub_0b457353(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPDED: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UPDED: 2'
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPDED: 2'
        require idx < mem[(32 * arg1.length) + 128]
        sub_fdfd37dc[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 128]
        _39 = sha3(mem[(32 * idx) + 128], 105)
        _40 = sha3(mem[(32 * idx) + 128], 106)
        _41 = sha3(mem[(32 * idx) + 128], 107)
        _42 = sha3(mem[(32 * idx) + 128], 104)
        _43 = sha3(mem[(32 * idx) + 128], 108)
        mem[32] = 109
        _44 = sha3(mem[(32 * idx) + 128], 109)
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = stor[_39]
        mem[mem[64] + 64] = stor[_40]
        mem[mem[64] + 96] = stor[_41]
        mem[mem[64] + 128] = stor[_42]
        mem[mem[64] + 160] = stor[_43]
        mem[mem[64] + 192] = stor[_44]
        emit 0x6d2058b9: mem[mem[64]], stor[_39], stor[_40], stor[_41], stor[_42], stor[_43], stor[_44]
        idx = idx + 1
        continue 
}

function sub_77be6877(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPDED: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UPDED: 2'
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPDED: 2'
        require idx < mem[(32 * arg1.length) + 128]
        productDelayEffectiveDays[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 128]
        _39 = sha3(mem[(32 * idx) + 128], 105)
        _40 = sha3(mem[(32 * idx) + 128], 106)
        _41 = sha3(mem[(32 * idx) + 128], 107)
        _42 = sha3(mem[(32 * idx) + 128], 104)
        _43 = sha3(mem[(32 * idx) + 128], 108)
        mem[32] = 109
        _44 = sha3(mem[(32 * idx) + 128], 109)
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = stor[_39]
        mem[mem[64] + 64] = stor[_40]
        mem[mem[64] + 96] = stor[_41]
        mem[mem[64] + 128] = stor[_42]
        mem[mem[64] + 160] = stor[_43]
        mem[mem[64] + 192] = stor[_44]
        emit 0x6d2058b9: mem[mem[64]], stor[_39], stor[_40], stor[_41], stor[_42], stor[_43], stor[_44]
        idx = idx + 1
        continue 
}

function sub_f075bd2b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPN: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UPN: 2'
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPN: 2'
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        sub_b918250a[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 128]
        _41 = sha3(mem[(32 * idx) + 128], 105)
        _42 = sha3(mem[(32 * idx) + 128], 106)
        _43 = sha3(mem[(32 * idx) + 128], 107)
        _44 = sha3(mem[(32 * idx) + 128], 104)
        _45 = sha3(mem[(32 * idx) + 128], 108)
        mem[32] = 109
        _46 = sha3(mem[(32 * idx) + 128], 109)
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = stor[_41]
        mem[mem[64] + 64] = stor[_42]
        mem[mem[64] + 96] = stor[_43]
        mem[mem[64] + 128] = stor[_44]
        mem[mem[64] + 160] = stor[_45]
        mem[mem[64] + 192] = stor[_46]
        emit 0x6d2058b9: mem[mem[64]], stor[_41], stor[_42], stor[_43], stor[_44], stor[_45], stor[_46]
        idx = idx + 1
        continue 
}

function sub_aa8371fa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPRT: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UPRT: 2'
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPRT: 2'
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        sub_7f7ab611[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 128]
        _41 = sha3(mem[(32 * idx) + 128], 105)
        _42 = sha3(mem[(32 * idx) + 128], 106)
        _43 = sha3(mem[(32 * idx) + 128], 107)
        _44 = sha3(mem[(32 * idx) + 128], 104)
        _45 = sha3(mem[(32 * idx) + 128], 108)
        mem[32] = 109
        _46 = sha3(mem[(32 * idx) + 128], 109)
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = stor[_41]
        mem[mem[64] + 64] = stor[_42]
        mem[mem[64] + 96] = stor[_43]
        mem[mem[64] + 128] = stor[_44]
        mem[mem[64] + 160] = stor[_45]
        mem[mem[64] + 192] = stor[_46]
        emit 0x6d2058b9: mem[mem[64]], stor[_41], stor[_42], stor[_43], stor[_44], stor[_45], stor[_46]
        idx = idx + 1
        continue 
}

function sub_f09284ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPCT: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UPCT: 2'
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPCT: 2'
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        sub_f8395c1e[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * idx) + 128]
        _41 = sha3(mem[(32 * idx) + 128], 105)
        _42 = sha3(mem[(32 * idx) + 128], 106)
        _43 = sha3(mem[(32 * idx) + 128], 107)
        _44 = sha3(mem[(32 * idx) + 128], 104)
        _45 = sha3(mem[(32 * idx) + 128], 108)
        mem[32] = 109
        _46 = sha3(mem[(32 * idx) + 128], 109)
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = stor[_41]
        mem[mem[64] + 64] = stor[_42]
        mem[mem[64] + 96] = stor[_43]
        mem[mem[64] + 128] = stor[_44]
        mem[mem[64] + 160] = stor[_45]
        mem[mem[64] + 192] = stor[_46]
        emit 0x6d2058b9: mem[mem[64]], stor[_41], stor[_42], stor[_43], stor[_44], stor[_45], stor[_46]
        idx = idx + 1
        continue 
}

function sub_9196decc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPS: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 'UPS: 2'
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPS: 2'
        require idx < mem[(32 * arg1.length) + 128]
        if mem[(32 * idx) + (32 * arg1.length) + 160]:
            productStatus[mem[(32 * idx) + 128]] = 1
            mem[0] = mem[(32 * idx) + 128]
            _49 = sha3(mem[(32 * idx) + 128], 105)
            _50 = sha3(mem[(32 * idx) + 128], 106)
            _51 = sha3(mem[(32 * idx) + 128], 107)
            _52 = sha3(mem[(32 * idx) + 128], 104)
            _53 = sha3(mem[(32 * idx) + 128], 108)
            mem[32] = 109
            _54 = sha3(mem[(32 * idx) + 128], 109)
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_49]
            mem[mem[64] + 64] = stor[_50]
            mem[mem[64] + 96] = stor[_51]
            mem[mem[64] + 128] = stor[_52]
            mem[mem[64] + 160] = stor[_53]
            mem[mem[64] + 192] = stor[_54]
            emit 0x6d2058b9: mem[mem[64]], stor[_49], stor[_50], stor[_51], stor[_52], stor[_53], stor[_54]
        else:
            productStatus[mem[(32 * idx) + 128]] = 2
            mem[0] = mem[(32 * idx) + 128]
            _57 = sha3(mem[(32 * idx) + 128], 105)
            _58 = sha3(mem[(32 * idx) + 128], 106)
            _59 = sha3(mem[(32 * idx) + 128], 107)
            _60 = sha3(mem[(32 * idx) + 128], 104)
            _61 = sha3(mem[(32 * idx) + 128], 108)
            mem[32] = 109
            _62 = sha3(mem[(32 * idx) + 128], 109)
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_57]
            mem[mem[64] + 64] = stor[_58]
            mem[mem[64] + 96] = stor[_59]
            mem[mem[64] + 128] = stor[_60]
            mem[mem[64] + 160] = stor[_61]
            mem[mem[64] + 192] = stor[_62]
            emit 0x6d2058b9: mem[mem[64]], stor[_57], stor[_58], stor[_59], stor[_60], stor[_61], stor[_62]
        idx = idx + 1
        continue 
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        productCount = 0
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
            productCount = 0
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
                productCount = 0
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
                    productCount = 0
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
                        productCount = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        productCount = 0
                        uint8(stor0.field_8) = 0
}

function sub_d8282ee0(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'UPDT: 1'
    if arg1.length != arg3.length:
        revert with 0, 'UPDT: 1'
    if arg1.length != arg4.length:
        revert with 0, 'UPDT: 1'
    if arg1.length != arg5.length:
        revert with 0, 'UPDT: 1'
    if arg1.length != arg6.length:
        revert with 0, 'UPDT: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] > productCount:
            revert with 0, 'UPDT: 2'
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        sub_b918250a[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        sub_f8395c1e[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        sub_7f7ab611[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        sub_fdfd37dc[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]:
            productStatus[mem[(32 * idx) + 128]] = 1
            mem[0] = mem[(32 * idx) + 128]
            _89 = sha3(mem[(32 * idx) + 128], 105)
            _90 = sha3(mem[(32 * idx) + 128], 106)
            _91 = sha3(mem[(32 * idx) + 128], 107)
            _92 = sha3(mem[(32 * idx) + 128], 104)
            _93 = sha3(mem[(32 * idx) + 128], 108)
            mem[32] = 109
            _94 = sha3(mem[(32 * idx) + 128], 109)
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_89]
            mem[mem[64] + 64] = stor[_90]
            mem[mem[64] + 96] = stor[_91]
            mem[mem[64] + 128] = stor[_92]
            mem[mem[64] + 160] = stor[_93]
            mem[mem[64] + 192] = stor[_94]
            emit 0x6d2058b9: mem[mem[64]], stor[_89], stor[_90], stor[_91], stor[_92], stor[_93], stor[_94]
        else:
            productStatus[mem[(32 * idx) + 128]] = 2
            mem[0] = mem[(32 * idx) + 128]
            _97 = sha3(mem[(32 * idx) + 128], 105)
            _98 = sha3(mem[(32 * idx) + 128], 106)
            _99 = sha3(mem[(32 * idx) + 128], 107)
            _100 = sha3(mem[(32 * idx) + 128], 104)
            _101 = sha3(mem[(32 * idx) + 128], 108)
            mem[32] = 109
            _102 = sha3(mem[(32 * idx) + 128], 109)
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_97]
            mem[mem[64] + 64] = stor[_98]
            mem[mem[64] + 96] = stor[_99]
            mem[mem[64] + 128] = stor[_100]
            mem[mem[64] + 160] = stor[_101]
            mem[mem[64] + 192] = stor[_102]
            emit 0x6d2058b9: mem[mem[64]], stor[_97], stor[_98], stor[_99], stor[_100], stor[_101], stor[_102]
        idx = idx + 1
        continue 
}

function sub_231e0873(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = arg6.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg6.length) + 288] = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length != arg2.length:
        revert with 0, 'APDT: 1'
    if arg1.length != arg3.length:
        revert with 0, 'APDT: 1'
    if arg1.length != arg4.length:
        revert with 0, 'APDT: 1'
    if arg1.length != arg5.length:
        revert with 0, 'APDT: 1'
    if arg1.length != arg6.length:
        revert with 0, 'APDT: 1'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        if productCount + 1 < productCount:
            revert with 0, 'SafeMath: addition overflow'
        if mem[(32 * idx) + 128] != productCount + 1:
            revert with 0, 'APDT: 2'
        require idx < mem[(32 * arg1.length) + 128]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256]
        sub_b918250a[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        sub_f8395c1e[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        sub_7f7ab611[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        sub_fdfd37dc[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 288]:
            productStatus[mem[(32 * idx) + 128]] = 1
            mem[0] = mem[(32 * idx) + 128]
            _97 = sha3(mem[(32 * idx) + 128], 105)
            _98 = sha3(mem[(32 * idx) + 128], 106)
            _99 = sha3(mem[(32 * idx) + 128], 107)
            _100 = sha3(mem[(32 * idx) + 128], 104)
            _101 = sha3(mem[(32 * idx) + 128], 108)
            mem[32] = 109
            _102 = sha3(mem[(32 * idx) + 128], 109)
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_97]
            mem[mem[64] + 64] = stor[_98]
            mem[mem[64] + 96] = stor[_99]
            mem[mem[64] + 128] = stor[_100]
            mem[mem[64] + 160] = stor[_101]
            mem[mem[64] + 192] = stor[_102]
            emit 0x6d2058b9: mem[mem[64]], stor[_97], stor[_98], stor[_99], stor[_100], stor[_101], stor[_102]
        else:
            productStatus[mem[(32 * idx) + 128]] = 2
            mem[0] = mem[(32 * idx) + 128]
            _105 = sha3(mem[(32 * idx) + 128], 105)
            _106 = sha3(mem[(32 * idx) + 128], 106)
            _107 = sha3(mem[(32 * idx) + 128], 107)
            _108 = sha3(mem[(32 * idx) + 128], 104)
            _109 = sha3(mem[(32 * idx) + 128], 108)
            mem[32] = 109
            _110 = sha3(mem[(32 * idx) + 128], 109)
            mem[mem[64]] = mem[(32 * idx) + 128]
            mem[mem[64] + 32] = stor[_105]
            mem[mem[64] + 64] = stor[_106]
            mem[mem[64] + 96] = stor[_107]
            mem[mem[64] + 128] = stor[_108]
            mem[mem[64] + 160] = stor[_109]
            mem[mem[64] + 192] = stor[_110]
            emit 0x6d2058b9: mem[mem[64]], stor[_105], stor[_106], stor[_107], stor[_108], stor[_109], stor[_110]
        if productCount + 1 < productCount:
            revert with 0, 'SafeMath: addition overflow'
        productCount++
        idx = idx + 1
        continue 
}



}
