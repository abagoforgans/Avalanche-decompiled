contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor9;
uint256 stor10;
array of struct oracles;
uint256 bftValue;
uint8 dataType; offset 160
address gravityContractAddress;
array of struct subscriptionIds;
uint256 lastPulseId;
mapping of struct subscriptions;
mapping of struct pulses;
mapping of uint8 stor20;

function pulses(uint256 arg1) {
    require calldata.size - 4 >= 32
    return pulses[arg1].field_0, pulses[arg1].field_256
}

function isPulseSubSent(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor20[arg1][arg2])
}

function bftValue() {
    return bftValue
}

function oracles(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < oracles.length
    return oracles[arg1].field_0
}

function dataType() {
    require dataType <= 2
    return dataType
}

function gravityContract() {
    return gravityContractAddress
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function subscriptionIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < subscriptionIds.length
    return subscriptionIds[arg1].field_0
}

function lastPulseId() {
    return lastPulseId
}

function subscriptions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return subscriptions[arg1].field_0, 
           subscriptions[arg1].field_256,
           subscriptions[arg1].field_256,
           subscriptions[arg1].field_512
}

function _fallback() payable {
    revert
}

function pulseQueue() {
    return stor9, stor10
}

function oracleQueue() {
    return stor1, stor2
}

function subscriptionsQueue() {
    return stor5, stor6
}

function sendValueToSubInt(int64 arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    if sha3(Mask(64, 192, ('signextend', 7, ('signextend', 7, ('param', 'arg1')))) >> 192) != pulses[arg2].field_0:
        revert with 0, 32, 33, 0xfe76616c756520776173206e6f7420617070726f766564206279206f7261636c65, mem[237 len 31]
    if stor20[arg2][arg3]:
        revert with 0, 'sub sent'
    stor20[arg2][arg3] = 1
    require ext_code.size(subscriptions[arg3].field_256)
    call subscriptions[arg3].field_256.attachValue(int64 rg1) with:
         gas gas_remaining wei
        args ('signextend', 7, ('signextend', 7, ('param', 'arg1')))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getOracles() {
    if not oracles.length:
        mem[(32 * oracles.length) + 128] = 32
        mem[(32 * oracles.length) + 160] = oracles.length
        mem[(32 * oracles.length) + 192 len floor32(oracles.length)] = mem[128 len floor32(oracles.length)]
        return memory
          from (32 * oracles.length) + 128
           len (96 * oracles.length) + 64
    mem[128] = address(oracles.field_0)
    idx = 128
    s = 0
    while (32 * oracles.length) + 96 > idx:
        mem[idx + 32] = oracles[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * oracles.length) + 192 len floor32(oracles.length)] = mem[128 len floor32(oracles.length)]
    return Array(len=oracles.length, data=mem[128 len floor32(oracles.length)], mem[(32 * oracles.length) + floor32(oracles.length) + 192 len (32 * oracles.length) - floor32(oracles.length)]), 
}

function getSubscribersIds() {
    if not subscriptionIds.length:
        mem[(32 * subscriptionIds.length) + 128] = 32
        mem[(32 * subscriptionIds.length) + 160] = subscriptionIds.length
        mem[(32 * subscriptionIds.length) + 192 len floor32(subscriptionIds.length)] = mem[128 len floor32(subscriptionIds.length)]
        return memory
          from (32 * subscriptionIds.length) + 128
           len (96 * subscriptionIds.length) + 64
    mem[128] = uint256(subscriptionIds.field_0)
    idx = 128
    s = 0
    while (32 * subscriptionIds.length) + 96 > idx:
        mem[idx + 32] = subscriptionIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * subscriptionIds.length) + 192 len floor32(subscriptionIds.length)] = mem[128 len floor32(subscriptionIds.length)]
    return Array(len=subscriptionIds.length, data=mem[128 len floor32(subscriptionIds.length)], mem[(32 * subscriptionIds.length) + floor32(subscriptionIds.length) + 192 len (32 * subscriptionIds.length) - floor32(subscriptionIds.length)]), 
}

function hashNewOracles(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    s = 96
    while idx < arg1.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        _22 = mem[64]
        _23 = mem[s]
        u = s + 32
        v = mem[64] + 32
        t = mem[s]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
        mem[_23 + _22 + 32] = address(_21)
        _30 = mem[64]
        mem[mem[64]] = _23 + _22 + -mem[64] + 20
        mem[64] = _23 + _22 + 52
        idx = idx + 1
        s = _30
        continue 
    mem[mem[64]] = sha3(mem[s + 32 len mem[s]])
    return memory
      from mem[64]
       len 32
}

function sendValueToSubString(string arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) != pulses[arg2].field_0:
        revert with 0, 
                    32,
                    33,
                    0xfe76616c756520776173206e6f7420617070726f766564206279206f7261636c65,
                    mem[arg1.length + ceil32(arg1.length) + 261 len 31]
    if stor20[arg2][arg3]:
        revert with 0, 'sub sent'
    stor20[arg2][arg3] = 1
    require ext_code.size(subscriptions[arg3].field_256)
    call subscriptions[arg3].field_256.0xbb327823 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function subscribe(address arg1, uint8 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_0:
        revert with 0, 'rq exists'
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_0 = msg.sender
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_256 = arg1
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_416 = arg2
    subscriptions[uint32(call.func_hash)][Mask(160, 96, msg.sender) >> 96][uint64(arg1)][Mask(96, 0, arg1)][arg2].field_512 = arg3
    require ext_code.size(0x7976c5b73f1a0e9813dd6ace146f89120f003c53)
    delegate 0x7976c5b73f1a0e9813dd6ace146f89120f003c53.0xa506d954 with:
         gas gas_remaining wei
        args 5, sha3(uint32(call.func_hash), Mask(160, 96, msg.sender) >> 96, uint64(arg1), Mask(96, 0, arg1), arg2)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    subscriptionIds.length++
    subscriptionIds[subscriptionIds.length].field_0 = sha3(uint32(call.func_hash), Mask(160, 96, msg.sender) >> 96, uint64(arg1), Mask(96, 0, arg1), arg2)
    emit NewSubscriber(sha3(uint32(call.func_hash), Mask(160, 96, msg.sender) >> 96, uint64(arg1), Mask(96, 0, arg1), arg2));
}

function sendValueToSubByte(bytes arg1, uint256 arg2, bytes32 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    if sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) != pulses[arg2].field_0:
        revert with 0, 
                    32,
                    33,
                    0xfe76616c756520776173206e6f7420617070726f766564206279206f7261636c65,
                    mem[arg1.length + ceil32(arg1.length) + 261 len 31]
    if stor20[arg2][arg3]:
        revert with 0, 'sub sent'
    stor20[arg2][arg3] = 1
    require ext_code.size(subscriptions[arg3].field_256)
    call subscriptions[arg3].field_256.attachValue(bytes rg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd0ea622b: Array(len=arg1.length, data=arg1[all]), arg2, arg3
}

function sendHashValue(bytes32 arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 192] = 0
    idx = 0
    while idx < oracles.length:
        mem[0] = 13
        require idx < mem[96]
        _34 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _36 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg3.length) + 160]
        _38 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _39 = mem[64]
        mem[64] = mem[64] + 32
        mem[_39 + 32] = arg1
        mem[_39 + 64] = uint8(_34)
        mem[_39 + 96] = _36
        mem[_39 + 128] = _38
        signer = erecover(arg1, _34 << 248, _36, _38) 
        mem[_39] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if 0 < bftValue:
        revert with 0, 'invalid bft count'
    pulses[stor17 + 1].field_0 = arg1
    pulses[stor17 + 1].field_256 = block.number
    emit NewPulse(lastPulseId + 1, block.number, arg1);
    lastPulseId++
}

function updateOracles(address[] arg1, uint8[] arg2, bytes32[] arg3, bytes32[] arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
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
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    idx = 0
    s = 96
    while idx < arg1.length:
        require idx < mem[96]
        _61 = mem[(32 * idx) + 128]
        _62 = mem[64]
        _63 = mem[s]
        u = s + 32
        v = mem[64] + 32
        t = mem[s]
        while t >= 32:
            mem[v] = mem[u]
            u = u + 32
            v = v + 32
            t = t - 32
            continue 
        mem[mem[64] + floor32(mem[s]) + 32] = mem[s + floor32(mem[s]) + -(mem[s] % 32) + 64 len mem[s] % 32] or Mask(8 * -(mem[s] % 32) + 32, -(8 * -(mem[s] % 32) + 32) + 256, mem[mem[64] + floor32(mem[s]) + 32])
        mem[_63 + _62 + 32] = address(_61)
        _108 = mem[64]
        mem[mem[64]] = _63 + _62 + -mem[64] + 20
        mem[64] = _63 + _62 + 52
        idx = idx + 1
        s = _108
        continue 
    _57 = sha3(mem[s + 32 len mem[s]])
    mem[mem[64]] = 0xad595b1a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(gravityContractAddress)
    staticcall gravityContractAddress.getConsuls() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _69 = mem[_64]
    require mem[_64] <= 4294967296
    require mem[_64] + 32 <= return_data.size
    require mem[_64 + mem[_64]] <= 4294967296 and mem[_64] + (32 * mem[_64 + mem[_64]]) + 32 <= return_data.size
    mem[_64 + ceil32(return_data.size)] = mem[_64 + mem[_64]]
    _72 = mem[_64 + _69]
    mem[_64 + ceil32(return_data.size) + 32 len floor32(mem[_64 + _69])] = mem[_64 + _69 + 32 len floor32(mem[_64 + _69])]
    mem[64] = (32 * _72) + _64 + ceil32(return_data.size) + 32
    _141 = mem[_64 + ceil32(return_data.size)]
    idx = 0
    while idx < _141:
        require idx < mem[_64 + ceil32(return_data.size)]
        _146 = mem[(32 * idx) + _64 + ceil32(return_data.size) + 32]
        require idx < mem[(32 * arg1.length) + 128]
        _149 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _151 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _153 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        _154 = mem[64]
        mem[64] = mem[64] + 32
        mem[_154 + 32] = _57
        mem[_154 + 64] = uint8(_149)
        mem[_154 + 96] = _151
        mem[_154 + 128] = _153
        signer = erecover(_57, _149 << 248, _151, _153) 
        mem[_154] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if 0 < bftValue:
        revert with 0, 'invalid bft count'
    oracles.length = mem[96]
    if not mem[96]:
        s = 0
        while oracles.length > s:
            oracles[s].field_0 = 0
            s = s + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            oracles[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while oracles.length > idx:
            oracles[idx].field_0 = 0
            idx = idx + 1
            continue 
    mem[0] = arg5
    mem[32] = 0
    stor0[arg5] = 1
    mem[mem[64] + 32] = _57
    mem[mem[64] + 64] = arg5
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    emit 0xe86a122a: 96, _57, arg5, mem[mem[64] + 96 len (32 * mem[96]) + 32]
}



}
