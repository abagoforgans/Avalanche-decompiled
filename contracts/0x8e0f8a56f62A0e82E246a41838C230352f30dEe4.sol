contract main {




// =====================  Runtime code  =====================


#
#  - getBalanceAndAssetProxyAllowance(address arg1, bytes arg2)
#  - getTransferableAssetAmount(address arg1, bytes arg2)
#  - getBatchAssetProxyAllowances(address arg1, bytes[] arg2)
#  - decodeZeroExTransactionData(bytes arg1)
#  - getBalance(address arg1, bytes arg2)
#  - sub_7f46448d(?)
#  - sub_8f5afa52(?)
#  - decodeMultiAssetData(bytes arg1)
#  - getBatchBalances(address arg1, bytes[] arg2)
#  - getAssetProxyAllowance(address arg1, bytes arg2)
#  - getBatchBalancesAndAssetProxyAllowances(address arg1, bytes[] arg2)
#
const ERC1155_PROXY_ID = 0xa7cb5fb700000000000000000000000000000000000000000000000000000000

const ERC20_PROXY_ID = 0xf47261b000000000000000000000000000000000000000000000000000000000

const ERC721_PROXY_ID = 0x257179200000000000000000000000000000000000000000000000000000000

const MULTI_ASSET_PROXY_ID = 0x94cfcdd700000000000000000000000000000000000000000000000000000000

const STATIC_CALL_PROXY_ID = 0xc339d10a00000000000000000000000000000000000000000000000000000000


function _fallback() payable {
    revert
}

function encodeERC20AssetData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 32, 36, ERC20Token(address arg1), address(arg1) << 64, 0, 0 >> 32, 0
}

function encodeERC721AssetData(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return 32, 68, ERC721Token(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0 >> 288, 0
}

function getERC721TokenOwner(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[164 len 64] = ownerOf(uint256 arg1), arg2, mem[164 len 28]
    staticcall arg1.mem[164 len 4] with:
            gas gas_remaining wei
           args mem[168]
    if return_data.size:
        if ext_call.success:
            if return_data.size == 32:
                if return_data.size < 32:
                    revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function decodeERC20AssetData(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    if Mask(32, 224, mem[128]) != 0xf47261b000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'WRONG_PROXY_ID'
    if arg1.length < 36:
        revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
    _7 = mem[132]
    mem[ceil32(arg1.length) + 128] = Mask(32, 224, mem[128])
    mem[ceil32(arg1.length) + 160] = address(_7)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]
}

function decodeERC721AssetData(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    if Mask(32, 224, mem[128]) != 0x257179200000000000000000000000000000000000000000000000000000000:
        revert with 0, 'WRONG_PROXY_ID'
    if arg1.length < 36:
        revert with 0, 'GREATER_OR_EQUAL_TO_20_LENGTH_REQUIRED'
    _7 = mem[132]
    if arg1.length < 68:
        revert with 0, 'GREATER_OR_EQUAL_TO_32_LENGTH_REQUIRED'
    _11 = mem[164]
    mem[ceil32(arg1.length) + 128] = Mask(32, 224, mem[128])
    mem[ceil32(arg1.length) + 160] = address(_7)
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           _11
}

function getEthBalances(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        s = 0
        while arg1.length != arg1.length:
            require arg1.length < arg1.length
            require arg1.length < mem[(32 * arg1.length) + 128]
            mem[(64 * arg1.length) + 160] = eth.balance(mem[(32 * arg1.length) + 128])
            s = arg1.length + 1
            continue 
        mem[(64 * arg1.length) + 160] = 32
        mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
        mem[(64 * arg1.length) + 224 len 32 * mem[(32 * arg1.length) + 128]] = mem[(32 * arg1.length) + 160 len 32 * mem[(32 * arg1.length) + 128]]
        return Array(len=mem[(32 * arg1.length) + 128], data=mem[(64 * arg1.length) + 224 len 32 * mem[(32 * arg1.length) + 128]])
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[24613 len 32 * arg1.length]
    idx = 0
    while idx != arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = eth.balance(mem[(32 * idx) + 128])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = arg1.length
    mem[(64 * arg1.length) + 224 len 32 * arg1.length] = mem[(32 * arg1.length) + 160 len 32 * arg1.length]
    return Array(len=arg1.length, data=mem[(32 * arg1.length) + 160 len 32 * arg1.length])
}

function decodeERC1155AssetData(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length < 4:
        revert with 0, 'GREATER_OR_EQUAL_TO_4_LENGTH_REQUIRED'
    if Mask(32, 224, mem[128]) != 0xa7cb5fb700000000000000000000000000000000000000000000000000000000:
        revert with 0, 'WRONG_PROXY_ID'
    _5 = mem[132]
    _6 = mem[164]
    _7 = mem[196]
    _8 = mem[228]
    mem[ceil32(arg1.length) + 128] = Mask(32, 224, mem[128])
    mem[ceil32(arg1.length) + 160] = address(_5)
    mem[ceil32(arg1.length) + 192] = 160
    _13 = mem[_6 + 132]
    mem[ceil32(arg1.length) + 288] = mem[_6 + 132]
    mem[ceil32(arg1.length) + 320 len 32 * _13] = mem[_6 + 164 len 32 * _13]
    mem[ceil32(arg1.length) + 224] = (32 * _13) + 192
    _22 = mem[_7 + 132]
    mem[ceil32(arg1.length) + (32 * _13) + 320] = mem[_7 + 132]
    mem[ceil32(arg1.length) + (32 * _13) + 352 len 32 * _22] = mem[_7 + 164 len 32 * _22]
    mem[ceil32(arg1.length) + 256] = (32 * _13) + (32 * _22) + 224
    _29 = mem[_8 + 132]
    mem[ceil32(arg1.length) + (32 * _13) + (32 * _22) + 352] = mem[_8 + 132]
    mem[ceil32(arg1.length) + (32 * _13) + (32 * _22) + 384 len ceil32(_29)] = mem[_8 + 164 len ceil32(_29)]
    if ceil32(_29) > _29:
        mem[ceil32(arg1.length) + (32 * _13) + (32 * _22) + _29 + 384] = 0
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           160,
           (32 * _13) + 192,
           (32 * _13) + (32 * _22) + 224,
           mem[ceil32(arg1.length) + 288 len (32 * _13) + (32 * _22) + ceil32(_29) + 96]
}

function encodeMultiAssetData(uint256[] arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require arg2 + cd[s] + 67 < calldata.size
        require cd[(arg2 + cd[s] + 36)] <= test266151307()
        _36 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + 36)]) + 32
        mem[_36] = cd[(arg2 + cd[s] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 36)] + 68 <= calldata.size
        mem[_36 + 32 len cd[(arg2 + cd[s] + 36)]] = call.data[arg2 + cd[s] + 68 len cd[(arg2 + cd[s] + 36)]]
        mem[_36 + cd[(arg2 + cd[s] + 36)] + 32] = 0
        mem[t] = _36
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _34 = mem[64]
    mem[mem[64] + 36] = 64
    _35 = mem[96]
    mem[mem[64] + 100] = mem[96]
    mem[mem[64] + 132 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 68] = (32 * mem[96]) + 96
    _50 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + (32 * mem[96]) + 132] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = mem[64] + (32 * mem[96]) + (32 * _50) + 164
    u = mem[64] + (32 * mem[96]) + 164
    while idx < _50:
        mem[u] = t + -_34 + -(32 * _35) - 164
        _61 = mem[s]
        _65 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _65:
            mem[t + v + 32] = mem[_61 + v + 32]
            v = v + 32
            continue 
        if ceil32(_65) > _65:
            mem[t + _65 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_65) + 32
        u = u + 32
        continue 
    _62 = mem[64]
    mem[mem[64]] = t + -mem[64] - 32
    mem[64] = t
    mem[_62 + 32 len 4] = MultiAsset(uint256[] arg1, bytes[] arg2)
    mem[t] = 32
    _66 = mem[_62]
    mem[t + 32] = mem[_62]
    mem[t + 64 len ceil32(_66)] = mem[_62 + 32 len ceil32(_66)]
    if ceil32(_66) > _66:
        mem[t + _66 + 64] = 0
    return 32, mem[t + 32 len ceil32(_66) + 32]
}

function encodeERC1155AssetData(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg2.length) + (32 * arg3.length) + 160 <= test266151307() and (32 * arg3.length) + 160 >= 128
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = (32 * arg2.length) + 160
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192 <= test266151307() and ceil32(arg4.length) + 192 >= 160
    require arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len arg4.length] = arg4[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 228] = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 260] = 128
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 356] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 388 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 292] = (32 * arg2.length) + 160
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 388] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 420 len 32 * arg3.length] = mem[(32 * arg2.length) + 160 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 324] = (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(64 * arg2.length) + (64 * arg3.length) + ceil32(arg4.length) + 420] = arg4.length
    mem[(64 * arg2.length) + (64 * arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[(64 * arg2.length) + (64 * arg3.length) + ceil32(arg4.length) + arg4.length + 452] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 228
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len 4] = ERC1155Assets(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4)
    mem[(64 * arg2.length) + (64 * arg3.length) + (2 * ceil32(arg4.length)) + 452] = 32
    mem[(64 * arg2.length) + (64 * arg3.length) + (2 * ceil32(arg4.length)) + 484] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]
    mem[(64 * arg2.length) + (64 * arg3.length) + (2 * ceil32(arg4.length)) + 516 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])]
    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]:
        mem[(64 * arg2.length) + (64 * arg3.length) + (2 * ceil32(arg4.length)) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] + 516] = 0
    return memory
      from (64 * arg2.length) + (64 * arg3.length) + (2 * ceil32(arg4.length)) + 452
       len (129 * arg3.length) + (4 * ceil32(arg4.length)) + ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + 64
}



}
