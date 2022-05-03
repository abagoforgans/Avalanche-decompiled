contract main {




// =====================  Runtime code  =====================


#
#  - changeBookKeeper(bytes arg1, bytes arg2, bytes arg3)
#  - initGenesisBlock(bytes arg1, bytes arg2)
#  - crossChain(uint64 arg1, bytes arg2, bytes arg3, bytes arg4)
#  - verifyHeaderAndExecuteTx(bytes arg1, bytes arg2, bytes arg3, bytes arg4, bytes arg5)
#
uint8 stor0; offset 160
address owner;
uint64 chainId; offset 160
address ethCrossChainDataAddress;
address whiteListerAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;

function EthCrossChainDataAddress() payable {
    return ethCrossChainDataAddress
}

function paused() payable {
    return bool(stor0)
}

function sub_73f53ba4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function chainId() payable {
    return chainId
}

function whiteLister() payable {
    return whiteListerAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setChainId(uint64 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    chainId = arg1
    return 1
}

function setWhiteLister(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if whiteListerAddress != msg.sender:
        revert with 0, 'Not whiteLister'
    if not arg1:
        revert with 0, 'Can not transfer to address(0)'
    whiteListerAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function upgradeToNew(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0:
        revert with 0, 'Pausable: not paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(ethCrossChainDataAddress)
    call ethCrossChainDataAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_ba1c9bc7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = bool(stor4[arg1][arg2[all]])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function sub_a692f6d4(?) payable {
    require calldata.size - 4 >= 32
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
    if whiteListerAddress != msg.sender:
        revert with 0, 'Not whiteLister'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function sub_f76fe431(?) payable {
    require calldata.size - 4 >= 32
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
    if whiteListerAddress != msg.sender:
        revert with 0, 'Not whiteLister'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        stor0 = 1
        emit Paused(msg.sender);
    require ext_code.size(ethCrossChainDataAddress)
    staticcall ethCrossChainDataAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        require ext_code.size(ethCrossChainDataAddress)
        call ethCrossChainDataAddress.0x8456cb59 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'pause EthCrossChainData contract failed'
    return 1
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        if not stor0:
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    require ext_code.size(ethCrossChainDataAddress)
    staticcall ethCrossChainDataAddress.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(ethCrossChainDataAddress)
        call ethCrossChainDataAddress.0x3f4ba83a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'unpause EthCrossChainData contract failed'
    return 1
}

function sub_1753acca(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _31 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_31] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_31 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[cd[(cd[4] + cd[s] + 36)] + _31 + 32] = 0
        mem[t] = _31
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if whiteListerAddress != msg.sender:
        revert with 0, 'Not whiteLister'
    _54 = mem[96]
    idx = 0
    while idx < _54:
        require idx < mem[96]
        _56 = mem[(32 * idx) + 128]
        _57 = mem[mem[(32 * idx) + 128]]
        require mem[mem[(32 * idx) + 128]] >= 64
        _58 = mem[mem[(32 * idx) + 128] + 32]
        require mem[mem[(32 * idx) + 128] + 32] == mem[mem[(32 * idx) + 128] + 44 len 20]
        _59 = mem[mem[(32 * idx) + 128] + 64]
        require mem[mem[(32 * idx) + 128] + 64] <= test266151307()
        require mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 63 < mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128]] + 32
        _60 = mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]
        require mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32] <= test266151307()
        _61 = mem[64]
        require mem[64] + (32 * mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]) + 32
        mem[_61] = _60
        s = 0
        t = _56 + _59 + 64
        u = _61 + 32
        while s < _60:
            _77 = mem[t]
            require _56 + _59 + mem[t] + 95 < _56 + _57 + 32
            _78 = mem[_56 + _59 + mem[t] + 64]
            require mem[_56 + _59 + mem[t] + 64] <= test266151307()
            _84 = mem[64]
            require mem[64] + ceil32(mem[_56 + _59 + mem[t] + 64]) + 32 >= mem[64] and mem[64] + ceil32(mem[_56 + _59 + mem[t] + 64]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_56 + _59 + mem[t] + 64]) + 32
            mem[_84] = _78
            require _59 + _77 + _78 + 96 <= _57 + 32
            idx = 0
            while idx < _78:
                mem[idx + _84 + 32] = mem[idx + _56 + _59 + _77 + 96]
                _54 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_78) > _78:
                mem[_84 + _78 + 32] = 0
            mem[u] = _84
            _54 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _92 = mem[_61]
        t = 0
        while t < _92:
            mem[0] = address(_58)
            mem[32] = 4
            require t < mem[_61]
            _96 = mem[(32 * t) + _61 + 32]
            _97 = mem[64]
            _98 = mem[mem[(32 * t) + _61 + 32]]
            idx = 0
            while idx < _98:
                mem[idx + _97] = mem[idx + _96 + 32]
                _54 = mem[96]
                _92 = mem[_61]
                idx = idx + 32
                continue 
            mem[_98 + _97] = sha3(address(_58), 4)
            stor[sha3(mem[mem[64] len _98 + _97 + -mem[64] + 32])] = 0
            _54 = mem[96]
            _92 = mem[_61]
            t = t + 1
            continue 
        _54 = mem[96]
        idx = idx + 1
        continue 
}

function sub_d07033aa(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        _31 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_31] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_31 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[cd[(cd[4] + cd[s] + 36)] + _31 + 32] = 0
        mem[t] = _31
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if whiteListerAddress != msg.sender:
        revert with 0, 'Not whiteLister'
    _54 = mem[96]
    idx = 0
    while idx < _54:
        require idx < mem[96]
        _56 = mem[(32 * idx) + 128]
        _57 = mem[mem[(32 * idx) + 128]]
        require mem[mem[(32 * idx) + 128]] >= 64
        _58 = mem[mem[(32 * idx) + 128] + 32]
        require mem[mem[(32 * idx) + 128] + 32] == mem[mem[(32 * idx) + 128] + 44 len 20]
        _59 = mem[mem[(32 * idx) + 128] + 64]
        require mem[mem[(32 * idx) + 128] + 64] <= test266151307()
        require mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 63 < mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128]] + 32
        _60 = mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]
        require mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32] <= test266151307()
        _61 = mem[64]
        require mem[64] + (32 * mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]) + 32 >= mem[64] and mem[64] + (32 * mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * mem[mem[(32 * idx) + 128] + mem[mem[(32 * idx) + 128] + 64] + 32]) + 32
        mem[_61] = _60
        s = 0
        t = _56 + _59 + 64
        u = _61 + 32
        while s < _60:
            _77 = mem[t]
            require _56 + _59 + mem[t] + 95 < _56 + _57 + 32
            _78 = mem[_56 + _59 + mem[t] + 64]
            require mem[_56 + _59 + mem[t] + 64] <= test266151307()
            _84 = mem[64]
            require mem[64] + ceil32(mem[_56 + _59 + mem[t] + 64]) + 32 >= mem[64] and mem[64] + ceil32(mem[_56 + _59 + mem[t] + 64]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_56 + _59 + mem[t] + 64]) + 32
            mem[_84] = _78
            require _59 + _77 + _78 + 96 <= _57 + 32
            idx = 0
            while idx < _78:
                mem[idx + _84 + 32] = mem[idx + _56 + _59 + _77 + 96]
                _54 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_78) > _78:
                mem[_84 + _78 + 32] = 0
            mem[u] = _84
            _54 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _92 = mem[_61]
        t = 0
        while t < _92:
            mem[0] = address(_58)
            mem[32] = 4
            require t < mem[_61]
            _96 = mem[(32 * t) + _61 + 32]
            _97 = mem[64]
            _98 = mem[mem[(32 * t) + _61 + 32]]
            idx = 0
            while idx < _98:
                mem[idx + _97] = mem[idx + _96 + 32]
                _54 = mem[96]
                _92 = mem[_61]
                idx = idx + 32
                continue 
            mem[_98 + _97] = sha3(address(_58), 4)
            stor[sha3(mem[mem[64] len _98 + _97 + -mem[64] + 32])] = 1
            _54 = mem[96]
            _92 = mem[_61]
            t = t + 1
            continue 
        _54 = mem[96]
        idx = idx + 1
        continue 
}



}
