contract main {




// =====================  Runtime code  =====================


#
#  - sub_47326cbb(?)
#  - sub_827deff7(?)
#  - sub_ace33294(?)
#
const poolType = 'MultiRoute'


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address operatorAddress;
address tokenInAddress;
address tokenOutAddress;
uint256 sub_8c821e90;
mapping of address sub_a22c6bba;
mapping of uint256 sub_027f725f;
mapping of uint256 pairs;

function sub_027f725f(?) payable {
    require calldata.size - 4 >= 32
    return sub_027f725f[arg1]
}

function operator() payable {
    return operatorAddress
}

function pairs(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return pairs[arg1][arg2]
}

function tokenIn() payable {
    return tokenInAddress
}

function sub_8c821e90(?) payable {
    return sub_8c821e90
}

function owner() payable {
    return owner
}

function sub_a22c6bba(?) payable {
    require calldata.size - 4 >= 32
    return sub_a22c6bba[arg1]
}

function tokenOut() payable {
    return tokenOutAddress
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

function setPath(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if arg1.length > 6:
        revert with 0, 'LagrangeSwap: TOO_MUCH_PATH'
    idx = 0
    while idx < arg1.length:
        s = 0
        while s < idx:
            require s < arg1.length
            require idx < arg1.length
            if address(cd[((32 * idx) + arg1 + 36)]) == address(cd[((32 * s) + arg1 + 36)]):
                revert with 0, 'LagrangeSwap: DUPLICATE_PATH'
            s = s + 1
            continue 
        require idx < arg1.length
        mem[0] = idx
        mem[32] = 105
        sub_a22c6bba[idx] = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    sub_8c821e90 = arg1.length
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        operatorAddress = arg1
        tokenInAddress = arg2
        tokenOutAddress = arg3
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x52496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            operatorAddress = arg1
            tokenInAddress = arg2
            tokenOutAddress = arg3
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x52496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                operatorAddress = arg1
                tokenInAddress = arg2
                tokenOutAddress = arg3
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x52496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    operatorAddress = arg1
                    tokenInAddress = arg2
                    tokenOutAddress = arg3
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
                                        0x52496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        operatorAddress = arg1
                        tokenInAddress = arg2
                        tokenOutAddress = arg3
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        operatorAddress = arg1
                        tokenInAddress = arg2
                        tokenOutAddress = arg3
                        uint8(stor0.field_8) = 0
}

function sub_d2bbd52f(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if ('cd', 100).length != ('cd', 68).length:
        revert with 0, 'LagrangeSwap: LENGTH_MISMATCH'
    if ('cd', 132).length != ('cd', 68).length:
        revert with 0, 'LagrangeSwap: LENGTH_MISMATCH'
    if ('cd', 68).length > 8:
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
        require idx < ('cd', 100).length
        if cd[((32 * idx) + cd[100] + 36)] > 10000:
            revert with 0, 'LagrangeSwap: FEE_TOO_LARGE'
        require idx < ('cd', 132).length
        require cd[((32 * idx) + cd[132] + 36)] <= 3
        if not cd[((32 * idx) + cd[132] + 36)]:
            require idx < ('cd', 68).length
            require idx < ('cd', 100).length
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(cd[4]) != address(ext_call.return_data[0]):
                if address(ext_call.return_data[0]) != address(cd[36]):
                    revert with 0, 32, 34, 0x734c616772616e6765537761703a20494e56414c49445f554e49535741505f504149, mem[mem[64] + 102 len 30]
                if address(ext_call.return_data[0]) != address(cd[4]):
                    revert with 0, 32, 34, 0x734c616772616e6765537761703a20494e56414c49445f554e49535741505f504149, mem[mem[64] + 102 len 30]
            else:
                if address(ext_call.return_data[0]) != address(cd[36]):
                    if address(ext_call.return_data[0]) != address(cd[36]):
                        revert with 0, 32, 34, 0x734c616772616e6765537761703a20494e56414c49445f554e49535741505f504149, mem[mem[64] + 102 len 30]
                    if address(ext_call.return_data[0]) != address(cd[4]):
                        revert with 0, 32, 34, 0x734c616772616e6765537761703a20494e56414c49445f554e49535741505f504149, mem[mem[64] + 102 len 30]
            mem[0] = idx
            mem[32] = sha3(address(cd[4]) xor address(cd[36]), 107)
            if address(cd[4]) != address(ext_call.return_data[0]):
                pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160
            else:
                pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160 or 0x1000000000000000000000000000000000000000000000
        else:
            require idx < ('cd', 132).length
            require cd[((32 * idx) + cd[132] + 36)] <= 3
            if cd[((32 * idx) + cd[132] + 36)] != 1:
                revert with 0, 'LagrangeSwap: NOT_SUPPORTED'
            require idx < ('cd', 68).length
            _264 = mem[64]
            mem[mem[64] + 36] = address(cd[((32 * idx) + cd[68] + 36)])
            mem[mem[64] + 68] = -1
            _265 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_265 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_265 + 36 len 28]
            _268 = mem[_265]
            t = _265 + 32
            u = _264 + 100
            s = mem[_265]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_264 + floor32(mem[_265]) + 100] = mem[_265 + -(mem[_265] % 32) + floor32(mem[_265]) + 64 len mem[_265] % 32] or Mask(8 * -(mem[_265] % 32) + 32, -(8 * -(mem[_265] % 32) + 32) + 256, mem[_264 + floor32(mem[_265]) + 100])
            call address(cd[4]).mem[_264 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_264 + 104 len _268 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not mem[96]:
                    require idx < ('cd', 68).length
                    require idx < ('cd', 100).length
                    s = 0
                    t = 0
                    while uint8(s) < 256:
                        mem[mem[64] + 4] = uint8(s)
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                gas gas_remaining wei
                               args (s << 248)
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 1
                            continue 
                        require t <= test266151307()
                        _488 = mem[64]
                        if not t:
                            require t <= test266151307()
                            _516 = mem[64] + (32 * t) + 32
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_516 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_488]
                                mem[(32 * s) + _488 + 32] = address(ext_call.return_data[0])
                                require s < mem[_488]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_516]
                                mem[(32 * s) + _516 + 32] = uint8(ext_call.return_data[0])
                                require s < mem[_516]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_516]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_516]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _516 + 32] << (4 * s) + 12
                                continue 
                        else:
                            mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            require t <= test266151307()
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_488 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_488]
                                mem[(32 * s) + _488 + 32] = address(ext_call.return_data[0])
                                require s < mem[_488]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_488 + (32 * t) + 32]
                                mem[(32 * s) + _488 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                                require s < mem[_488 + (32 * t) + 32]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_488 + (32 * t) + 32]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_488 + (32 * t) + 32]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _488 + (32 * t) + 64] << (4 * s) + 12
                                continue 
                        mem[0] = idx
                        mem[32] = sha3(address(cd[4]) xor address(cd[36]), 107)
                        pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160 or 0x40000000000000000000000000000000000000000000 or v << 180
                        idx = idx + 1
                        continue 
                    require t <= test266151307()
                    _468 = mem[64]
                    if not t:
                        require t <= test266151307()
                        _476 = mem[64] + (32 * t) + 32
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_476 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_468]
                            mem[(32 * s) + _468 + 32] = address(ext_call.return_data[0])
                            require s < mem[_468]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_476]
                            mem[(32 * s) + _476 + 32] = uint8(ext_call.return_data[0])
                            require s < mem[_476]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_476]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_476]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _476 + 32] << (4 * s) + 12
                            continue 
                    else:
                        mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        require t <= test266151307()
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_468 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_468]
                            mem[(32 * s) + _468 + 32] = address(ext_call.return_data[0])
                            require s < mem[_468]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_468 + (32 * t) + 32]
                            mem[(32 * s) + _468 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                            require s < mem[_468 + (32 * t) + 32]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_468 + (32 * t) + 32]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_468 + (32 * t) + 32]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _468 + (32 * t) + 64] << (4 * s) + 12
                            continue 
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, '!safeApprove'
                    require idx < ('cd', 68).length
                    require idx < ('cd', 100).length
                    s = 0
                    t = 0
                    while uint8(s) < 256:
                        mem[mem[64] + 4] = uint8(s)
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                gas gas_remaining wei
                               args (s << 248)
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 1
                            continue 
                        require t <= test266151307()
                        _489 = mem[64]
                        if not t:
                            require t <= test266151307()
                            _525 = mem[64] + (32 * t) + 32
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_525 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_489]
                                mem[(32 * s) + _489 + 32] = address(ext_call.return_data[0])
                                require s < mem[_489]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_525]
                                mem[(32 * s) + _525 + 32] = uint8(ext_call.return_data[0])
                                require s < mem[_525]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_525]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_525]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _525 + 32] << (4 * s) + 12
                                continue 
                        else:
                            mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            require t <= test266151307()
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_489 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_489]
                                mem[(32 * s) + _489 + 32] = address(ext_call.return_data[0])
                                require s < mem[_489]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_489 + (32 * t) + 32]
                                mem[(32 * s) + _489 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                                require s < mem[_489 + (32 * t) + 32]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_489 + (32 * t) + 32]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_489 + (32 * t) + 32]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _489 + (32 * t) + 64] << (4 * s) + 12
                                continue 
                        mem[0] = idx
                        mem[32] = sha3(address(cd[4]) xor address(cd[36]), 107)
                        pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160 or 0x40000000000000000000000000000000000000000000 or v << 180
                        idx = idx + 1
                        continue 
                    require t <= test266151307()
                    _469 = mem[64]
                    if not t:
                        require t <= test266151307()
                        _478 = mem[64] + (32 * t) + 32
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_478 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_469]
                            mem[(32 * s) + _469 + 32] = address(ext_call.return_data[0])
                            require s < mem[_469]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_478]
                            mem[(32 * s) + _478 + 32] = uint8(ext_call.return_data[0])
                            require s < mem[_478]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_478]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_478]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _478 + 32] << (4 * s) + 12
                            continue 
                    else:
                        mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        require t <= test266151307()
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_469 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_469]
                            mem[(32 * s) + _469 + 32] = address(ext_call.return_data[0])
                            require s < mem[_469]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_469 + (32 * t) + 32]
                            mem[(32 * s) + _469 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                            require s < mem[_469 + (32 * t) + 32]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_469 + (32 * t) + 32]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_469 + (32 * t) + 32]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _469 + (32 * t) + 64] << (4 * s) + 12
                            continue 
            else:
                mem[64] = _264 + ceil32(return_data.size) + 101
                mem[_264 + 100] = return_data.size
                mem[_264 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, '!safeApprove'
                if not return_data.size:
                    require idx < ('cd', 68).length
                    require idx < ('cd', 100).length
                    s = 0
                    t = 0
                    while uint8(s) < 256:
                        mem[mem[64] + 4] = uint8(s)
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                gas gas_remaining wei
                               args (s << 248)
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 1
                            continue 
                        require t <= test266151307()
                        _490 = mem[64]
                        if not t:
                            require t <= test266151307()
                            _534 = mem[64] + (32 * t) + 32
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_534 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_490]
                                mem[(32 * s) + _490 + 32] = address(ext_call.return_data[0])
                                require s < mem[_490]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_534]
                                mem[(32 * s) + _534 + 32] = uint8(ext_call.return_data[0])
                                require s < mem[_534]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_534]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_534]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _534 + 32] << (4 * s) + 12
                                continue 
                        else:
                            mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            require t <= test266151307()
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_490 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_490]
                                mem[(32 * s) + _490 + 32] = address(ext_call.return_data[0])
                                require s < mem[_490]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_490 + (32 * t) + 32]
                                mem[(32 * s) + _490 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                                require s < mem[_490 + (32 * t) + 32]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_490 + (32 * t) + 32]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_490 + (32 * t) + 32]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _490 + (32 * t) + 64] << (4 * s) + 12
                                continue 
                        mem[0] = idx
                        mem[32] = sha3(address(cd[4]) xor address(cd[36]), 107)
                        pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160 or 0x40000000000000000000000000000000000000000000 or v << 180
                        idx = idx + 1
                        continue 
                    require t <= test266151307()
                    _470 = mem[64]
                    if not t:
                        require t <= test266151307()
                        _480 = mem[64] + (32 * t) + 32
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_480 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_470]
                            mem[(32 * s) + _470 + 32] = address(ext_call.return_data[0])
                            require s < mem[_470]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_480]
                            mem[(32 * s) + _480 + 32] = uint8(ext_call.return_data[0])
                            require s < mem[_480]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_480]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_480]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _480 + 32] << (4 * s) + 12
                            continue 
                    else:
                        mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        require t <= test266151307()
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_470 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_470]
                            mem[(32 * s) + _470 + 32] = address(ext_call.return_data[0])
                            require s < mem[_470]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_470 + (32 * t) + 32]
                            mem[(32 * s) + _470 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                            require s < mem[_470 + (32 * t) + 32]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_470 + (32 * t) + 32]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_470 + (32 * t) + 32]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _470 + (32 * t) + 64] << (4 * s) + 12
                            continue 
                else:
                    require return_data.size >= 32
                    if not mem[_264 + 132]:
                        revert with 0, '!safeApprove'
                    require idx < ('cd', 68).length
                    require idx < ('cd', 100).length
                    s = 0
                    t = 0
                    while uint8(s) < 256:
                        mem[mem[64] + 4] = uint8(s)
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                gas gas_remaining wei
                               args (s << 248)
                        mem[mem[64]] = ext_call.return_data[0]
                        if ext_call.success:
                            require return_data.size >= 32
                            s = s + 1
                            t = t + 1
                            continue 
                        require t <= test266151307()
                        _491 = mem[64]
                        if not t:
                            require t <= test266151307()
                            _543 = mem[64] + (32 * t) + 32
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_543 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_491]
                                mem[(32 * s) + _491 + 32] = address(ext_call.return_data[0])
                                require s < mem[_491]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_543]
                                mem[(32 * s) + _543 + 32] = uint8(ext_call.return_data[0])
                                require s < mem[_543]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_543]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_543]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _543 + 32] << (4 * s) + 12
                                continue 
                        else:
                            mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                            require t <= test266151307()
                            mem[mem[64] + (32 * t) + 32] = t
                            mem[64] = mem[64] + (64 * t) + 64
                            if t:
                                mem[_491 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                            s = 0
                            u = 0
                            while s < t:
                                mem[mem[64] + 4] = uint8(s)
                                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                                staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                        gas gas_remaining wei
                                       args (s << 248)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_491]
                                mem[(32 * s) + _491 + 32] = address(ext_call.return_data[0])
                                require s < mem[_491]
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require s < mem[_491 + (32 * t) + 32]
                                mem[(32 * s) + _491 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                                require s < mem[_491 + (32 * t) + 32]
                                if uint8(ext_call.return_data[0]) <= u:
                                    s = s + 1
                                    u = u
                                    continue 
                                require s < mem[_491 + (32 * t) + 32]
                                s = s + 1
                                u = uint8(ext_call.return_data[0])
                                continue 
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = address(cd[36])
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                    gas gas_remaining wei
                                   args address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            s = 0
                            v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                            while s < t:
                                require s < mem[_491 + (32 * t) + 32]
                                s = s + 1
                                v = v or u - mem[(32 * s) + _491 + (32 * t) + 64] << (4 * s) + 12
                                continue 
                        mem[0] = idx
                        mem[32] = sha3(address(cd[4]) xor address(cd[36]), 107)
                        pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160 or 0x40000000000000000000000000000000000000000000 or v << 180
                        idx = idx + 1
                        continue 
                    require t <= test266151307()
                    _471 = mem[64]
                    if not t:
                        require t <= test266151307()
                        _482 = mem[64] + (32 * t) + 32
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_482 + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_471]
                            mem[(32 * s) + _471 + 32] = address(ext_call.return_data[0])
                            require s < mem[_471]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_482]
                            mem[(32 * s) + _482 + 32] = uint8(ext_call.return_data[0])
                            require s < mem[_482]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_482]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_482]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _482 + 32] << (4 * s) + 12
                            continue 
                    else:
                        mem[mem[64] + 32 len 32 * t] = call.data[calldata.size len 32 * t]
                        require t <= test266151307()
                        mem[mem[64] + (32 * t) + 32] = t
                        mem[64] = mem[64] + (64 * t) + 64
                        if t:
                            mem[_471 + (32 * t) + 64 len 32 * t] = call.data[calldata.size len 32 * t]
                        s = 0
                        u = 0
                        while s < t:
                            mem[mem[64] + 4] = uint8(s)
                            require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getToken(uint8 rg1) with:
                                    gas gas_remaining wei
                                   args (s << 248)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_471]
                            mem[(32 * s) + _471 + 32] = address(ext_call.return_data[0])
                            require s < mem[_471]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require s < mem[_471 + (32 * t) + 32]
                            mem[(32 * s) + _471 + (32 * t) + 64] = uint8(ext_call.return_data[0])
                            require s < mem[_471 + (32 * t) + 32]
                            if uint8(ext_call.return_data[0]) <= u:
                                s = s + 1
                                u = u
                                continue 
                            require s < mem[_471 + (32 * t) + 32]
                            s = s + 1
                            u = uint8(ext_call.return_data[0])
                            continue 
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[mem[64] + 4] = address(cd[36])
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        staticcall address(cd[((32 * idx) + cd[68] + 36)]).getTokenIndex(address rg1) with:
                                gas gas_remaining wei
                               args address(cd[36])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        s = 0
                        v = t or 16 * uint8(ext_call.return_data[0]) or uint8(ext_call.return_data[0]) << 8
                        while s < t:
                            require s < mem[_471 + (32 * t) + 32]
                            s = s + 1
                            v = v or u - mem[(32 * s) + _471 + (32 * t) + 64] << (4 * s) + 12
                            continue 
            mem[0] = idx
            mem[32] = sha3(address(cd[4]) xor address(cd[36]), 107)
            pairs[address(cd[4]) xor address(cd[36])][idx] = address(cd[((32 * idx) + cd[68] + 36)]) or cd[((32 * idx) + cd[100] + 36)] << 160 or 0x40000000000000000000000000000000000000000000 or v << 180
        idx = idx + 1
        continue 
    sub_027f725f[address(cd[4]) xor address(cd[36])] = ('cd', 68).length
}



}
