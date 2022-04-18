contract main {




// =====================  Runtime code  =====================


#
#  - sub_47326cbb(?)
#  - sub_827deff7(?)
#
const poolType = ''


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint32 version; offset 160
address operatorAddress;
uint256 factoryCount;
mapping of address factories;
mapping of struct sub_e61891f0;
mapping of uint256 pairs;

function version() payable {
    return version
}

function operator() payable {
    return operatorAddress
}

function factories(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(factories[arg1])
}

function pairs(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return pairs[arg1][arg2]
}

function owner() payable {
    return owner
}

function factoryCount() payable {
    return factoryCount
}

function sub_e61891f0(?) payable {
    require calldata.size - 4 >= 32
    return sub_e61891f0[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_e51e49d9(?) payable {
    require calldata.size - 4 >= 64
    return arg1
}

function sub_1eec490b(?) payable {
    require calldata.size - 4 >= 64
    return (arg1 xor arg2)
}

function sub_ce20f568(?) payable {
    require calldata.size - 4 >= 32
    return address(arg1), 0
}

function sub_7e7a2f9b(?) payable {
    require calldata.size - 4 >= 32
    return address(arg1), 0, 0
}

function sub_a15c6f9a(?) payable {
    require calldata.size - 4 >= 64
    return (arg1 or arg2 << 160)
}

function sub_3bef62bc(?) payable {
    require calldata.size - 4 >= 32
    return arg1 << 252, uint32(arg1)
}

function sub_168c9001(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 3
    return (arg1 or arg2 << 160 or uint8(arg3) << 174)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function sub_f39b0dfe(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'LagrangeSwap: LENGTH_MISMATCH'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'LagrangeSwap: ZERO_ADDRESS'
        require idx < ('cd', 36).length
        if cd[((32 * idx) + cd[36] + 36)] > 10000:
            revert with 0, 'LagrangeSwap: FEE_TOO_LARGE'
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        mem[0] = idx
        mem[32] = 103
        uint256(factories[idx]) = address(cd[((32 * idx) + cd[4] + 36)]) or cd[((32 * idx) + cd[36] + 36)] << 160
        idx = idx + 1
        continue 
    version = uint32(version + 1)
    factoryCount = ('cd', 4).length
}

function sub_b9c87f64(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'LagrangeSwap: LENGTH_MISMATCH'
    if ('cd', 68).length > 15:
        revert with 0, 'LagrangeSwap: TOO_MUCH_PAIRS'
    idx = 0
    while idx < ('cd', 68).length:
        s = 0
        while s < idx:
            require s < ('cd', 68).length
            require idx < ('cd', 68).length
            if address(cd[((32 * idx) + cd[68] + 36)]) == address(cd[((32 * s) + cd[68] + 36)]):
                revert with 0, 'LagrangeSwap: DUPLICATE_PAIR'
            s = s + 1
            continue 
        require idx < ('cd', 68).length
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 68).length
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).token1() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(cd[4]) != address(ext_call.return_data[0]):
            if address(ext_call.return_data[0]) != address(cd[36]):
                revert with 0, 'LagrangeSwap: INVALID_PAIR'
            if address(ext_call.return_data[0]) != address(cd[4]):
                revert with 0, 'LagrangeSwap: INVALID_PAIR'
        else:
            if address(ext_call.return_data[0]) != address(cd[36]):
                if address(ext_call.return_data[0]) != address(cd[36]):
                    revert with 0, 'LagrangeSwap: INVALID_PAIR'
                if address(ext_call.return_data[0]) != address(cd[4]):
                    revert with 0, 'LagrangeSwap: INVALID_PAIR'
        require idx < ('cd', 100).length
        if cd[((32 * idx) + cd[100] + 36)] > 10000:
            revert with 0, 'LagrangeSwap: FEE_TOO_LARGE'
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[0] = idx
        mem[32] = sha3(address(cd[4]) xor address(cd[36]), 105)
        pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160
        idx = idx + 1
        continue 
    sub_e61891f0[address(cd[4]) xor address(cd[36])].field_0 = test266151307()
}

function sub_ace33294(?) payable {
    require calldata.size - 4 >= 64
    if sub_e61891f0[arg1 xor arg2].field_4 >= version:
        require sub_e61891f0[arg1 xor arg2].field_0 <= test266151307()
        if sub_e61891f0[arg1 xor arg2].field_0:
            mem[128 len 32 * sub_e61891f0[arg1 xor arg2].field_0] = call.data[calldata.size len 32 * sub_e61891f0[arg1 xor arg2].field_0]
        idx = 0
        while idx < sub_e61891f0[arg1 xor arg2].field_0:
            mem[0] = idx
            mem[32] = sha3(arg1 xor arg2, 105)
            require idx < sub_e61891f0[arg1 xor arg2].field_0
            mem[(32 * idx) + 128] = pairs[arg1 xor arg2][idx]
            idx = idx + 1
            continue 
        mem[(32 * sub_e61891f0[arg1 xor arg2].field_0) + 192 len floor32(sub_e61891f0[arg1 xor arg2].field_0)] = mem[128 len floor32(sub_e61891f0[arg1 xor arg2].field_0)]
        return Array(len=sub_e61891f0[arg1 xor arg2].field_0, data=mem[128 len floor32(sub_e61891f0[arg1 xor arg2].field_0)], mem[(32 * sub_e61891f0[arg1 xor arg2].field_0) + floor32(sub_e61891f0[arg1 xor arg2].field_0) + 192 len (32 * sub_e61891f0[arg1 xor arg2].field_0) - floor32(sub_e61891f0[arg1 xor arg2].field_0)]), 
    require factoryCount <= test266151307()
    if factoryCount:
        mem[128 len 32 * factoryCount] = call.data[calldata.size len 32 * factoryCount]
    require factoryCount <= test266151307()
    mem[(32 * factoryCount) + 128] = factoryCount
    if factoryCount:
        mem[(32 * factoryCount) + 160 len 32 * factoryCount] = call.data[calldata.size len 32 * factoryCount]
    idx = 0
    while idx < factoryCount:
        mem[0] = idx
        mem[32] = 103
        mem[(64 * factoryCount) + 164] = arg1
        mem[(64 * factoryCount) + 196] = arg2
        require ext_code.size(address(factories[idx]))
        staticcall address(factories[idx]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        mem[(64 * factoryCount) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]):
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getReserves() with:
                    gas gas_remaining wei
            mem[(64 * factoryCount) + 160 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if Mask(112, 0, ext_call.return_data[0]):
                require 0 < factoryCount
                mem[128] = address(ext_call.return_data[0])
                require 0 < mem[(32 * factoryCount) + 128]
                mem[(32 * factoryCount) + 160] = 0
        idx = idx + 1
        continue 
    mem[(64 * factoryCount) + 160] = 32
    mem[(64 * factoryCount) + 192] = factoryCount
    mem[(64 * factoryCount) + 224 len floor32(factoryCount)] = mem[128 len floor32(factoryCount)]
    return memory
      from (64 * factoryCount) + 160
       len (32 * factoryCount) + 64
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        operatorAddress = arg1
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
            operatorAddress = arg1
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
                operatorAddress = arg1
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
                    operatorAddress = arg1
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
                        operatorAddress = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        operatorAddress = arg1
                        uint8(stor0.field_8) = 0
}



}
