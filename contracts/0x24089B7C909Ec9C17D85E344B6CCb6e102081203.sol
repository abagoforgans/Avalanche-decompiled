contract main {




// =====================  Runtime code  =====================


address owner;
array of address pools;
uint256 numberOfPools;

function numberOfPools() payable {
    return numberOfPools
}

function owner() payable {
    return owner
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'invalid address'
    pools.length++
    pools[pools.length] = arg1
    if numberOfPools == -1:
        revert with 0, 17
    numberOfPools++
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addPools(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length <= 0:
        revert with 0, 'invalid array'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'invalid address'
        pools.length++
        mem[0] = 1
        pools[pools.length] = mem[(32 * idx) + 140 len 20]
        if numberOfPools == -1:
            revert with 0, 17
        numberOfPools++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function advanceEpochs() payable {
    mem[64] = 96
    idx = 0
    while idx < pools.length:
        mem[0] = 1
        require ext_code.size(pools[idx])
        staticcall pools[idx].epoch() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require ext_code.size(pools[idx])
        staticcall pools[idx].getCurrentEpoch() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_19] > _16:
            if gas_remaining < 400000:
            mem[mem[64]] = 0x3cf80e6c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(pools[idx])
            call pools[idx].advanceEpoch() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function performUpkeep(bytes arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    while idx < pools.length:
        mem[0] = 1
        require ext_code.size(pools[idx])
        staticcall pools[idx].epoch() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _15 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _16 = mem[_15]
        require ext_code.size(pools[idx])
        staticcall pools[idx].getCurrentEpoch() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_19] > _16:
            if gas_remaining < 400000:
            mem[mem[64]] = 0x3cf80e6c00000000000000000000000000000000000000000000000000000000
            require ext_code.size(pools[idx])
            call pools[idx].advanceEpoch() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function checkUpkeep(bytes arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    idx = 0
    while idx < pools.length:
        mem[0] = 1
        require ext_code.size(pools[idx])
        staticcall pools[idx].epoch() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _30 = mem[_28]
        require ext_code.size(pools[idx])
        staticcall pools[idx].getCurrentEpoch() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_35] <= _30:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _37 = mem[64]
        mem[64] = mem[64] + 32
        mem[_37] = 0
        _38 = mem[64]
        mem[mem[64]] = 1
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = 0
        idx = 0
        while idx < 0:
            mem[idx + mem[64] + 96] = mem[idx + _37 + 32]
            idx = idx + 32
            continue 
        return memory
          from mem[64]
           len _38 + -mem[64] + 96
    return 0, 64, 0
}



}
