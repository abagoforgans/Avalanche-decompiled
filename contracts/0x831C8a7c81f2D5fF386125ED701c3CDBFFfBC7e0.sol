contract main {




// =====================  Runtime code  =====================


#
#  - sub_3e8632b3(?)
#  - sub_97a04ced(?)
#
const sub_1605b17f(?) = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address wNativeAddress;
address feeCollectorAddress;
uint256 sub_1f09275d;
uint256 sub_8d804dcc;
address defaultPoolAddress;
mapping of address pools;

function sub_1f09275d(?) {
    return sub_1f09275d
}

function wNative() {
    return wNativeAddress
}

function defaultPool() {
    return defaultPoolAddress
}

function sub_8d804dcc(?) {
    return sub_8d804dcc
}

function owner() {
    return owner
}

function pools(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return pools[arg1][arg2]
}

function feeCollector() {
    return feeCollectorAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_bdfa8e76(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10:
        revert with 0, 'LagrangeSwap: FEE_TOO_LARGE'
    sub_8d804dcc = arg1
    emit 0x618e024c: arg1, msg.sender
}

function sub_3be01ca3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 5000:
        revert with 0, 'LagrangeSwap: FEE_TOO_LARGE'
    sub_1f09275d = arg1
    emit 0x2d6eb5e0: arg1, msg.sender
}

function sub_8c192ed4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'LagrangeSwap: NON_ZERO_ADDRESS'
    defaultPoolAddress = arg1
    emit 0x2eff6cfb: arg1, msg.sender
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'LagrangeSwap: NON_ZERO_ADDRESS'
    feeCollectorAddress = arg1
    emit 0x9ea5568f: arg1, msg.sender
}

function transferOwnership(address arg1) {
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

function sub_0769594d(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'LagrangeSwap: LENGTH_MISMATCH'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'LagrangeSwap: LENGTH_MISMATCH'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 106)
        pools[address(cd[((32 * idx) + cd[4] + 36)])][address(cd[((32 * idx) + cd[36] + 36)])] = address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        mem[mem[64]] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 64] = address(cd[((32 * idx) + cd[68] + 36)])
        emit 0xd144a7e8: address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[68] + 36)]), msg.sender
        idx = idx + 1
        continue 
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        wNativeAddress = arg1
        feeCollectorAddress = arg2
        sub_1f09275d = arg3
        sub_8d804dcc = arg4
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
            wNativeAddress = arg1
            feeCollectorAddress = arg2
            sub_1f09275d = arg3
            sub_8d804dcc = arg4
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
                wNativeAddress = arg1
                feeCollectorAddress = arg2
                sub_1f09275d = arg3
                sub_8d804dcc = arg4
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
                    wNativeAddress = arg1
                    feeCollectorAddress = arg2
                    sub_1f09275d = arg3
                    sub_8d804dcc = arg4
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
                        wNativeAddress = arg1
                        feeCollectorAddress = arg2
                        sub_1f09275d = arg3
                        sub_8d804dcc = arg4
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        wNativeAddress = arg1
                        feeCollectorAddress = arg2
                        sub_1f09275d = arg3
                        sub_8d804dcc = arg4
                        uint8(stor0.field_8) = 0
}

function getPool(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if pools[address(arg1)][address(arg2)]:
        mem[96] = 0xb1dd61b600000000000000000000000000000000000000000000000000000000
        require ext_code.size(pools[address(arg1)][address(arg2)])
        staticcall pools[address(arg1)][address(arg2)].poolType() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
        mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
        _21 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 128 len ceil32(mem[_12 + 96])] = mem[_12 + 128 len ceil32(mem[_12 + 96])]
        if not _21 % 32:
            mem[_21 + ceil32(return_data.size) + 128] = pools[address(arg1)][address(arg2)]
            mem[_21 + ceil32(return_data.size) + 160] = 64
            mem[_21 + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[_21 + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                return pools[address(arg1)][address(arg2)], 
                       64,
                       mem[_21 + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _21 + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _21 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
            return pools[address(arg1)][address(arg2)], 
                   Array(len=mem[ceil32(return_data.size) + 96], data=mem[_21 + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
        mem[floor32(_21) + ceil32(return_data.size) + 128] = mem[floor32(_21) + ceil32(return_data.size) + -(_21 % 32) + 160 len _21 % 32]
        mem[floor32(_21) + ceil32(return_data.size) + 160] = pools[address(arg1)][address(arg2)]
        mem[floor32(_21) + ceil32(return_data.size) + 192] = 64
        mem[floor32(_21) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_21) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return pools[address(arg1)][address(arg2)], 
                   64,
                   mem[floor32(_21) + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_21) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_21) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
        return pools[address(arg1)][address(arg2)], 
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_21) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    if not defaultPoolAddress:
        return 0, 64, 0
    mem[96] = 0xb1dd61b600000000000000000000000000000000000000000000000000000000
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.poolType() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _23 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if not _23 % 32:
        mem[_23 + ceil32(return_data.size) + 128] = defaultPoolAddress
        mem[_23 + ceil32(return_data.size) + 160] = 64
        mem[_23 + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[_23 + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return defaultPoolAddress, 64, mem[_23 + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _23 + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _23 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
        return defaultPoolAddress, 
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_23 + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
    mem[floor32(_23) + ceil32(return_data.size) + 128] = mem[floor32(_23) + ceil32(return_data.size) + -(_23 % 32) + 160 len _23 % 32]
    mem[floor32(_23) + ceil32(return_data.size) + 160] = defaultPoolAddress
    mem[floor32(_23) + ceil32(return_data.size) + 192] = 64
    mem[floor32(_23) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_23) + ceil32(return_data.size) + 256 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return defaultPoolAddress, 64, mem[floor32(_23) + ceil32(return_data.size) + 224 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_23) + ceil32(return_data.size) + 256] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_23) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 288 len mem[ceil32(return_data.size) + 96] % 32]
    return defaultPoolAddress, 
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_23) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(return_data.size) + 96]) + 32])
}

function sub_106c49ef(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length:
        if ('cd', 36).length != ('cd', 100).length + 1:
            revert with 0, 'LagrangeSwap: INVALID_HINTS'
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length - 1:
        require idx < ('cd', 36).length
        require idx + 1 < ('cd', 36).length
        if 1 == bool(Mask(256, -idx, cd[68]) >> idx):
            if not defaultPoolAddress:
                revert with 0, 'LagrangeSwap: NO_LIQUIDITY_POOL'
            require idx < ('cd', 36).length
            require idx + 1 < ('cd', 36).length
            if address(cd[((32 * idx) + cd[36] + 36)]):
                if address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if not ('cd', 100).length:
                        mem[100] = s
                        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[196] = 0
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                    else:
                        require idx < ('cd', 100).length
                        mem[100] = s
                        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[196] = cd[((32 * idx) + cd[100] + 36)]
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)]), cd[((32 * idx) + cd[100] + 36)]
                else:
                    if not ('cd', 100).length:
                        mem[100] = s
                        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[164] = wNativeAddress
                        mem[196] = 0
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, address(cd[((32 * idx) + cd[36] + 36)]), wNativeAddress, 0
                    else:
                        require idx < ('cd', 100).length
                        mem[100] = s
                        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[164] = wNativeAddress
                        mem[196] = cd[((32 * idx) + cd[100] + 36)]
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, address(cd[((32 * idx) + cd[36] + 36)]), wNativeAddress, cd[((32 * idx) + cd[100] + 36)]
            else:
                if address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if not ('cd', 100).length:
                        mem[100] = s
                        mem[132] = wNativeAddress
                        mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[196] = 0
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, wNativeAddress, address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                    else:
                        require idx < ('cd', 100).length
                        mem[100] = s
                        mem[132] = wNativeAddress
                        mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[196] = cd[((32 * idx) + cd[100] + 36)]
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, wNativeAddress, address(cd[((32 * idx + 1) + cd[36] + 36)]), cd[((32 * idx) + cd[100] + 36)]
                else:
                    if not ('cd', 100).length:
                        mem[100] = s
                        mem[132] = wNativeAddress
                        mem[164] = wNativeAddress
                        mem[196] = 0
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, wNativeAddress, wNativeAddress, 0
                    else:
                        require idx < ('cd', 100).length
                        mem[100] = s
                        mem[132] = wNativeAddress
                        mem[164] = wNativeAddress
                        mem[196] = cd[((32 * idx) + cd[100] + 36)]
                        require ext_code.size(defaultPoolAddress)
                        staticcall defaultPoolAddress.0x47326cbb with:
                                gas gas_remaining wei
                               args s, wNativeAddress, wNativeAddress, cd[((32 * idx) + cd[100] + 36)]
        else:
            mem[0] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[32] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 106)
            if pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                require idx + 1 < ('cd', 36).length
                if address(cd[((32 * idx) + cd[36] + 36)]):
                    if address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = 0
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)]), cd[((32 * idx) + cd[100] + 36)]
                    else:
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = wNativeAddress
                            mem[196] = 0
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), wNativeAddress, 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = wNativeAddress
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), wNativeAddress, cd[((32 * idx) + cd[100] + 36)]
                else:
                    if address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = 0
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, address(cd[((32 * idx + 1) + cd[36] + 36)]), cd[((32 * idx) + cd[100] + 36)]
                    else:
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = wNativeAddress
                            mem[196] = 0
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, wNativeAddress, 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = wNativeAddress
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])])
                            staticcall pools[address(cd[((32 * idx) + cd[36] + 36)])][address(cd[((32 * idx + 1) + cd[36] + 36)])].0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, wNativeAddress, cd[((32 * idx) + cd[100] + 36)]
            else:
                if not defaultPoolAddress:
                    revert with 0, 'LagrangeSwap: NO_LIQUIDITY_POOL'
                require idx < ('cd', 36).length
                require idx + 1 < ('cd', 36).length
                if address(cd[((32 * idx) + cd[36] + 36)]):
                    if address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = 0
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)]), cd[((32 * idx) + cd[100] + 36)]
                    else:
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = wNativeAddress
                            mem[196] = 0
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), wNativeAddress, 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[164] = wNativeAddress
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, address(cd[((32 * idx) + cd[36] + 36)]), wNativeAddress, cd[((32 * idx) + cd[100] + 36)]
                else:
                    if address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = 0
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, address(cd[((32 * idx + 1) + cd[36] + 36)]), 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, address(cd[((32 * idx + 1) + cd[36] + 36)]), cd[((32 * idx) + cd[100] + 36)]
                    else:
                        if not ('cd', 100).length:
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = wNativeAddress
                            mem[196] = 0
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, wNativeAddress, 0
                        else:
                            require idx < ('cd', 100).length
                            mem[100] = s
                            mem[132] = wNativeAddress
                            mem[164] = wNativeAddress
                            mem[196] = cd[((32 * idx) + cd[100] + 36)]
                            require ext_code.size(defaultPoolAddress)
                            staticcall defaultPoolAddress.0x47326cbb with:
                                    gas gas_remaining wei
                                   args s, wNativeAddress, wNativeAddress, cd[((32 * idx) + cd[100] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
    return s
}



}
