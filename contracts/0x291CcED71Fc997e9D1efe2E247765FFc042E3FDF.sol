contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 sub_23500f57;
mapping of uint8 stor2;

function sub_23500f57(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return uint256(sub_23500f57[address(arg1)][2][address(arg2)])
}

function sub_2b3cf787(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(sub_23500f57[arg1]))
}

function sub_377db6ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
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

function sub_897d2018(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(uint8(sub_23500f57[address(arg1)][1][address(arg2)])), 
           bool(uint8(sub_23500f57[address(arg1)][3][address(arg2)])),
           bool(stor2[address(arg2)])
}

function sub_36f5218f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(sub_23500f57[address(arg1)]) = uint8(bool(arg2))
    emit 0x181e63eb: bool(arg2), address(arg1)
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

function checkPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall this.address.0xe94a3b13 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        return 0
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1:
        return bool(ext_call.return_data[0])
    return 1
}

function _checkPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == arg1:
        return True
    return (ext_call.return_data[12 len 20] == arg1)
}

function sub_5f5a31a7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if uint256(sub_23500f57[address(msg.sender)][2][address(arg2)]):
        return 1, 64, 0
    if uint8(sub_23500f57[address(msg.sender)]):
        return 1, 64, 0
    staticcall this.address.0xe94a3b13 with:
            gas gas_remaining wei
           args msg.sender, address(arg2)
    if not ext_call.success:
        return 1, 64, 0
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if msg.sender:
        if not ext_call.return_data[0]:
            return 1, 64, 0
    if not uint8(sub_23500f57[address(msg.sender)][1][address(arg1)]):
        return 0, 64, 16, 0, 0
    uint256(sub_23500f57[address(msg.sender)][2][address(arg2)]) = block.timestamp
    emit 0xf9fc8619: block.timestamp, msg.sender, address(arg2)
    return 1, 64, 5, 0, 0
}

function sub_bd8bf2bb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor2[msg.sender]:
        if not uint8(sub_23500f57[address(arg1)][3][msg.sender]):
            return 0, 64, 13, 0, 0
    if uint256(sub_23500f57[address(arg1)][2][address(arg3)]):
        return 1, 64, 0
    if uint8(sub_23500f57[address(arg1)]):
        return 1, 64, 0
    staticcall this.address.0xe94a3b13 with:
            gas gas_remaining wei
           args address(arg1), address(arg3)
    if not ext_call.success:
        return 1, 64, 0
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(arg1):
        if not ext_call.return_data[0]:
            return 1, 64, 0
    if not uint8(sub_23500f57[address(arg1)][1][address(arg2)]):
        return 0, 64, 16, 0, 0
    uint256(sub_23500f57[address(arg1)][2][address(arg3)]) = block.timestamp
    emit 0xf9fc8619: block.timestamp, address(arg1), address(arg3)
    return 1, 64, 5, 0, 0
}

function sub_daca468f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx >= mem[96]:
            revert with 0, 50
        _27 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 97] = bool(cd[36])
        emit 0xf2069f3e: bool(cd[36]), address(_27)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_434f974b(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == bool(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(cd[4]), 1) + 1
        uint8(sub_23500f57[address(cd[4])][1][mem[(32 * idx) + 140 len 20]]) = uint8(bool(cd[68]))
        if idx >= mem[96]:
            revert with 0, 50
        _30 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 36).length) + 97] = bool(cd[68])
        emit 0xc46e287f: bool(cd[68]), address(cd[4]), address(_30)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e0831fcf(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == bool(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(cd[4]), 1) + 3
        uint8(sub_23500f57[address(cd[4])][3][mem[(32 * idx) + 140 len 20]]) = uint8(bool(cd[68]))
        if idx >= mem[96]:
            revert with 0, 50
        _30 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 36).length) + 97] = bool(cd[68])
        emit 0xa91bb929: bool(cd[68]), address(cd[4]), address(_30)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_62f00f09(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307() or ceil32(32 * ('cd', 68).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require (32 * ('cd', 68).length) + cd[68] + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 36).length) + 129
    while idx < (32 * ('cd', 68).length) + cd[68] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(cd[4]), 1) + 1
        uint8(sub_23500f57[address(cd[4])][1][mem[(32 * idx) + 140 len 20]]) = 1
        if idx >= mem[96]:
            revert with 0, 50
        _76 = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 1
        emit 0xc46e287f: 1, address(cd[4]), address(_76)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _90 = mem[ceil32(32 * ('cd', 36).length) + 97]
    idx = 0
    while idx < _90:
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 141 len 20]
        mem[32] = sha3(address(cd[4]), 1) + 3
        uint8(sub_23500f57[address(cd[4])][3][mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 141 len 20]]) = 1
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _96 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 1
        emit 0xa91bb929: 1, address(cd[4]), address(_96)
        if idx == -1:
            revert with 0, 17
        _90 = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = idx + 1
        continue 
}



}
