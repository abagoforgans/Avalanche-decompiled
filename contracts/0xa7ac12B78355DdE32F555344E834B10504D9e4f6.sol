contract main {




// =====================  Runtime code  =====================


#
#  - deploy(uint256 arg1)
#
const masterchef = 0x60ae616a2155ee3d9a68541ba4544862310933d4


address owner;
mapping of address vaults;
mapping of address sub_3ab98c8c;

function sub_3ab98c8c(?) payable {
    require calldata.size - 4 >= 32
    return sub_3ab98c8c[arg1]
}

function vaults(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vaults[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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

function renounce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(vaults[arg1])
    call vaults[arg1].0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_3ab98c8c[arg1])
    call sub_3ab98c8c[arg1].0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cea2feea(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        require cd[68] + cd[s] + 67 < calldata.size
        require cd[(cd[68] + cd[s] + 36)] <= test266151307()
        _24 = mem[64]
        require mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + (32 * cd[(cd[68] + cd[s] + 36)]) + 32
        mem[_24] = cd[(cd[68] + cd[s] + 36)]
        require calldata.size >= cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68
        u = 0
        v = cd[68] + cd[s] + 68
        w = _24 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _24
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == address(cd[100])
    mem[0] = cd[4]
    mem[32] = 2
    _26 = mem[64]
    mem[mem[64]] = 0x3124331500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 96
    _27 = mem[96]
    mem[mem[64] + 100] = mem[96]
    t = 0
    u = 128
    v = mem[64] + 132
    while t < _27:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    mem[_26 + 36] = (32 * _27) + 128
    _35 = mem[(32 * ('cd', 36).length) + 128]
    mem[_26 + (32 * _27) + 132] = mem[(32 * ('cd', 36).length) + 128]
    idx = 0
    s = (32 * ('cd', 36).length) + 160
    t = _26 + (32 * _27) + (32 * _35) + 164
    u = _26 + (32 * _27) + 164
    while idx < _35:
        mem[u] = t + -_26 + -(32 * _27) - 164
        _40 = mem[s]
        _42 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        w = _40 + 32
        x = t + 32
        while v < _42:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        v = _42 + 1
        w = _40 + (32 * _42) + 64
        t = t + (32 * _42) + 32
        u = u + 32
        continue 
    mem[_26 + 68] = address(cd[100])
    require ext_code.size(sub_3ab98c8c[cd[4]])
    call sub_3ab98c8c[cd[4]].mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
