contract main {




// =====================  Runtime code  =====================


address owner;
address sub_73176e5fAddress;
address stor2;

function sub_73176e5f(?) payable {
    return sub_73176e5fAddress
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a6791cec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73176e5fAddress = address(arg1)
    stor2 = address(arg1)
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

function sub_7ce2a3bd(?) payable {
    mem[96] = 0x1fae658200000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.getAllNodes(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _5:
        _27 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_4 + -mem[s] - 32 >= 128
        _32 = mem[64]
        if mem[64] + 128 < mem[64] or mem[64] + 128 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 128
        _37 = mem[_4 + _27 + 128]
        require mem[_4 + _27 + 128] <= test266151307()
        require _4 + _27 + mem[_4 + _27 + 128] + 159 < return_data.size + 96
        _38 = mem[_4 + _27 + mem[_4 + _27 + 128] + 128]
        if mem[_4 + _27 + mem[_4 + _27 + 128] + 128] > test266151307():
            revert with 0, 65
        _39 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + _27 + mem[_4 + _27 + 128] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _27 + mem[_4 + _27 + 128] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _27 + mem[_4 + _27 + 128] + 128])) + 1
        mem[_39] = mem[_4 + _27 + mem[_4 + _27 + 128] + 128]
        require _4 + _27 + _37 + _38 + 64 <= return_data.size
        u = 0
        while u < _38:
            mem[u + _39 + 32] = mem[u + _4 + _27 + _37 + 160]
            u = u + 32
            continue 
        if ceil32(_38) > _38:
            mem[_39 + _38 + 32] = 0
        mem[_32] = _39
        mem[_32 + 32] = mem[_4 + _27 + 160]
        mem[_32 + 64] = mem[_4 + _27 + 192]
        mem[_32 + 96] = mem[_4 + _27 + 224]
        mem[t] = _32
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not mem[ceil32(return_data.size) + 96]:
        revert with 0, 'no nodes'
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if s > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
        continue 
    mem[mem[64]] = s * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96] * mem[ceil32(return_data.size) + 96]
    return memory
      from mem[64]
       len 32
}



}
