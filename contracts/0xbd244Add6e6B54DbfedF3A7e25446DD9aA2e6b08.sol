contract main {




// =====================  Runtime code  =====================


#
#  - unlock(bytes arg1, bytes arg2, uint64 arg3)
#  - sub_0892cf48(?)
#  - deposit(address arg1, uint256 arg2)
#  - withdraw(address arg1, uint256 arg2, address arg3)
#  - lock(address arg1, uint64 arg2, bytes arg3, uint256 arg4)
#  - withdraw(address arg1, uint256 arg2)
#  - deposit(address arg1, uint256 arg2, address arg3)
#
address owner;
address managerProxyContractAddress;
array of uint256 proxyHashMap;
array of uint256 assetHashMap;
mapping of address sub_3389279d;

function sub_3389279d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3389279d[arg1]
}

function assetHashMap(address arg1, uint64 arg2) {
    return assetHashMap[arg1][arg2][0 len assetHashMap[arg1][arg2].length]
}

function owner() {
    return owner
}

function proxyHashMap(uint64 arg1) {
    return proxyHashMap[arg1][0 len proxyHashMap[arg1].length]
}

function managerProxyContract() {
    return managerProxyContractAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setManagerProxy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    managerProxyContractAddress = arg1
    emit SetManagerProxyEvent(arg1);
}

function sub_6bc9e760(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3389279d[address(arg1)] = address(arg2)
    emit 0xfe2319c5: address(arg1), address(arg2)
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBalanceFor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function bindProxyHash(uint64 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    proxyHashMap[arg1 << 192][] = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    emit BindProxyEvent(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len (2 * ceil32(arg2.length)) + -arg2.length + 64]);
    mem[ceil32(arg2.length) + 128] = 1
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function bindAssetHash(address arg1, uint64 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    assetHashMap[address(arg1)][arg2 << 192][] = Array(len=arg3.length, data=arg3[all])
    if not arg1:
        mem[ceil32(arg3.length) + 128] = arg1
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = 128
        mem[ceil32(arg3.length) + 256] = arg3.length
        mem[ceil32(arg3.length) + 224] = eth.balance(this.address)
        emit 0x111628c8: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 128]
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 128] = arg1
    emit 0x111628c8: address(arg1), arg2 << 192, 128, 0, ext_call.return_data[4 len 28], arg3.length, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    return 1
}

function sub_61c6617d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'bindLPToAssetBatch: args length diff'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[32] = 4
        sub_3389279d[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        _82 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = mem[(32 * idx) + 140 len 20]
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] = address(_82)
        emit 0xfe2319c5: mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160], address(_82)
        idx = idx + 1
        continue 
    return 1
}

function sub_25a9f900(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _96 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_96] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_96 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + _96 + 32] = 0
        mem[t] = _96
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'bindProxyHashBatch: args length diff'
    _142 = mem[96]
    idx = 0
    while idx < _142:
        require idx < mem[(32 * ('cd', 4).length) + 128]
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 152 len 8]
        mem[32] = 2
        _149 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]
        mem[0] = sha3(mem[(32 * idx) + 152 len 8], 2)
        proxyHashMap[mem[(32 * idx) + 152 len 8]] = (2 * _149) + 1
        s = sha3(sha3(mem[(32 * idx) + 152 len 8], 2))
        t = mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32
        while mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + _149 + 32 > t:
            stor[s] = mem[t]
            _142 = mem[96]
            s = s + 1
            t = t + 32
            continue 
        s = sha3(sha3(mem[(32 * idx) + 152 len 8], 2)) + (Mask(251, 0, _149 + 31) >> 5)
        while sha3(sha3(mem[(32 * idx) + 152 len 8], 2)) + (proxyHashMap[mem[(32 * idx) + 152 len 8]].length + 31 / 32) > s:
            stor[s] = 0
            _142 = mem[96]
            s = s + 1
            continue 
        require idx < mem[96]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _214 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        _215 = mem[64]
        mem[mem[64]] = mem[(32 * idx) + 152 len 8]
        mem[mem[64] + 32] = 64
        _220 = mem[_214]
        mem[mem[64] + 64] = mem[_214]
        s = 0
        while s < _220:
            mem[s + mem[64] + 96] = mem[s + _214 + 32]
            _142 = mem[96]
            s = s + 32
            continue 
        if ceil32(_220) > _220:
            mem[_220 + _215 + 96] = 0
        emit BindProxyEvent(uint64 arg1, bytes arg2):
                            mem[mem[64] len _215 + ceil32(_220) + -mem[64] + 96],
        _142 = mem[96]
        idx = idx + 1
        continue 
    return 1
}

function sub_6f3326d5(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 160 >= 128 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 192 >= 160 and (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _301 = mem[64]
        require mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_301] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + cd[(cd[68] + cd[s] + 36)] + 68 <= calldata.size
        mem[_301 + 32 len cd[(cd[68] + cd[s] + 36)]] = call.data[cd[68] + cd[s] + 68 len cd[(cd[68] + cd[s] + 36)]]
        mem[cd[(cd[68] + cd[s] + 36)] + _301 + 32] = 0
        mem[t] = _301
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[(32 * ('cd', 4).length) + 128] != mem[96]:
        revert with 0, 'bindAssetHashBatch: args length diff'
    if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
        revert with 0, 'bindAssetHashBatch: args length diff'
    _399 = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    while idx < _399:
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        require idx < mem[96]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8]
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 3)
        _409 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]]
        mem[0] = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8], sha3(mem[(32 * idx) + 140 len 20], 3))
        assetHashMap[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8]] = (2 * _409) + 1
        s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8], sha3(mem[(32 * idx) + 140 len 20], 3)))
        t = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + 32
        while mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192] + _409 + 32 > t:
            stor[s] = mem[t]
            _399 = mem[(32 * ('cd', 4).length) + 128]
            s = s + 1
            t = t + 32
            continue 
        s = sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8], sha3(mem[(32 * idx) + 140 len 20], 3))) + (Mask(251, 0, _409 + 31) >> 5)
        while sha3(sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8], sha3(mem[(32 * idx) + 140 len 20], 3))) + (assetHashMap[mem[(32 * idx) + 140 len 20]][mem[(32 * idx) + (32 * ('cd', 4).length) + 184 len 8]].length + 31 / 32) > s:
            stor[s] = 0
            _399 = mem[(32 * ('cd', 4).length) + 128]
            s = s + 1
            continue 
        require idx < mem[96]
        _566 = mem[(32 * idx) + 128]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        _568 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        require idx < mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        _570 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < mem[96]
        _572 = mem[(32 * idx) + 128]
        if not mem[(32 * idx) + 140 len 20]:
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 32] = uint64(_568)
            mem[mem[64] + 64] = 128
            _586 = mem[_570]
            mem[mem[64] + 128] = mem[_570]
            s = 0
            while s < _586:
                mem[s + mem[64] + 160] = mem[s + _570 + 32]
                _399 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_586) > _586:
                mem[_586 + mem[64] + 160] = 0
            mem[mem[64] + 96] = eth.balance(this.address)
            emit 0x111628c8: mem[mem[64]], _568 << 192, 128, eth.balance(this.address), mem[mem[64] + 128 len ceil32(_586) + 32]
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_572))
            staticcall address(_572).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _585 = mem[_584]
            require mem[_584] == mem[_584]
            mem[mem[64]] = address(_566)
            mem[mem[64] + 32] = uint64(_568)
            mem[mem[64] + 64] = 128
            _591 = mem[_570]
            mem[mem[64] + 128] = mem[_570]
            s = 0
            while s < _591:
                mem[s + mem[64] + 160] = mem[s + _570 + 32]
                _399 = mem[(32 * ('cd', 4).length) + 128]
                s = s + 32
                continue 
            if ceil32(_591) > _591:
                mem[_591 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _585
            emit 0x111628c8: address(_566), _568 << 192, 128, _585, mem[mem[64] + 128 len ceil32(_591) + 32]
        _399 = mem[(32 * ('cd', 4).length) + 128]
        idx = idx + 1
        continue 
    return 1
}

function sub_53d1d277(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 160 >= 128 and ceil32(arg4.length) + ceil32(arg5.length) + 160 <= test266151307()
    mem[ceil32(arg4.length) + 128] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[arg5.length + ceil32(arg4.length) + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    assetHashMap[address(arg1)][arg3 << 192][] = Array(len=arg4.length, data=arg4[all])
    assetHashMap[address(arg2)][arg3 << 192][] = Array(len=arg5.length, data=arg5[all])
    sub_3389279d[address(arg1)] = address(arg2)
    if not address(arg1):
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = address(arg1)
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = uint64(arg3)
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 128
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 320] = 0
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = eth.balance(this.address)
        emit 0x111628c8: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], Array(len=arg4.length, data=arg4[all]), eth.balance(this.address)
        if not address(arg2):
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = address(arg2)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = uint64(arg3)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 224] = 128
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 288] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 320 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + ceil32(arg5.length) + 320] = 0
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 256] = eth.balance(this.address)
            emit 0x111628c8: mem[ceil32(arg4.length) + ceil32(arg5.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = address(arg1)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = address(arg2)
            emit 0xfe2319c5: Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
            return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
                   mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length)]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = this.address
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 160] = address(arg2)
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 192] = uint64(arg3)
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 224] = 128
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 288] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 320 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
            mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 320] = 0
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 256] = 0, ext_call.return_data[4 len 28]
        emit 0x111628c8: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160]
    else:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 164] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == 0, ext_call.return_data[4 len 28]
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 192] = uint64(arg3)
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 224] = 128
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 288] = arg4.length
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if ceil32(arg4.length) > arg4.length:
            mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 320] = 0
        mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 256] = 0, ext_call.return_data[4 len 28]
        emit 0x111628c8: address(arg1), arg3 << 192, 128, 0, ext_call.return_data[4 len 28], arg4.length, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not address(arg2):
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 160] = address(arg2)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 192] = uint64(arg3)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 224] = 128
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 288] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 320 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 320] = 0
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 256] = eth.balance(this.address)
            emit 0x111628c8: mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160]
        else:
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 164] = this.address
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 160] = address(arg2)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 192] = uint64(arg3)
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 224] = 128
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 288] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]:
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 320] = 0
            mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
            emit 0x111628c8: mem[ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 160]
    emit 0xfe2319c5: address(arg1), address(arg2)
    return 1
}



}
