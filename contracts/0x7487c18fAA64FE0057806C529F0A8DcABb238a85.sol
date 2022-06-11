contract main {




// =====================  Runtime code  =====================


#
#  - sub_76c43393(?)
#
address stor0;
mapping of uint8 stor1;
uint8 stor2;
mapping of uint8 stor3;
uint256 count;
mapping of struct stor5;
mapping of uint8 sub_725340ee;
mapping of uint8 stor7;
uint256 sub_a82f2e26;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor99;

function count() payable {
    return count
}

function paused() payable {
    return bool(stor2)
}

function sub_7088f60f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_725340ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_725340ee[arg1][arg2] >= 3:
        revert with 'NH{q', 33
    return sub_725340ee[arg1][arg2]
}

function sub_a82f2e26(?) payable {
    return sub_a82f2e26
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function unpause() payable {
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    stor2 = 0
    emit Unpaused()
}

function pause() payable {
    if not stor1[address(msg.sender)]:
        revert with 0, 'DataBridge: ONLY_AUTHORIZED'
    stor2 = 1
    emit Paused()
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    stor1[address(arg1)] = 1
    emit Authorized(arg1);
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    stor1[address(arg1)] = 0
    emit Unauthorized(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setRelayer(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    stor7[address(arg1)] = uint8(arg2)
    emit 0x4b36b2e6: arg2, arg1
}

function setSigner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    stor9[address(arg1)] = uint8(arg2)
    emit SignerUpdated(arg2, arg1);
}

function sub_bbde5374(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    if arg1 < 2:
        revert with 0, 'DataBridge: UNDER_MIN_SIGNATURES'
    sub_a82f2e26 = arg1
    emit 0x39ce3315: arg1
}

function sub_46c6f5f4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if stor0 != msg.sender:
        revert with 0, 'DataBridge: ONLY_OWNER'
    if arg1 == chainid:
        revert with 0, 'DataBridge: INVALID_CHAIN'
    stor3[arg1] = uint8(bool(arg2))
    emit 0x611a7eda: arg1, bool(arg2)
}

function sub_75ea8358(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'DataBridge: ONLY_AUTHORIZED'
    if stor2:
        revert with 0, 'DataBridge: PAUSED'
    if not stor3[arg1]:
        revert with 0, 'DataBridge: INVALID_DEST'
    if count == -1:
        revert with 'NH{q', 17
    count++
    uint256(stor5[chainid][stor4].field_0) = chainid
    uint256(stor5[chainid][stor4].field_256) = count
    uint256(stor5[chainid][stor4].field_512) = arg1
    address(stor5[chainid][stor4].field_768) = msg.sender
    address(stor5[chainid][stor4].field_1024) = address(arg2)
    uint256(stor5[chainid][stor4].field_1280) = arg3
    if bool(stor5[chainid][stor4].field_1536):
        if bool(stor5[chainid][stor4].field_1536) == uint255(stor5[chainid][stor4].field_1537) < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor5[chainid][stor4][6][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor5[chainid][stor4].field_1536) = 0
            idx = 0
            while uint255(stor5[chainid][stor4].field_1537) + 31 / 32 > idx:
                uint256(stor5[chainid][stor4][idx + 6].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5[chainid][stor4].field_1536) == stor5[chainid][stor4].field_1537 % 128 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor5[chainid][stor4][6][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor5[chainid][stor4].field_1536) = 0
            idx = 0
            while stor5[chainid][stor4].field_1537 % 128 + 31 / 32 > idx:
                uint256(stor5[chainid][stor4][idx + 6].field_0) = 0
                idx = idx + 1
                continue 
    emit 0xe9f1383e: 32, chainid, count, arg1, msg.sender, address(arg2), arg3, 224, arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256, chainid) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 31) + 256
    return count
}

function sub_b24df468(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor5[chainid][arg1].field_1536):
        if bool(stor5[chainid][arg1].field_1536) == uint255(stor5[chainid][arg1].field_1537) < 32:
            revert with 'NH{q', 34
        if bool(stor5[chainid][arg1].field_1536):
            if bool(stor5[chainid][arg1].field_1536) == uint255(stor5[chainid][arg1].field_1537) < 32:
                revert with 'NH{q', 34
            if uint255(stor5[chainid][arg1].field_1537):
                if 31 >= uint255(stor5[chainid][arg1].field_1537):
                    mem[352] = 256 * Mask(248, 0, stor5[chainid][arg1].field_1544)
                else:
                    mem[352] = uint256(stor5[chainid][arg1][6].field_0)
                    idx = 352
                    s = 0
                    while uint255(stor5[chainid][arg1].field_1537) + 320 > idx:
                        mem[idx + 32] = uint256(stor5[chainid][arg1][s + 6].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5[chainid][arg1].field_1536) == stor5[chainid][arg1].field_1537 % 128 < 32:
                revert with 'NH{q', 34
            if stor5[chainid][arg1].field_1537 % 128:
                if 31 >= stor5[chainid][arg1].field_1537 % 128:
                    mem[352] = 256 * Mask(248, 0, stor5[chainid][arg1].field_1544)
                else:
                    mem[352] = uint256(stor5[chainid][arg1][6].field_0)
                    idx = 352
                    s = 0
                    while stor5[chainid][arg1].field_1537 % 128 + 320 > idx:
                        mem[idx + 32] = uint256(stor5[chainid][arg1][s + 6].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sha3(uint256(stor5[chainid][arg1].field_0), uint256(stor5[chainid][arg1].field_256), uint256(stor5[chainid][arg1].field_512), address(stor5[chainid][arg1].field_768), address(stor5[chainid][arg1].field_1024), uint256(stor5[chainid][arg1].field_1280), Array(len=2 * Mask(256, -1, uint255(stor5[chainid][arg1].field_1537)), data=mem[352 len ceil32(uint255(stor5[chainid][arg1].field_1537))]))
    if bool(stor5[chainid][arg1].field_1536) == stor5[chainid][arg1].field_1537 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5[chainid][arg1].field_1536):
        if bool(stor5[chainid][arg1].field_1536) == uint255(stor5[chainid][arg1].field_1537) < 32:
            revert with 'NH{q', 34
        if uint255(stor5[chainid][arg1].field_1537):
            if 31 >= uint255(stor5[chainid][arg1].field_1537):
                mem[352] = 256 * Mask(248, 0, stor5[chainid][arg1].field_1544)
            else:
                mem[352] = uint256(stor5[chainid][arg1][6].field_0)
                idx = 352
                s = 0
                while uint255(stor5[chainid][arg1].field_1537) + 320 > idx:
                    mem[idx + 32] = uint256(stor5[chainid][arg1][s + 6].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[chainid][arg1].field_1536) == stor5[chainid][arg1].field_1537 % 128 < 32:
            revert with 'NH{q', 34
        if stor5[chainid][arg1].field_1537 % 128:
            if 31 >= stor5[chainid][arg1].field_1537 % 128:
                mem[352] = 256 * Mask(248, 0, stor5[chainid][arg1].field_1544)
            else:
                mem[352] = uint256(stor5[chainid][arg1][6].field_0)
                idx = 352
                s = 0
                while stor5[chainid][arg1].field_1537 % 128 + 320 > idx:
                    mem[idx + 32] = uint256(stor5[chainid][arg1][s + 6].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sha3(uint256(stor5[chainid][arg1].field_0), uint256(stor5[chainid][arg1].field_256), uint256(stor5[chainid][arg1].field_512), address(stor5[chainid][arg1].field_768), address(stor5[chainid][arg1].field_1024), uint256(stor5[chainid][arg1].field_1280), Array(len=stor5[chainid][arg1].field_1536 % 128, data=mem[352 len ceil32(stor5[chainid][arg1].field_1537 % 128)]))
}

function requests(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor5[arg1][arg2].field_1536):
        if bool(stor5[arg1][arg2].field_1536) == uint255(stor5[arg1][arg2].field_1537) < 32:
            revert with 'NH{q', 34
        if bool(stor5[arg1][arg2].field_1536):
            if bool(stor5[arg1][arg2].field_1536) == uint255(stor5[arg1][arg2].field_1537) < 32:
                revert with 'NH{q', 34
            if uint255(stor5[arg1][arg2].field_1537):
                if 31 >= uint255(stor5[arg1][arg2].field_1537):
                    mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_1544)
                else:
                    mem[128] = uint256(stor5[arg1][arg2][6].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor5[arg1][arg2].field_1537) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][arg2][s + 6].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5[arg1][arg2].field_1536) == stor5[arg1][arg2].field_1537 % 128 < 32:
                revert with 'NH{q', 34
            if stor5[arg1][arg2].field_1537 % 128:
                if 31 >= stor5[arg1][arg2].field_1537 % 128:
                    mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_1544)
                else:
                    mem[128] = uint256(stor5[arg1][arg2][6].field_0)
                    idx = 128
                    s = 0
                    while stor5[arg1][arg2].field_1537 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1][arg2][s + 6].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return uint256(stor5[arg1][arg2].field_0), 
               uint256(stor5[arg1][arg2].field_256),
               uint256(stor5[arg1][arg2].field_512),
               address(stor5[arg1][arg2].field_768),
               address(stor5[arg1][arg2].field_1024),
               uint256(stor5[arg1][arg2].field_1280),
               Array(len=2 * Mask(256, -1, uint255(stor5[arg1][arg2].field_1537)), data=mem[128 len ceil32(uint255(stor5[arg1][arg2].field_1537))])
    if bool(stor5[arg1][arg2].field_1536) == stor5[arg1][arg2].field_1537 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor5[arg1][arg2].field_1536):
        if bool(stor5[arg1][arg2].field_1536) == uint255(stor5[arg1][arg2].field_1537) < 32:
            revert with 'NH{q', 34
        if uint255(stor5[arg1][arg2].field_1537):
            if 31 >= uint255(stor5[arg1][arg2].field_1537):
                mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_1544)
            else:
                mem[128] = uint256(stor5[arg1][arg2][6].field_0)
                idx = 128
                s = 0
                while uint255(stor5[arg1][arg2].field_1537) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][arg2][s + 6].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5[arg1][arg2].field_1536) == stor5[arg1][arg2].field_1537 % 128 < 32:
            revert with 'NH{q', 34
        if stor5[arg1][arg2].field_1537 % 128:
            if 31 >= stor5[arg1][arg2].field_1537 % 128:
                mem[128] = 256 * Mask(248, 0, stor5[arg1][arg2].field_1544)
            else:
                mem[128] = uint256(stor5[arg1][arg2][6].field_0)
                idx = 128
                s = 0
                while stor5[arg1][arg2].field_1537 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1][arg2][s + 6].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return uint256(stor5[arg1][arg2].field_0), 
           uint256(stor5[arg1][arg2].field_256),
           uint256(stor5[arg1][arg2].field_512),
           address(stor5[arg1][arg2].field_768),
           address(stor5[arg1][arg2].field_1024),
           uint256(stor5[arg1][arg2].field_1280),
           Array(len=stor5[arg1][arg2].field_1536 % 128, data=mem[128 len ceil32(stor5[arg1][arg2].field_1537 % 128)])
}

function sub_053889c8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4).length == ('cd', 4).length
    mem[96] = ('cd', 4).length
    require ('cd', 4)[0] == ('cd', 4)[0]
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] == ('cd', 4)[1]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[192] = ('cd', 4)[2]
    require ('cd', 4)[3] == address(('cd', 4)[3])
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] == ('cd', 4)[4]
    mem[256] = ('cd', 4)[4]
    require ('cd', 4)[5] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321 < 320:
        revert with 'NH{q', 65
    mem[320] = cd[(cd[4] + ('cd', 4)[5] + 4)]
    require cd[4] + ('cd', 4)[5] + cd[(cd[4] + ('cd', 4)[5] + 4)] + 36 <= calldata.size
    mem[352 len cd[(cd[4] + ('cd', 4)[5] + 4)]] = call.data[cd[4] + ('cd', 4)[5] + 36 len cd[(cd[4] + ('cd', 4)[5] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[5] + 4)] + 352] = 0
    mem[288] = 320
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + floor32(('cd', 36).length) + 322 > test266151307() or floor32(('cd', 36).length) + 322 < 321:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + floor32(('cd', 36).length) + 322
    mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353
    while idx < ('cd', 36).length:
        require cd[s] <= test266151307()
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _239 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[s] + 36)])) + 1
        mem[_239] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_239 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_239 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _239
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor7[address(msg.sender)]:
        revert with 0, 'DataBridge: ONLY_RELAYER'
    if stor2:
        revert with 0, 'DataBridge: PAUSED'
    mem[0] = mem[128]
    mem[32] = sha3(mem[96], 6)
    if sub_725340ee[mem[96]][mem[128]] > 2:
        revert with 'NH{q', 33
    if sub_725340ee[mem[96]][mem[128]]:
        revert with 0, 'DataBridge: ONLY_PENDING'
    if mem[160] != chainid:
        revert with 0, 'DataBridge: INVALID_CHAIN'
    if mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321] < sub_a82f2e26:
        revert with 0, 'DataBridge: INSUFFICIENT_SIGNATURES'
    _244 = mem[128]
    _245 = mem[160]
    _246 = mem[192]
    _247 = mem[224]
    _248 = mem[256]
    _249 = mem[288]
    _250 = mem[64]
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = _244
    mem[mem[64] + 96] = _245
    mem[mem[64] + 128] = address(_246)
    mem[mem[64] + 160] = address(_247)
    mem[mem[64] + 192] = _248
    mem[mem[64] + 224] = 224
    _254 = mem[_249]
    mem[mem[64] + 256] = mem[_249]
    mem[mem[64] + 288 len ceil32(_254)] = mem[_249 + 32 len ceil32(_254)]
    if ceil32(_254) <= _254:
        _755 = mem[64]
        mem[mem[64]] = ceil32(_254) + 256
        mem[64] = mem[64] + ceil32(_254) + 288
        _757 = sha3(mem[_755 + 32 len mem[_755]])
        mem[_250 + ceil32(_254) + 320] = '\x19Ethereum Signed Message:\n32'
        mem[_250 + ceil32(_254) + 348] = _757
        mem[_250 + ceil32(_254) + 288] = 60
        mem[64] = _250 + ceil32(_254) + 380
        _1253 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321]
        idx = 0
        while idx < _1253:
            if idx >= mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353]] == 65:
                if mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353]] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _1293 = mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 32]
            _1294 = mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]
            if uint255(mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]) >> 255) + 27) == 27:
                _1305 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1305 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _757)
                mem[_1305 + 64] = uint8((bool(_1294) >> 255) + 27)
                mem[_1305 + 96] = _1293
                mem[_1305 + 128] = uint255(_1294)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _757), (bool(_1294) >> 255) + 27 << 248, _1293, uint255(_1294)) 
                mem[_1305] = signer
            else:
                if uint8((bool(mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _1310 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1310 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _757)
                mem[_1310 + 64] = uint8((bool(_1294) >> 255) + 27)
                mem[_1310 + 96] = _1293
                mem[_1310 + 128] = uint255(_1294)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _757), (bool(_1294) >> 255) + 27 << 248, _1293, uint255(_1294)) 
                mem[_1310] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if not stor9[address(signer)]:
                revert with 0, 'DataBridge: NOT_SIGNER'
            if stor10[mem[96]][mem[128]][address(signer)]:
                revert with 0, 'DataBridge: DUPLICATE_SIGNATURE'
            mem[0] = address(signer)
            mem[32] = sha3(mem[128], sha3(mem[96], 10))
            stor10[mem[96]][mem[128]][address(signer)] = 1
            if idx == -1:
                revert with 'NH{q', 17
            _1253 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321]
            idx = idx + 1
            continue 
        mem[0] = mem[128]
        mem[32] = sha3(mem[96], 5)
        uint256(stor5[mem[96]][mem[128]].field_0) = mem[96]
        uint256(stor5[mem[96]][mem[128]].field_256) = mem[128]
        uint256(stor5[mem[96]][mem[128]].field_512) = mem[160]
        address(stor5[mem[96]][mem[128]].field_768) = mem[204 len 20]
        address(stor5[mem[96]][mem[128]].field_1024) = mem[236 len 20]
        uint256(stor5[mem[96]][mem[128]].field_1280) = mem[256]
        _1268 = mem[mem[288]]
        if bool(stor5[mem[96]][mem[128]].field_1536):
            if bool(stor5[mem[96]][mem[128]].field_1536) == uint255(stor5[mem[96]][mem[128]].field_1537) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(mem[128], sha3(mem[96], 5)) + 6
            if _1268:
                uint256(stor5[mem[96]][mem[128]][6][].field_0) = Array(len=_1268, data=mem[mem[288] + 32 len _1268])
                sub_725340ee[mem[96]][mem[128]] = 2
                _2090 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _2093 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _2161 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_2161)] = mem[mem[288] + 32 len ceil32(_2161)]
                if ceil32(_2161) > _2161:
                    mem[mem[64] + _2161 + 320] = 0
                if stor[_2090][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_2090][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _2093 + ceil32(_2161) + -mem[64] + 320]
            else:
                uint256(stor5[mem[96]][mem[128]].field_1536) = 0
                idx = 0
                while uint255(stor5[mem[96]][mem[128]].field_1537) + 31 / 32 > idx:
                    uint256(stor5[mem[96]][mem[128]][idx + 6].field_0) = 0
                    idx = idx + 1
                    continue 
                sub_725340ee[mem[96]][mem[128]] = 2
                _1800 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _1803 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _1995 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_1995)] = mem[mem[288] + 32 len ceil32(_1995)]
                if ceil32(_1995) > _1995:
                    mem[mem[64] + _1995 + 320] = 0
                if stor[_1800][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_1800][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _1803 + ceil32(_1995) + -mem[64] + 320]
        else:
            if bool(stor5[mem[96]][mem[128]].field_1536) == stor5[mem[96]][mem[128]].field_1537 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(mem[128], sha3(mem[96], 5)) + 6
            if _1268:
                uint256(stor5[mem[96]][mem[128]][6][].field_0) = Array(len=_1268, data=mem[mem[288] + 32 len _1268])
                sub_725340ee[mem[96]][mem[128]] = 2
                _2095 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _2098 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _2162 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_2162)] = mem[mem[288] + 32 len ceil32(_2162)]
                if ceil32(_2162) > _2162:
                    mem[mem[64] + _2162 + 320] = 0
                if stor[_2095][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_2095][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _2098 + ceil32(_2162) + -mem[64] + 320]
            else:
                uint256(stor5[mem[96]][mem[128]].field_1536) = 0
                idx = 0
                while stor5[mem[96]][mem[128]].field_1537 % 128 + 31 / 32 > idx:
                    uint256(stor5[mem[96]][mem[128]][idx + 6].field_0) = 0
                    idx = idx + 1
                    continue 
                sub_725340ee[mem[96]][mem[128]] = 2
                _1815 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _1818 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _1998 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_1998)] = mem[mem[288] + 32 len ceil32(_1998)]
                if ceil32(_1998) > _1998:
                    mem[mem[64] + _1998 + 320] = 0
                if stor[_1815][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_1815][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _1818 + ceil32(_1998) + -mem[64] + 320]
    else:
        mem[mem[64] + _254 + 288] = 0
        _758 = mem[64]
        mem[mem[64]] = ceil32(_254) + 256
        mem[64] = mem[64] + ceil32(_254) + 288
        _760 = sha3(mem[_758 + 32 len mem[_758]])
        mem[_250 + ceil32(_254) + 320] = '\x19Ethereum Signed Message:\n32'
        mem[_250 + ceil32(_254) + 348] = _760
        mem[_250 + ceil32(_254) + 288] = 60
        mem[64] = _250 + ceil32(_254) + 380
        _1254 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321]
        idx = 0
        while idx < _1254:
            if idx >= mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321]:
                revert with 'NH{q', 50
            if mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353]] == 65:
                if mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                    revert with 0, 'ECDSA: invalid signature 's' value'
                revert with 0, 'ECDSA: invalid signature 'v' value'
            if mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353]] != 64:
                revert with 0, 'ECDSA: invalid signature length'
            _1295 = mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 32]
            _1296 = mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]
            if uint255(mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            if uint8((bool(mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]) >> 255) + 27) == 27:
                _1307 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1307 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _760)
                mem[_1307 + 64] = uint8((bool(_1296) >> 255) + 27)
                mem[_1307 + 96] = _1295
                mem[_1307 + 128] = uint255(_1296)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _760), (bool(_1296) >> 255) + 27 << 248, _1295, uint255(_1296)) 
                mem[_1307] = signer
            else:
                if uint8((bool(mem[mem[(32 * idx) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 353] + 64]) >> 255) + 27) != 28:
                    revert with 0, 'ECDSA: invalid signature 'v' value'
                _1313 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1313 + 32] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _760)
                mem[_1313 + 64] = uint8((bool(_1296) >> 255) + 27)
                mem[_1313 + 96] = _1295
                mem[_1313 + 128] = uint255(_1296)
                signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _760), (bool(_1296) >> 255) + 27 << 248, _1295, uint255(_1296)) 
                mem[_1313] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(signer):
                revert with 0, 'ECDSA: invalid signature'
            if not stor9[address(signer)]:
                revert with 0, 'DataBridge: NOT_SIGNER'
            if stor10[mem[96]][mem[128]][address(signer)]:
                revert with 0, 'DataBridge: DUPLICATE_SIGNATURE'
            mem[0] = address(signer)
            mem[32] = sha3(mem[128], sha3(mem[96], 10))
            stor10[mem[96]][mem[128]][address(signer)] = 1
            if idx == -1:
                revert with 'NH{q', 17
            _1254 = mem[ceil32(ceil32(cd[(cd[4] + ('cd', 4)[5] + 4)])) + 321]
            idx = idx + 1
            continue 
        mem[0] = mem[128]
        mem[32] = sha3(mem[96], 5)
        uint256(stor5[mem[96]][mem[128]].field_0) = mem[96]
        uint256(stor5[mem[96]][mem[128]].field_256) = mem[128]
        uint256(stor5[mem[96]][mem[128]].field_512) = mem[160]
        address(stor5[mem[96]][mem[128]].field_768) = mem[204 len 20]
        address(stor5[mem[96]][mem[128]].field_1024) = mem[236 len 20]
        uint256(stor5[mem[96]][mem[128]].field_1280) = mem[256]
        _1281 = mem[mem[288]]
        if bool(stor5[mem[96]][mem[128]].field_1536):
            if bool(stor5[mem[96]][mem[128]].field_1536) == uint255(stor5[mem[96]][mem[128]].field_1537) < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(mem[128], sha3(mem[96], 5)) + 6
            if _1281:
                uint256(stor5[mem[96]][mem[128]][6][].field_0) = Array(len=_1281, data=mem[mem[288] + 32 len _1281])
                sub_725340ee[mem[96]][mem[128]] = 2
                _2100 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _2103 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _2163 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_2163)] = mem[mem[288] + 32 len ceil32(_2163)]
                if ceil32(_2163) > _2163:
                    mem[mem[64] + _2163 + 320] = 0
                if stor[_2100][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_2100][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _2103 + ceil32(_2163) + -mem[64] + 320]
            else:
                uint256(stor5[mem[96]][mem[128]].field_1536) = 0
                idx = 0
                while uint255(stor5[mem[96]][mem[128]].field_1537) + 31 / 32 > idx:
                    uint256(stor5[mem[96]][mem[128]][idx + 6].field_0) = 0
                    idx = idx + 1
                    continue 
                sub_725340ee[mem[96]][mem[128]] = 2
                _1830 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _1833 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _2001 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_2001)] = mem[mem[288] + 32 len ceil32(_2001)]
                if ceil32(_2001) > _2001:
                    mem[mem[64] + _2001 + 320] = 0
                if stor[_1830][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_1830][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _1833 + ceil32(_2001) + -mem[64] + 320]
        else:
            if bool(stor5[mem[96]][mem[128]].field_1536) == stor5[mem[96]][mem[128]].field_1537 % 128 < 32:
                revert with 'NH{q', 34
            mem[0] = sha3(mem[128], sha3(mem[96], 5)) + 6
            if _1281:
                uint256(stor5[mem[96]][mem[128]][6][].field_0) = Array(len=_1281, data=mem[mem[288] + 32 len _1281])
                sub_725340ee[mem[96]][mem[128]] = 2
                _2105 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _2108 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _2164 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_2164)] = mem[mem[288] + 32 len ceil32(_2164)]
                if ceil32(_2164) > _2164:
                    mem[mem[64] + _2164 + 320] = 0
                if stor[_2105][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_2105][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _2108 + ceil32(_2164) + -mem[64] + 320]
            else:
                uint256(stor5[mem[96]][mem[128]].field_1536) = 0
                idx = 0
                while stor5[mem[96]][mem[128]].field_1537 % 128 + 31 / 32 > idx:
                    uint256(stor5[mem[96]][mem[128]][idx + 6].field_0) = 0
                    idx = idx + 1
                    continue 
                sub_725340ee[mem[96]][mem[128]] = 2
                _1845 = sha3(mem[96], 6)
                mem[0] = mem[128]
                mem[32] = sha3(mem[96], 6)
                _1848 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = mem[96]
                mem[mem[64] + 96] = mem[128]
                mem[mem[64] + 128] = mem[160]
                mem[mem[64] + 160] = mem[204 len 20]
                mem[mem[64] + 192] = mem[236 len 20]
                mem[mem[64] + 224] = mem[256]
                mem[mem[64] + 256] = 224
                _2004 = mem[mem[288]]
                mem[mem[64] + 288] = mem[mem[288]]
                mem[mem[64] + 320 len ceil32(_2004)] = mem[mem[288] + 32 len ceil32(_2004)]
                if ceil32(_2004) > _2004:
                    mem[mem[64] + _2004 + 320] = 0
                if stor[_1845][mem[0]] >= 3:
                    revert with 'NH{q', 33
                mem[mem[64] + 32] = stor[_1845][mem[0]]
                emit 0x2ca529d9: mem[mem[64] len _1848 + ceil32(_2004) + -mem[64] + 320]
}



}
