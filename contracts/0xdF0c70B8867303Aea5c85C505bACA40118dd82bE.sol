contract main {




// =====================  Runtime code  =====================


#
#  - cashoutNodeReward(address arg1, uint256 arg2)
#  - getNodeReward(address arg1, uint256 arg2)
#  - sub_cbd14993(?)
#
uint8 stor0; offset 160
address owner;
array of uint256 stor1;
array of struct stor5;
mapping of uint256 sub_908e6d3b;
address airdropAddress;
address presaleAddress;
uint8 rewardPerNode; offset 160
uint8 sub_7f59bf58; offset 168
address tokenAddress;
uint256 minPrice;
uint256 sub_b55fb79d;
uint256 totalNodesCreated;
uint256 totalStaked;
uint256 totalClaimed;
array of uint256 stor15;
array of uint256 stor16;

function airdrop() payable {
    return airdropAddress
}

function paused() payable {
    return bool(stor0)
}

function rewardPerNode() payable {
    return rewardPerNode
}

function sub_63584ecd(?) payable {
    return totalNodesCreated
}

function sub_7f59bf58(?) payable {
    return sub_7f59bf58
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function sub_908e6d3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_908e6d3b[arg1]
}

function sub_b55fb79d(?) payable {
    return sub_b55fb79d
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function totalClaimed() payable {
    return totalClaimed
}

function getMinPrice() payable {
    return minPrice
}

function minPrice() payable {
    return minPrice
}

function token() payable {
    return tokenAddress
}

function presale() payable {
    return presaleAddress
}

function _fallback() payable {
    revert
}

function sub_0539fcd1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPrice = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function updatePresale(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    presaleAddress = arg1
}

function sub_db9640a8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    airdropAddress = address(arg1)
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

function getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function isNodeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > 0)
}

function getIndexOfKey(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x17e142d1 with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_fd547f71(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    sub_7f59bf58 = mem[159 len 1]
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    rewardPerNode = mem[191 len 1]
}

function cashoutAllNodesRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if tokenAddress != msg.sender:
            if presaleAddress != msg.sender:
                if airdropAddress != msg.sender:
                    revert with 0, 'NOT_GUARD'
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NOT_OWNER'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor5[address(arg1)].field_0:
        revert with 0, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        stor5[address(arg1)][idx].field_512 = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = (4 * idx) + sha3(sha3(address(arg1), 5))
        continue 
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0xdeb3d896 with:
         gas gas_remaining wei
        args 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < delegate.return_data[0]
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0xd1aa9e7e with:
         gas gas_remaining wei
        args 1, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x4c60db9c with:
         gas gas_remaining wei
        args 1, address(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_626003fd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != 3:
        revert with 0, 'Wrong length'
    stor15.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor15.length + 31 / 32 > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            uint256(stor15.field_0) = uint8(cd[idx]) * 256^s or !(255 * 256^s) and uint256(stor15.field_0)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        s = sha3(15)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
        while stor15.length + 31 / 32 > idx:
            stor15[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_dec83abf(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != 3:
        revert with 0, 'Wrong length'
    stor16.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor16.length + 31 / 32 > idx:
            stor16[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            uint256(stor16.field_0) = uint8(cd[idx]) * 256^s or !(255 * 256^s) and uint256(stor16.field_0)
            s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        s = sha3(16)
        while idx:
            stor[s] = !(255 * 256^idx) and stor[s]
            idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
            s = (idx + 1 / 32) + s
            continue 
        idx = (floor32(None + 3) >> 4) + (None * None + 3 / 32) - (Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5 * None + 3 / 32)
        while stor16.length + 31 / 32 > idx:
            stor16[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getAllNodes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 5
    mem[64] = (32 * stor5[address(arg1)].field_0) + 128
    mem[96] = stor5[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _25 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_30] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
            if bool(stor5[address(arg1)][idx].field_0):
                if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                        mem[_30 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_30 + 32] = stor5[address(arg1)][idx].field_0
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_25] = _30
                mem[_25 + 32] = stor5[address(arg1)][idx].field_256
                mem[_25 + 64] = stor5[address(arg1)][idx].field_512
                mem[_25 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1 % 128:
                mem[_25] = _30
                mem[_25 + 32] = stor5[address(arg1)][idx].field_256
                mem[_25 + 64] = stor5[address(arg1)][idx].field_512
                mem[_25 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_30 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_25] = _30
                mem[_25 + 32] = stor5[address(arg1)][idx].field_256
                mem[_25 + 64] = stor5[address(arg1)][idx].field_512
                mem[_25 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_30 + 32] = stor5[address(arg1)][idx].field_0
            t = _30 + 32
            u = sha3(mem[0])
            while _30 + stor5[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_25] = _30
            mem[_25 + 32] = stor5[address(arg1)][u].field_256
            mem[_25 + 64] = stor5[address(arg1)][u].field_512
            mem[_25 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _25
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
        mem[_33] = stor5[address(arg1)][idx].field_1 % 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                mem[_25] = _33
                mem[_25 + 32] = stor5[address(arg1)][idx].field_256
                mem[_25 + 64] = stor5[address(arg1)][idx].field_512
                mem[_25 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                mem[_33 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_25] = _33
                mem[_25 + 32] = stor5[address(arg1)][idx].field_256
                mem[_25 + 64] = stor5[address(arg1)][idx].field_512
                mem[_25 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _25
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_33 + 32] = stor5[address(arg1)][idx].field_0
            t = _33 + 32
            u = sha3(mem[0])
            while _33 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_25] = _33
            mem[_25 + 32] = stor5[address(arg1)][u].field_256
            mem[_25 + 64] = stor5[address(arg1)][u].field_512
            mem[_25 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _25
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1 % 128:
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_33 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_33 + 32] = stor5[address(arg1)][idx].field_0
                t = _33 + 32
                u = sha3(mem[0])
                while _33 + stor5[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_25] = _33
        mem[_25 + 32] = stor5[address(arg1)][idx].field_256
        mem[_25 + 64] = stor5[address(arg1)][idx].field_512
        mem[_25 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _25
        s = s + 32
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[96]
    mem[mem[64] + 32] = mem[96]
    t = 0
    s = 128
    u = mem[64] + (32 * mem[96]) + 64
    v = mem[64] + 64
    while t < _27:
        mem[v] = u + -_26 - 64
        _45 = mem[s]
        _46 = mem[mem[s]]
        mem[u] = 128
        _48 = mem[_46]
        mem[u + 128] = mem[_46]
        idx = 0
        while idx < _48:
            mem[idx + u + 160] = mem[idx + _46 + 32]
            idx = idx + 32
            continue 
        if ceil32(_48) > _48:
            mem[u + _48 + 160] = 0
        mem[u + 32] = mem[_45 + 32]
        mem[u + 64] = mem[_45 + 64]
        mem[u + 96] = mem[_45 + 96]
        t = t + 1
        s = s + 32
        u = ceil32(_48) + u + 160
        v = v + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NOT_OWNER'
    mem[0] = arg1
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * stor5[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor5[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _57 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_63] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
            if bool(stor5[address(arg1)][idx].field_0):
                if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                        mem[_63 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_63 + 32] = stor5[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_57] = _63
                mem[_57 + 32] = stor5[address(arg1)][idx].field_256
                mem[_57 + 64] = stor5[address(arg1)][idx].field_512
                mem[_57 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1 % 128:
                mem[_57] = _63
                mem[_57 + 32] = stor5[address(arg1)][idx].field_256
                mem[_57 + 64] = stor5[address(arg1)][idx].field_512
                mem[_57 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_63 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_57] = _63
                mem[_57 + 32] = stor5[address(arg1)][idx].field_256
                mem[_57 + 64] = stor5[address(arg1)][idx].field_512
                mem[_57 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_63 + 32] = stor5[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + stor5[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_57] = _63
            mem[_57 + 32] = stor5[address(arg1)][u].field_256
            mem[_57 + 64] = stor5[address(arg1)][u].field_512
            mem[_57 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
        mem[_67] = stor5[address(arg1)][idx].field_1 % 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                mem[_57] = _67
                mem[_57 + 32] = stor5[address(arg1)][idx].field_256
                mem[_57 + 64] = stor5[address(arg1)][idx].field_512
                mem[_57 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                mem[_67 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_57] = _67
                mem[_57 + 32] = stor5[address(arg1)][idx].field_256
                mem[_57 + 64] = stor5[address(arg1)][idx].field_512
                mem[_57 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _57
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_67 + 32] = stor5[address(arg1)][idx].field_0
            t = _67 + 32
            u = sha3(mem[0])
            while _67 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_57] = _67
            mem[_57 + 32] = stor5[address(arg1)][u].field_256
            mem[_57 + 64] = stor5[address(arg1)][u].field_512
            mem[_57 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _57
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1 % 128:
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_67 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_67 + 32] = stor5[address(arg1)][idx].field_0
                t = _67 + 32
                u = sha3(mem[0])
                while _67 + stor5[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_57] = _67
        mem[_57 + 32] = stor5[address(arg1)][idx].field_256
        mem[_57 + 64] = stor5[address(arg1)][idx].field_512
        mem[_57 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _57
        s = s + 32
        idx = idx + 1
        continue 
    _54 = mem[ceil32(return_data.size) + 96]
    _55 = mem[64]
    mem[64] = mem[64] + 128
    mem[_55] = 96
    mem[_55 + 32] = 0
    mem[_55 + 64] = 0
    mem[_55 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _60 = mem[mem[ceil32(return_data.size) + 128]]
    _61 = mem[64]
    mem[64] = mem[64] + 64
    mem[_61] = 1
    mem[_61 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _60
    t = _55
    while idx < _54:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _100 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _101 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
        _102 = mem[64]
        _104 = mem[s]
        t = 0
        while t < _104:
            mem[t + _102 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_104) <= _104:
            _132 = mem[_61]
            s = 0
            while s < _132:
                mem[s + _102 + _104 + 32] = mem[s + _61 + 32]
                s = s + 32
                continue 
            if ceil32(_132) <= _132:
                _156 = mem[_101]
                s = 0
                while s < _156:
                    mem[s + _102 + _104 + _132 + 32] = mem[s + _101 + 32]
                    s = s + 32
                    continue 
                if ceil32(_156) <= _156:
                    _176 = mem[64]
                    mem[mem[64]] = _156 + _102 + _104 + _132 - mem[64]
                    mem[64] = _156 + _102 + _104 + _132 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _176
                    t = _100
                    continue 
                mem[_102 + _104 + _132 + _156 + 32] = 0
                _180 = mem[64]
                mem[mem[64]] = _156 + _102 + _104 + _132 - mem[64]
                mem[64] = _156 + _102 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _180
                t = _100
                continue 
            mem[_102 + _104 + _132 + 32] = 0
            _158 = mem[_101]
            s = 0
            while s < _158:
                mem[s + _102 + _104 + _132 + 32] = mem[s + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_158) <= _158:
                _177 = mem[64]
                mem[mem[64]] = _158 + _102 + _104 + _132 - mem[64]
                mem[64] = _158 + _102 + _104 + _132 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _177
                t = _100
                continue 
            mem[_102 + _104 + _132 + _158 + 32] = 0
            _181 = mem[64]
            mem[mem[64]] = _158 + _102 + _104 + _132 - mem[64]
            mem[64] = _158 + _102 + _104 + _132 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _181
            t = _100
            continue 
        mem[_102 + _104 + 32] = 0
        _133 = mem[_61]
        s = 0
        while s < _133:
            mem[s + _102 + _104 + 32] = mem[s + _61 + 32]
            s = s + 32
            continue 
        if ceil32(_133) <= _133:
            _157 = mem[_101]
            s = 0
            while s < _157:
                mem[s + _102 + _104 + _133 + 32] = mem[s + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_157) <= _157:
                _178 = mem[64]
                mem[mem[64]] = _157 + _102 + _104 + _133 - mem[64]
                mem[64] = _157 + _102 + _104 + _133 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _178
                t = _100
                continue 
            mem[_102 + _104 + _133 + _157 + 32] = 0
            _182 = mem[64]
            mem[mem[64]] = _157 + _102 + _104 + _133 - mem[64]
            mem[64] = _157 + _102 + _104 + _133 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _182
            t = _100
            continue 
        mem[_102 + _104 + _133 + 32] = 0
        _159 = mem[_101]
        s = 0
        while s < _159:
            mem[s + _102 + _104 + _133 + 32] = mem[s + _101 + 32]
            s = s + 32
            continue 
        if ceil32(_159) <= _159:
            _179 = mem[64]
            mem[mem[64]] = _159 + _102 + _104 + _133 - mem[64]
            mem[64] = _159 + _102 + _104 + _133 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _179
            t = _100
            continue 
        mem[_102 + _104 + _133 + _159 + 32] = 0
        _183 = mem[64]
        mem[mem[64]] = _159 + _102 + _104 + _133 - mem[64]
        mem[64] = _159 + _102 + _104 + _133 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _183
        t = _100
        continue 
    _103 = mem[64]
    mem[mem[64]] = 32
    _105 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_105)] = mem[s + 32 len ceil32(_105)]
    if ceil32(_105) <= _105:
        return 32, mem[mem[64] + 32 len ceil32(_105) + 32]
    mem[mem[64] + _105 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_105) + _103 + -mem[64] + 64
}

function sub_90219732(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender == owner:
        if stor0:
            revert with 0, 'Pausable: paused'
        mem[0] = address(arg1)
        mem[32] = 5
        mem[64] = ceil32(ceil32(arg2.length)) + (32 * stor5[address(arg1)].field_0) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = stor5[address(arg1)].field_0
        s = ceil32(ceil32(arg2.length)) + 129
        idx = 0
        while idx < stor5[address(arg1)].field_0:
            mem[0] = sha3(address(arg1), 5)
            _465 = mem[64]
            mem[64] = mem[64] + 128
            if bool(stor5[address(arg1)][idx].field_0):
                if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _505 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
                mem[_505] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
                if bool(stor5[address(arg1)][idx].field_0):
                    if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                        if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                            mem[_505 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                            mem[_505 + 32] = stor5[address(arg1)][idx].field_0
                            t = _505 + 32
                            u = sha3(mem[0])
                            while _505 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_465] = _505
                    mem[_465 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_465 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_465 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _465
                    s = s + 32
                    idx = idx + 1
                    continue 
                if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor5[address(arg1)][idx].field_1 % 128:
                    mem[_465] = _505
                    mem[_465 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_465 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_465 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _465
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                    mem[_505 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    mem[_465] = _505
                    mem[_465 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_465 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_465 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _465
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_505 + 32] = stor5[address(arg1)][idx].field_0
                t = _505 + 32
                u = sha3(mem[0])
                while _505 + stor5[address(arg1)][u].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_465] = _505
                mem[_465 + 32] = stor5[address(arg1)][u].field_256
                mem[_465 + 64] = stor5[address(arg1)][u].field_512
                mem[_465 + 96] = stor5[address(arg1)][u].field_768
                mem[t] = _465
                t = t + 32
                u = u + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            _517 = mem[64]
            mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
            mem[_517] = stor5[address(arg1)][idx].field_1 % 128
            if bool(stor5[address(arg1)][idx].field_0):
                if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                    mem[_465] = _517
                    mem[_465 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_465 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_465 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _465
                    s = s + 32
                    idx = idx + 1
                    continue 
                if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                    mem[_517 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    mem[_465] = _517
                    mem[_465 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_465 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_465 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _465
                    s = s + 32
                    idx = idx + 1
                    continue 
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_517 + 32] = stor5[address(arg1)][idx].field_0
                t = _517 + 32
                u = sha3(mem[0])
                while _517 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_465] = _517
                mem[_465 + 32] = stor5[address(arg1)][u].field_256
                mem[_465 + 64] = stor5[address(arg1)][u].field_512
                mem[_465 + 96] = stor5[address(arg1)][u].field_768
                mem[t] = _465
                t = t + 32
                u = u + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if stor5[address(arg1)][idx].field_1 % 128:
                if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                    mem[_517 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                    mem[_517 + 32] = stor5[address(arg1)][idx].field_0
                    t = _517 + 32
                    u = sha3(mem[0])
                    while _517 + stor5[address(arg1)][idx].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
            mem[_465] = _517
            mem[_465 + 32] = stor5[address(arg1)][idx].field_256
            mem[_465 + 64] = stor5[address(arg1)][idx].field_512
            mem[_465 + 96] = stor5[address(arg1)][idx].field_768
            mem[s] = _465
            s = s + 32
            idx = idx + 1
            continue 
        idx = 0
        while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
            if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                revert with 0, 50
            if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                revert with 0, 'Name not available'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = 5
        if 100 < stor5[address(arg1)].field_0:
            revert with 0, 'Max nodes exceeded'
        _944 = mem[64]
        mem[64] = mem[64] + 128
        mem[_944] = 96
        mem[_944 + 32] = block.timestamp
        mem[_944 + 64] = block.timestamp
        mem[_944 + 96] = arg3
    else:
        if msg.sender == tokenAddress:
            if stor0:
                revert with 0, 'Pausable: paused'
            mem[0] = address(arg1)
            mem[32] = 5
            mem[64] = ceil32(ceil32(arg2.length)) + (32 * stor5[address(arg1)].field_0) + 129
            mem[ceil32(ceil32(arg2.length)) + 97] = stor5[address(arg1)].field_0
            s = ceil32(ceil32(arg2.length)) + 129
            idx = 0
            while idx < stor5[address(arg1)].field_0:
                mem[0] = sha3(address(arg1), 5)
                _467 = mem[64]
                mem[64] = mem[64] + 128
                if bool(stor5[address(arg1)][idx].field_0):
                    if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _507 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
                    mem[_507] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
                    if bool(stor5[address(arg1)][idx].field_0):
                        if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                            if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                                mem[_507 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                            else:
                                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                                mem[_507 + 32] = stor5[address(arg1)][idx].field_0
                                t = _507 + 32
                                u = sha3(mem[0])
                                while _507 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                                    mem[t + 32] = stor1[u]
                                    t = t + 32
                                    u = u + 1
                                    continue 
                        mem[_467] = _507
                        mem[_467 + 32] = stor5[address(arg1)][idx].field_256
                        mem[_467 + 64] = stor5[address(arg1)][idx].field_512
                        mem[_467 + 96] = stor5[address(arg1)][idx].field_768
                        mem[s] = _467
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor5[address(arg1)][idx].field_1 % 128:
                        mem[_467] = _507
                        mem[_467 + 32] = stor5[address(arg1)][idx].field_256
                        mem[_467 + 64] = stor5[address(arg1)][idx].field_512
                        mem[_467 + 96] = stor5[address(arg1)][idx].field_768
                        mem[s] = _467
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                        mem[_507 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                        mem[_467] = _507
                        mem[_467 + 32] = stor5[address(arg1)][idx].field_256
                        mem[_467 + 64] = stor5[address(arg1)][idx].field_512
                        mem[_467 + 96] = stor5[address(arg1)][idx].field_768
                        mem[s] = _467
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                    mem[_507 + 32] = stor5[address(arg1)][idx].field_0
                    t = _507 + 32
                    u = sha3(mem[0])
                    while _507 + stor5[address(arg1)][u].field_1 % 128 > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_467] = _507
                    mem[_467 + 32] = stor5[address(arg1)][u].field_256
                    mem[_467 + 64] = stor5[address(arg1)][u].field_512
                    mem[_467 + 96] = stor5[address(arg1)][u].field_768
                    mem[t] = _467
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                _523 = mem[64]
                mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
                mem[_523] = stor5[address(arg1)][idx].field_1 % 128
                if bool(stor5[address(arg1)][idx].field_0):
                    if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                        mem[_467] = _523
                        mem[_467 + 32] = stor5[address(arg1)][idx].field_256
                        mem[_467 + 64] = stor5[address(arg1)][idx].field_512
                        mem[_467 + 96] = stor5[address(arg1)][idx].field_768
                        mem[s] = _467
                        s = s + 32
                        idx = idx + 1
                        continue 
                    if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                        mem[_523 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                        mem[_467] = _523
                        mem[_467 + 32] = stor5[address(arg1)][idx].field_256
                        mem[_467 + 64] = stor5[address(arg1)][idx].field_512
                        mem[_467 + 96] = stor5[address(arg1)][idx].field_768
                        mem[s] = _467
                        s = s + 32
                        idx = idx + 1
                        continue 
                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                    mem[_523 + 32] = stor5[address(arg1)][idx].field_0
                    t = _523 + 32
                    u = sha3(mem[0])
                    while _523 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                        mem[t + 32] = stor1[u]
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_467] = _523
                    mem[_467 + 32] = stor5[address(arg1)][u].field_256
                    mem[_467 + 64] = stor5[address(arg1)][u].field_512
                    mem[_467 + 96] = stor5[address(arg1)][u].field_768
                    mem[t] = _467
                    t = t + 32
                    u = u + 1
                    continue 
                if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                    revert with 0, 34
                if stor5[address(arg1)][idx].field_1 % 128:
                    if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                        mem[_523 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_523 + 32] = stor5[address(arg1)][idx].field_0
                        t = _523 + 32
                        u = sha3(mem[0])
                        while _523 + stor5[address(arg1)][idx].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_467] = _523
                mem[_467 + 32] = stor5[address(arg1)][idx].field_256
                mem[_467 + 64] = stor5[address(arg1)][idx].field_512
                mem[_467 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _467
                s = s + 32
                idx = idx + 1
                continue 
            idx = 0
            while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
                if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                    revert with 0, 50
                if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                    revert with 0, 'Name not available'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[0] = address(arg1)
            mem[32] = 5
            if 100 < stor5[address(arg1)].field_0:
                revert with 0, 'Max nodes exceeded'
            _949 = mem[64]
            mem[64] = mem[64] + 128
            mem[_949] = 96
            mem[_949 + 32] = block.timestamp
            mem[_949 + 64] = block.timestamp
            mem[_949 + 96] = arg3
        else:
            if msg.sender == presaleAddress:
                if stor0:
                    revert with 0, 'Pausable: paused'
                mem[0] = address(arg1)
                mem[32] = 5
                mem[64] = ceil32(ceil32(arg2.length)) + (32 * stor5[address(arg1)].field_0) + 129
                mem[ceil32(ceil32(arg2.length)) + 97] = stor5[address(arg1)].field_0
                s = ceil32(ceil32(arg2.length)) + 129
                idx = 0
                while idx < stor5[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 5)
                    _469 = mem[64]
                    mem[64] = mem[64] + 128
                    if bool(stor5[address(arg1)][idx].field_0):
                        if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _509 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
                        mem[_509] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
                        if bool(stor5[address(arg1)][idx].field_0):
                            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                                if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                                    mem[_509 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                                else:
                                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                                    mem[_509 + 32] = stor5[address(arg1)][idx].field_0
                                    t = _509 + 32
                                    u = sha3(mem[0])
                                    while _509 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_469] = _509
                            mem[_469 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_469 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_469 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _469
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor5[address(arg1)][idx].field_1 % 128:
                            mem[_469] = _509
                            mem[_469 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_469 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_469 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _469
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                            mem[_509 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                            mem[_469] = _509
                            mem[_469 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_469 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_469 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _469
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_509 + 32] = stor5[address(arg1)][idx].field_0
                        t = _509 + 32
                        u = sha3(mem[0])
                        while _509 + stor5[address(arg1)][u].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_469] = _509
                        mem[_469 + 32] = stor5[address(arg1)][u].field_256
                        mem[_469 + 64] = stor5[address(arg1)][u].field_512
                        mem[_469 + 96] = stor5[address(arg1)][u].field_768
                        mem[t] = _469
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _529 = mem[64]
                    mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
                    mem[_529] = stor5[address(arg1)][idx].field_1 % 128
                    if bool(stor5[address(arg1)][idx].field_0):
                        if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                            mem[_469] = _529
                            mem[_469 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_469 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_469 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _469
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                            mem[_529 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                            mem[_469] = _529
                            mem[_469 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_469 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_469 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _469
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_529 + 32] = stor5[address(arg1)][idx].field_0
                        t = _529 + 32
                        u = sha3(mem[0])
                        while _529 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_469] = _529
                        mem[_469 + 32] = stor5[address(arg1)][u].field_256
                        mem[_469 + 64] = stor5[address(arg1)][u].field_512
                        mem[_469 + 96] = stor5[address(arg1)][u].field_768
                        mem[t] = _469
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor5[address(arg1)][idx].field_1 % 128:
                        if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                            mem[_529 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                            mem[_529 + 32] = stor5[address(arg1)][idx].field_0
                            t = _529 + 32
                            u = sha3(mem[0])
                            while _529 + stor5[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_469] = _529
                    mem[_469 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_469 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_469 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _469
                    s = s + 32
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
                    if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                        revert with 0, 50
                    if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                        revert with 0, 'Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(arg1)
                mem[32] = 5
                if 100 < stor5[address(arg1)].field_0:
                    revert with 0, 'Max nodes exceeded'
                _954 = mem[64]
                mem[64] = mem[64] + 128
                mem[_954] = 96
                mem[_954 + 32] = block.timestamp
                mem[_954 + 64] = block.timestamp
                mem[_954 + 96] = arg3
            else:
                if airdropAddress != msg.sender:
                    revert with 0, 'NOT_GUARD'
                if stor0:
                    revert with 0, 'Pausable: paused'
                mem[0] = address(arg1)
                mem[32] = 5
                mem[64] = ceil32(ceil32(arg2.length)) + (32 * stor5[address(arg1)].field_0) + 129
                mem[ceil32(ceil32(arg2.length)) + 97] = stor5[address(arg1)].field_0
                s = ceil32(ceil32(arg2.length)) + 129
                idx = 0
                while idx < stor5[address(arg1)].field_0:
                    mem[0] = sha3(address(arg1), 5)
                    _471 = mem[64]
                    mem[64] = mem[64] + 128
                    if bool(stor5[address(arg1)][idx].field_0):
                        if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        _511 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
                        mem[_511] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
                        if bool(stor5[address(arg1)][idx].field_0):
                            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                                if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                                    mem[_511 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                                else:
                                    mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                                    mem[_511 + 32] = stor5[address(arg1)][idx].field_0
                                    t = _511 + 32
                                    u = sha3(mem[0])
                                    while _511 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                                        mem[t + 32] = stor1[u]
                                        t = t + 32
                                        u = u + 1
                                        continue 
                            mem[_471] = _511
                            mem[_471 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_471 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_471 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _471
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor5[address(arg1)][idx].field_1 % 128:
                            mem[_471] = _511
                            mem[_471 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_471 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_471 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _471
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                            mem[_511 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                            mem[_471] = _511
                            mem[_471 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_471 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_471 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _471
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_511 + 32] = stor5[address(arg1)][idx].field_0
                        t = _511 + 32
                        u = sha3(mem[0])
                        while _511 + stor5[address(arg1)][u].field_1 % 128 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_471] = _511
                        mem[_471 + 32] = stor5[address(arg1)][u].field_256
                        mem[_471 + 64] = stor5[address(arg1)][u].field_512
                        mem[_471 + 96] = stor5[address(arg1)][u].field_768
                        mem[t] = _471
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _535 = mem[64]
                    mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
                    mem[_535] = stor5[address(arg1)][idx].field_1 % 128
                    if bool(stor5[address(arg1)][idx].field_0):
                        if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                            mem[_471] = _535
                            mem[_471 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_471 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_471 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _471
                            s = s + 32
                            idx = idx + 1
                            continue 
                        if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                            mem[_535 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                            mem[_471] = _535
                            mem[_471 + 32] = stor5[address(arg1)][idx].field_256
                            mem[_471 + 64] = stor5[address(arg1)][idx].field_512
                            mem[_471 + 96] = stor5[address(arg1)][idx].field_768
                            mem[s] = _471
                            s = s + 32
                            idx = idx + 1
                            continue 
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_535 + 32] = stor5[address(arg1)][idx].field_0
                        t = _535 + 32
                        u = sha3(mem[0])
                        while _535 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_471] = _535
                        mem[_471 + 32] = stor5[address(arg1)][u].field_256
                        mem[_471 + 64] = stor5[address(arg1)][u].field_512
                        mem[_471 + 96] = stor5[address(arg1)][u].field_768
                        mem[t] = _471
                        t = t + 32
                        u = u + 1
                        continue 
                    if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor5[address(arg1)][idx].field_1 % 128:
                        if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                            mem[_535 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                        else:
                            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                            mem[_535 + 32] = stor5[address(arg1)][idx].field_0
                            t = _535 + 32
                            u = sha3(mem[0])
                            while _535 + stor5[address(arg1)][idx].field_1 % 128 > t:
                                mem[t + 32] = stor1[u]
                                t = t + 32
                                u = u + 1
                                continue 
                    mem[_471] = _535
                    mem[_471 + 32] = stor5[address(arg1)][idx].field_256
                    mem[_471 + 64] = stor5[address(arg1)][idx].field_512
                    mem[_471 + 96] = stor5[address(arg1)][idx].field_768
                    mem[s] = _471
                    s = s + 32
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < mem[ceil32(ceil32(arg2.length)) + 97]:
                    if idx >= mem[ceil32(ceil32(arg2.length)) + 97]:
                        revert with 0, 50
                    if sha3(mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]] + 32 len mem[mem[mem[(32 * idx) + ceil32(ceil32(arg2.length)) + 129]]]]) == sha3(mem[128 len mem[96]]):
                        revert with 0, 'Name not available'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = address(arg1)
                mem[32] = 5
                if 100 < stor5[address(arg1)].field_0:
                    revert with 0, 'Max nodes exceeded'
                _959 = mem[64]
                mem[64] = mem[64] + 128
                mem[_959] = 96
                mem[_959 + 32] = block.timestamp
                mem[_959 + 64] = block.timestamp
                mem[_959 + 96] = arg3
    stor5[address(arg1)].field_0++
    if bool(stor5[address(arg1)][stor5[address(arg1)].field_0].field_0):
        if bool(stor5[address(arg1)][stor5[address(arg1)].field_0].field_0) == uint255(stor5[address(arg1)][stor5[address(arg1)].field_0].field_0) * 0.5 < 32:
            revert with 0, 34
        if mem[96]:
            stor5[address(arg1)][stor5[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = 0
            idx = 0
            while (uint255(stor5[address(arg1)][stor5[address(arg1)].field_0].field_0) * 0.5) + 31 / 32 > idx:
                stor5[address(arg1)][(4 * stor5[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5[address(arg1)][stor5[address(arg1)].field_0].field_0) == stor5[address(arg1)][stor5[address(arg1)].field_0].field_1 % 128 < 32:
            revert with 0, 34
        if mem[96]:
            stor5[address(arg1)][stor5[address(arg1)].field_0][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
        else:
            stor5[address(arg1)][stor5[address(arg1)].field_0].field_0 = 0
            idx = 0
            while stor5[address(arg1)][stor5[address(arg1)].field_0].field_1 % 128 + 31 / 32 > idx:
                stor5[address(arg1)][(4 * stor5[address(arg1)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_256 = block.timestamp
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_512 = block.timestamp
    stor5[address(arg1)][stor5[address(arg1)].field_0].field_768 = arg3
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0xbc2b405c with:
         gas gas_remaining wei
        args 1, address(arg1), stor5[address(arg1)].field_0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x527bf1ad: arg3, address(arg1), block.timestamp
    if totalNodesCreated > -2:
        revert with 0, 17
    totalNodesCreated++
    if totalStaked > !arg3:
        revert with 0, 17
    totalStaked += arg3
    if sub_908e6d3b[address(arg1)] > -2:
        revert with 0, 17
    sub_908e6d3b[address(arg1)]++
}

function getAllNodesRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE: CREATIME must be higher than zero'
    idx = 0
    s = 0
    t = 0
    while idx < stor5[address(arg1)].field_0:
        if block.timestamp < stor5[address(arg1)][idx].field_512:
            revert with 0, 17
        if 2 >= stor16.length:
            revert with 0, 50
        if block.timestamp - stor5[address(arg1)][idx].field_512 / 24 * 3600 >= uint8(stor16.field_16):
            if 2 >= stor15.length:
                revert with 0, 50
            mem[0] = 15
            if block.timestamp < sub_b55fb79d:
                if sub_7f59bf58 and 1000000000000000000 * 10^18 > -1 / sub_7f59bf58:
                    revert with 0, 17
                if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * sub_7f59bf58 > -1 / stor5[address(arg1)][idx].field_768:
                    revert with 0, 17
                if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_16) / 100 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                    revert with 0, 17
                if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_16) / 100 / 1000000000000000000 * 10^18):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_16) / 100 / 1000000000000000000 * 10^18)
                t = (4 * idx) + sha3(sha3(address(arg1), 5))
                continue 
            if stor5[address(arg1)][idx].field_512 >= sub_b55fb79d:
                if rewardPerNode and 1000000000000000000 * 10^18 > -1 / rewardPerNode:
                    revert with 0, 17
                if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * rewardPerNode > -1 / stor5[address(arg1)][idx].field_768:
                    revert with 0, 17
                if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_16) / 100 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                    revert with 0, 17
                if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_16) / 100 / 1000000000000000000 * 10^18):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_16) / 100 / 1000000000000000000 * 10^18)
                t = (4 * idx) + sha3(sha3(address(arg1), 5))
                continue 
            if block.timestamp < stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if sub_b55fb79d < stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if sub_b55fb79d - stor5[address(arg1)][idx].field_512 and sub_7f59bf58 > -1 / sub_b55fb79d - stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if block.timestamp < sub_b55fb79d:
                revert with 0, 17
            if block.timestamp - sub_b55fb79d and rewardPerNode > -1 / block.timestamp - sub_b55fb79d:
                revert with 0, 17
            if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) > !((sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58)):
                revert with 0, 17
            if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58) and 1000000000000000000 * 10^18 > -1 / (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58):
                revert with 0, 17
            if not block.timestamp - stor5[address(arg1)][idx].field_512:
                revert with 0, 18
            if stor5[address(arg1)][idx].field_768 and (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 > -1 / stor5[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 and 10000 > -1 / stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100:
                revert with 0, 17
            if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440:
                revert with 0, 17
            if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_16) / 100 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                revert with 0, 17
            if s > !(10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_16) / 100 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_16) / 100 / 1000000000000000000 * 10^18)
            t = (4 * idx) + sha3(sha3(address(arg1), 5))
            continue 
        if 1 >= stor16.length:
            revert with 0, 50
        if block.timestamp - stor5[address(arg1)][idx].field_512 / 24 * 3600 >= uint8(stor16.field_8):
            if 1 >= stor15.length:
                revert with 0, 50
            mem[0] = 15
            if block.timestamp < sub_b55fb79d:
                if sub_7f59bf58 and 1000000000000000000 * 10^18 > -1 / sub_7f59bf58:
                    revert with 0, 17
                if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * sub_7f59bf58 > -1 / stor5[address(arg1)][idx].field_768:
                    revert with 0, 17
                if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_8) / 100 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                    revert with 0, 17
                if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_8) / 100 / 1000000000000000000 * 10^18):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_8) / 100 / 1000000000000000000 * 10^18)
                t = (4 * idx) + sha3(sha3(address(arg1), 5))
                continue 
            if stor5[address(arg1)][idx].field_512 >= sub_b55fb79d:
                if rewardPerNode and 1000000000000000000 * 10^18 > -1 / rewardPerNode:
                    revert with 0, 17
                if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * rewardPerNode > -1 / stor5[address(arg1)][idx].field_768:
                    revert with 0, 17
                if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_8) / 100 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                    revert with 0, 17
                if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_8) / 100 / 1000000000000000000 * 10^18):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_8) / 100 / 1000000000000000000 * 10^18)
                t = (4 * idx) + sha3(sha3(address(arg1), 5))
                continue 
            if block.timestamp < stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if sub_b55fb79d < stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if sub_b55fb79d - stor5[address(arg1)][idx].field_512 and sub_7f59bf58 > -1 / sub_b55fb79d - stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if block.timestamp < sub_b55fb79d:
                revert with 0, 17
            if block.timestamp - sub_b55fb79d and rewardPerNode > -1 / block.timestamp - sub_b55fb79d:
                revert with 0, 17
            if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) > !((sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58)):
                revert with 0, 17
            if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58) and 1000000000000000000 * 10^18 > -1 / (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58):
                revert with 0, 17
            if not block.timestamp - stor5[address(arg1)][idx].field_512:
                revert with 0, 18
            if stor5[address(arg1)][idx].field_768 and (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 > -1 / stor5[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 and 10000 > -1 / stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100:
                revert with 0, 17
            if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440:
                revert with 0, 17
            if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_8) / 100 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                revert with 0, 17
            if s > !(10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_8) / 100 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_8) / 100 / 1000000000000000000 * 10^18)
            t = (4 * idx) + sha3(sha3(address(arg1), 5))
            continue 
        if 0 >= stor16.length:
            revert with 0, 50
        mem[0] = 16
        if block.timestamp - stor5[address(arg1)][idx].field_512 / 24 * 3600 < uint8(stor16.field_0):
            if block.timestamp < sub_b55fb79d:
                if sub_7f59bf58 and 1000000000000000000 * 10^18 > -1 / sub_7f59bf58:
                    revert with 0, 17
                if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * sub_7f59bf58 > -1 / stor5[address(arg1)][idx].field_768:
                    revert with 0, 17
                if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and 1 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                    revert with 0, 17
                if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 / 1000000000000000000 * 10^18):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 / 1000000000000000000 * 10^18)
                t = (4 * idx) + sha3(sha3(address(arg1), 5))
                continue 
            if stor5[address(arg1)][idx].field_512 >= sub_b55fb79d:
                if rewardPerNode and 1000000000000000000 * 10^18 > -1 / rewardPerNode:
                    revert with 0, 17
                if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * rewardPerNode > -1 / stor5[address(arg1)][idx].field_768:
                    revert with 0, 17
                if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440:
                    revert with 0, 17
                if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and 1 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                    revert with 0, 17
                if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 / 1000000000000000000 * 10^18):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 / 1000000000000000000 * 10^18)
                t = (4 * idx) + sha3(sha3(address(arg1), 5))
                continue 
            if block.timestamp < stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if sub_b55fb79d < stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if sub_b55fb79d - stor5[address(arg1)][idx].field_512 and sub_7f59bf58 > -1 / sub_b55fb79d - stor5[address(arg1)][idx].field_512:
                revert with 0, 17
            if block.timestamp < sub_b55fb79d:
                revert with 0, 17
            if block.timestamp - sub_b55fb79d and rewardPerNode > -1 / block.timestamp - sub_b55fb79d:
                revert with 0, 17
            if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) > !((sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58)):
                revert with 0, 17
            if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58) and 1000000000000000000 * 10^18 > -1 / (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58):
                revert with 0, 17
            if not block.timestamp - stor5[address(arg1)][idx].field_512:
                revert with 0, 18
            if stor5[address(arg1)][idx].field_768 and (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 > -1 / stor5[address(arg1)][idx].field_768:
                revert with 0, 17
            if stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 and 10000 > -1 / stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100:
                revert with 0, 17
            if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440:
                revert with 0, 17
            if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and 1 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                revert with 0, 17
            if s > !(10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 / 1000000000000000000 * 10^18)
            t = (4 * idx) + sha3(sha3(address(arg1), 5))
            continue 
        if 0 >= stor15.length:
            revert with 0, 50
        mem[0] = 15
        if block.timestamp < sub_b55fb79d:
            if sub_7f59bf58 and 1000000000000000000 * 10^18 > -1 / sub_7f59bf58:
                revert with 0, 17
            if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * sub_7f59bf58 > -1 / stor5[address(arg1)][idx].field_768:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100:
                revert with 0, 17
            if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440:
                revert with 0, 17
            if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_0) / 100 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                revert with 0, 17
            if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_0) / 100 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * sub_7f59bf58 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_0) / 100 / 1000000000000000000 * 10^18)
            t = (4 * idx) + sha3(sha3(address(arg1), 5))
            continue 
        if stor5[address(arg1)][idx].field_512 >= sub_b55fb79d:
            if rewardPerNode and 1000000000000000000 * 10^18 > -1 / rewardPerNode:
                revert with 0, 17
            if stor5[address(arg1)][idx].field_768 and 1000000000000000000 * 10^18 * rewardPerNode > -1 / stor5[address(arg1)][idx].field_768:
                revert with 0, 17
            if 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 and 10000 > -1 / 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100:
                revert with 0, 17
            if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440:
                revert with 0, 17
            if 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_0) / 100 > -1 / 10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
                revert with 0, 17
            if s > !(10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_0) / 100 / 1000000000000000000 * 10^18):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10000 * 1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_768 * rewardPerNode / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_0) / 100 / 1000000000000000000 * 10^18)
            t = (4 * idx) + sha3(sha3(address(arg1), 5))
            continue 
        if block.timestamp < stor5[address(arg1)][idx].field_512:
            revert with 0, 17
        if sub_b55fb79d < stor5[address(arg1)][idx].field_512:
            revert with 0, 17
        if sub_b55fb79d - stor5[address(arg1)][idx].field_512 and sub_7f59bf58 > -1 / sub_b55fb79d - stor5[address(arg1)][idx].field_512:
            revert with 0, 17
        if block.timestamp < sub_b55fb79d:
            revert with 0, 17
        if block.timestamp - sub_b55fb79d and rewardPerNode > -1 / block.timestamp - sub_b55fb79d:
            revert with 0, 17
        if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) > !((sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58)):
            revert with 0, 17
        if (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58) and 1000000000000000000 * 10^18 > -1 / (block.timestamp * rewardPerNode) - (sub_b55fb79d * rewardPerNode) + (sub_b55fb79d * sub_7f59bf58) - (stor5[address(arg1)][idx].field_512 * sub_7f59bf58):
            revert with 0, 17
        if not block.timestamp - stor5[address(arg1)][idx].field_512:
            revert with 0, 18
        if stor5[address(arg1)][idx].field_768 and (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 > -1 / stor5[address(arg1)][idx].field_768:
            revert with 0, 17
        if stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 and 10000 > -1 / stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100:
            revert with 0, 17
        if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 and block.timestamp - stor5[address(arg1)][idx].field_512 / 60 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440:
            revert with 0, 17
        if 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 and uint8(stor15.field_0) / 100 > -1 / 10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000:
            revert with 0, 17
        if s > !(10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_0) / 100 / 1000000000000000000 * 10^18):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (10000 * stor5[address(arg1)][idx].field_768 * (1000000000000000000 * 10^18 * block.timestamp * rewardPerNode) - (1000000000000000000 * 10^18 * sub_b55fb79d * rewardPerNode) + (1000000000000000000 * 10^18 * sub_b55fb79d * sub_7f59bf58) - (1000000000000000000 * 10^18 * stor5[address(arg1)][idx].field_512 * sub_7f59bf58) / block.timestamp - stor5[address(arg1)][idx].field_512 / 100 / 1440 * block.timestamp - stor5[address(arg1)][idx].field_512 / 60 / 10000 * uint8(stor15.field_0) / 100 / 1000000000000000000 * 10^18)
        t = (4 * idx) + sha3(sha3(address(arg1), 5))
        continue 
    return s
}

function getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NOT_OWNER'
    mem[0] = arg1
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * stor5[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor5[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_64] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
            if bool(stor5[address(arg1)][idx].field_0):
                if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                        mem[_64 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_64 + 32] = stor5[address(arg1)][idx].field_0
                        t = _64 + 32
                        u = sha3(mem[0])
                        while _64 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _64
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1 % 128:
                mem[_59] = _64
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_64 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_59] = _64
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_64 + 32] = stor5[address(arg1)][idx].field_0
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + stor5[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _64
            mem[_59 + 32] = stor5[address(arg1)][u].field_256
            mem[_59 + 64] = stor5[address(arg1)][u].field_512
            mem[_59 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
        mem[_66] = stor5[address(arg1)][idx].field_1 % 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                mem[_59] = _66
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_59] = _66
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_66 + 32] = stor5[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _66
            mem[_59 + 32] = stor5[address(arg1)][u].field_256
            mem[_59 + 64] = stor5[address(arg1)][u].field_512
            mem[_59 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1 % 128:
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_66 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_66 + 32] = stor5[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor5[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _66
        mem[_59 + 32] = stor5[address(arg1)][idx].field_256
        mem[_59 + 64] = stor5[address(arg1)][idx].field_512
        mem[_59 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _59
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 32]
    if not mem[mem[ceil32(return_data.size) + 128] + 32]:
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 1
        mem[_63 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = 1
        mem[_65 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _63
        t = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _105 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _106 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _110 = mem[64]
                _112 = mem[s]
                t = 0
                while t < _112:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_112) <= _112:
                    _209 = mem[_65]
                    s = 0
                    while s < _209:
                        mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _359 = mem[_108]
                        s = 0
                        while s < _359:
                            mem[s + _110 + _112 + _209 + 32] = mem[s + _108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _495 = mem[64]
                            mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                            mem[64] = _359 + _110 + _112 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _495
                            t = _105
                            continue 
                        mem[_110 + _112 + _209 + _359 + 32] = 0
                        _501 = mem[64]
                        mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                        mem[64] = _359 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _501
                        t = _105
                        continue 
                    mem[_110 + _112 + _209 + 32] = 0
                    _363 = mem[_108]
                    s = 0
                    while s < _363:
                        mem[s + _110 + _112 + _209 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_363) <= _363:
                        _496 = mem[64]
                        mem[mem[64]] = _363 + _110 + _112 + _209 - mem[64]
                        mem[64] = _363 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _496
                        t = _105
                        continue 
                    mem[_110 + _112 + _209 + _363 + 32] = 0
                    _502 = mem[64]
                    mem[mem[64]] = _363 + _110 + _112 + _209 - mem[64]
                    mem[64] = _363 + _110 + _112 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _502
                    t = _105
                    continue 
                mem[_110 + _112 + 32] = 0
                _212 = mem[_65]
                s = 0
                while s < _212:
                    mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_212) <= _212:
                    _360 = mem[_108]
                    s = 0
                    while s < _360:
                        mem[s + _110 + _112 + _212 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _497 = mem[64]
                        mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                        mem[64] = _360 + _110 + _112 + _212 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _105
                        continue 
                    mem[_110 + _112 + _212 + _360 + 32] = 0
                    _503 = mem[64]
                    mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                    mem[64] = _360 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _503
                    t = _105
                    continue 
                mem[_110 + _112 + _212 + 32] = 0
                _364 = mem[_108]
                s = 0
                while s < _364:
                    mem[s + _110 + _112 + _212 + 32] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_364) <= _364:
                    _498 = mem[64]
                    mem[mem[64]] = _364 + _110 + _112 + _212 - mem[64]
                    mem[64] = _364 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _105
                    continue 
                mem[_110 + _112 + _212 + _364 + 32] = 0
                _504 = mem[64]
                mem[mem[64]] = _364 + _110 + _112 + _212 - mem[64]
                mem[64] = _364 + _110 + _112 + _212 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _504
                t = _105
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _208 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _106
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_208]:
                        revert with 0, 50
                    mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _353 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[t + _353 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _489 = mem[_65]
                    s = 0
                    while s < _489:
                        mem[s + _353 + _357 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _353 + _357 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _353 + _357 + _489 - mem[64]
                            mem[64] = _695 + _353 + _357 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _105
                            continue 
                        mem[_353 + _357 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _353 + _357 + _489 - mem[64]
                        mem[64] = _695 + _353 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _105
                        continue 
                    mem[_353 + _357 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _353 + _357 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _353 + _357 + _489 - mem[64]
                        mem[64] = _703 + _353 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _105
                        continue 
                    mem[_353 + _357 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _353 + _357 + _489 - mem[64]
                    mem[64] = _703 + _353 + _357 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _105
                    continue 
                mem[_353 + _357 + 32] = 0
                _493 = mem[_65]
                s = 0
                while s < _493:
                    mem[s + _353 + _357 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_493) <= _493:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _353 + _357 + _493 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _353 + _357 + _493 - mem[64]
                        mem[64] = _696 + _353 + _357 + _493 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _105
                        continue 
                    mem[_353 + _357 + _493 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _353 + _357 + _493 - mem[64]
                    mem[64] = _696 + _353 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _105
                    continue 
                mem[_353 + _357 + _493 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _353 + _357 + _493 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _353 + _357 + _493 - mem[64]
                    mem[64] = _704 + _353 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _105
                    continue 
                mem[_353 + _357 + _493 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _353 + _357 + _493 - mem[64]
                mem[64] = _704 + _353 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _105
                continue 
            mem[_208 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _106
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_208]:
                    revert with 0, 50
                mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _354 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[t + _354 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _490 = mem[_65]
                s = 0
                while s < _490:
                    mem[s + _354 + _358 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _354 + _358 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _354 + _358 + _490 - mem[64]
                        mem[64] = _697 + _354 + _358 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _105
                        continue 
                    mem[_354 + _358 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _354 + _358 + _490 - mem[64]
                    mem[64] = _697 + _354 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _105
                    continue 
                mem[_354 + _358 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _354 + _358 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _354 + _358 + _490 - mem[64]
                    mem[64] = _705 + _354 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _105
                    continue 
                mem[_354 + _358 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _354 + _358 + _490 - mem[64]
                mem[64] = _705 + _354 + _358 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _105
                continue 
            mem[_354 + _358 + 32] = 0
            _494 = mem[_65]
            s = 0
            while s < _494:
                mem[s + _354 + _358 + 32] = mem[s + _65 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _354 + _358 + _494 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _354 + _358 + _494 - mem[64]
                    mem[64] = _698 + _354 + _358 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _105
                    continue 
                mem[_354 + _358 + _494 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _354 + _358 + _494 - mem[64]
                mem[64] = _698 + _354 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _105
                continue 
            mem[_354 + _358 + _494 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _354 + _358 + _494 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _354 + _358 + _494 - mem[64]
                mem[64] = _706 + _354 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _105
                continue 
            mem[_354 + _358 + _494 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _354 + _358 + _494 - mem[64]
            mem[64] = _706 + _354 + _358 + _494 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _902
            t = _105
            continue 
        _107 = mem[64]
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) <= _109:
            return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
        mem[mem[64] + _109 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_109) + _107 + -mem[64] + 64
    u = 0
    t = mem[mem[ceil32(return_data.size) + 128] + 32]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _62
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 1
        mem[_206 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _104
        u = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _349 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _350 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 1
                mem[_361 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _366 = mem[64]
                _369 = mem[t]
                u = 0
                while u < _369:
                    mem[u + _366 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_369) <= _369:
                    _487 = mem[_206]
                    t = 0
                    while t < _487:
                        mem[t + _366 + _369 + 32] = mem[t + _206 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_361]
                        s = 0
                        while s < _689:
                            mem[s + _366 + _369 + _487 + 32] = mem[s + _361 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _366 + _369 + _487 - mem[64]
                            mem[64] = _689 + _366 + _369 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _869
                            u = _349
                            continue 
                        mem[_366 + _369 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _366 + _369 + _487 - mem[64]
                        mem[64] = _689 + _366 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _887
                        u = _349
                        continue 
                    mem[_366 + _369 + _487 + 32] = 0
                    _699 = mem[_361]
                    s = 0
                    while s < _699:
                        mem[s + _366 + _369 + _487 + 32] = mem[s + _361 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _366 + _369 + _487 - mem[64]
                        mem[64] = _699 + _366 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _870
                        u = _349
                        continue 
                    mem[_366 + _369 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _366 + _369 + _487 - mem[64]
                    mem[64] = _699 + _366 + _369 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _349
                    continue 
                mem[_366 + _369 + 32] = 0
                _491 = mem[_206]
                s = 0
                while s < _491:
                    mem[s + _366 + _369 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_491) <= _491:
                    _690 = mem[_361]
                    s = 0
                    while s < _690:
                        mem[s + _366 + _369 + _491 + 32] = mem[s + _361 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _366 + _369 + _491 - mem[64]
                        mem[64] = _690 + _366 + _369 + _491 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _349
                        continue 
                    mem[_366 + _369 + _491 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _366 + _369 + _491 - mem[64]
                    mem[64] = _690 + _366 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _889
                    u = _349
                    continue 
                mem[_366 + _369 + _491 + 32] = 0
                _700 = mem[_361]
                s = 0
                while s < _700:
                    mem[s + _366 + _369 + _491 + 32] = mem[s + _361 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _366 + _369 + _491 - mem[64]
                    mem[64] = _700 + _366 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _349
                    continue 
                mem[_366 + _369 + _491 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _366 + _369 + _491 - mem[64]
                mem[64] = _700 + _366 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _890
                u = _349
                continue 
            u = 0
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _485 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _350
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_485]:
                        revert with 0, 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _683 = mem[64]
                _687 = mem[t]
                s = 0
                while s < _687:
                    mem[s + _683 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_687) <= _687:
                    _863 = mem[_206]
                    s = 0
                    while s < _863:
                        mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_863) <= _863:
                        _983 = mem[_485]
                        s = 0
                        while s < _983:
                            mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_983) <= _983:
                            _1063 = mem[64]
                            mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                            mem[64] = _983 + _683 + _687 + _863 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1063
                            u = _349
                            continue 
                        mem[_683 + _687 + _863 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                        mem[64] = _983 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1079
                        u = _349
                        continue 
                    mem[_683 + _687 + _863 + 32] = 0
                    _991 = mem[_485]
                    s = 0
                    while s < _991:
                        mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1064 = mem[64]
                        mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                        mem[64] = _991 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1064
                        u = _349
                        continue 
                    mem[_683 + _687 + _863 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                    mem[64] = _991 + _683 + _687 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1080
                    u = _349
                    continue 
                mem[_683 + _687 + 32] = 0
                _867 = mem[_206]
                s = 0
                while s < _867:
                    mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_867) <= _867:
                    _984 = mem[_485]
                    s = 0
                    while s < _984:
                        mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1065 = mem[64]
                        mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                        mem[64] = _984 + _683 + _687 + _867 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _349
                        continue 
                    mem[_683 + _687 + _867 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                    mem[64] = _984 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _349
                    continue 
                mem[_683 + _687 + _867 + 32] = 0
                _992 = mem[_485]
                s = 0
                while s < _992:
                    mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1066 = mem[64]
                    mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                    mem[64] = _992 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _349
                    continue 
                mem[_683 + _687 + _867 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                mem[64] = _992 + _683 + _687 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _349
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _350
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_485]:
                    revert with 0, 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _684 = mem[64]
            _688 = mem[t]
            s = 0
            while s < _688:
                mem[s + _684 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_688) <= _688:
                _864 = mem[_206]
                s = 0
                while s < _864:
                    mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_864) <= _864:
                    _985 = mem[_485]
                    s = 0
                    while s < _985:
                        mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1067 = mem[64]
                        mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                        mem[64] = _985 + _684 + _688 + _864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _349
                        continue 
                    mem[_684 + _688 + _864 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                    mem[64] = _985 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _349
                    continue 
                mem[_684 + _688 + _864 + 32] = 0
                _993 = mem[_485]
                s = 0
                while s < _993:
                    mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1068 = mem[64]
                    mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                    mem[64] = _993 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _349
                    continue 
                mem[_684 + _688 + _864 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                mem[64] = _993 + _684 + _688 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _349
                continue 
            mem[_684 + _688 + 32] = 0
            _868 = mem[_206]
            s = 0
            while s < _868:
                mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                s = s + 32
                continue 
            if ceil32(_868) <= _868:
                _986 = mem[_485]
                s = 0
                while s < _986:
                    mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1069 = mem[64]
                    mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                    mem[64] = _986 + _684 + _688 + _868 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _349
                    continue 
                mem[_684 + _688 + _868 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                mem[64] = _986 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _349
                continue 
            mem[_684 + _688 + _868 + 32] = 0
            _994 = mem[_485]
            s = 0
            while s < _994:
                mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1070 = mem[64]
                mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
                mem[64] = _994 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _349
                continue 
            mem[_684 + _688 + _868 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
            mem[64] = _994 + _684 + _688 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _349
            continue 
        _355 = mem[64]
        mem[mem[64]] = 32
        _365 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_365)] = mem[t + 32 len ceil32(_365)]
        if ceil32(_365) <= _365:
            return 32, mem[mem[64] + 32 len ceil32(_365) + 32]
        mem[mem[64] + _365 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_365) + _355 + -mem[64] + 64
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _62
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _207 = mem[64]
    mem[64] = mem[64] + 64
    mem[_207] = 1
    mem[_207 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _104
    u = _57
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _351 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _352 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]:
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 1
            mem[_362 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _368 = mem[64]
            _370 = mem[t]
            u = 0
            while u < _370:
                mem[u + _368 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_370) <= _370:
                _488 = mem[_207]
                t = 0
                while t < _488:
                    mem[t + _368 + _370 + 32] = mem[t + _207 + 32]
                    t = t + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_362]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _370 + _488 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                        mem[64] = _693 + _368 + _370 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _875
                        u = _351
                        continue 
                    mem[_368 + _370 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                    mem[64] = _693 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _891
                    u = _351
                    continue 
                mem[_368 + _370 + _488 + 32] = 0
                _701 = mem[_362]
                s = 0
                while s < _701:
                    mem[s + _368 + _370 + _488 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                    mem[64] = _701 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _876
                    u = _351
                    continue 
                mem[_368 + _370 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                mem[64] = _701 + _368 + _370 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _892
                u = _351
                continue 
            mem[_368 + _370 + 32] = 0
            _492 = mem[_207]
            s = 0
            while s < _492:
                mem[s + _368 + _370 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_492) <= _492:
                _694 = mem[_362]
                s = 0
                while s < _694:
                    mem[s + _368 + _370 + _492 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                    mem[64] = _694 + _368 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _351
                    continue 
                mem[_368 + _370 + _492 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                mem[64] = _694 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _893
                u = _351
                continue 
            mem[_368 + _370 + _492 + 32] = 0
            _702 = mem[_362]
            s = 0
            while s < _702:
                mem[s + _368 + _370 + _492 + 32] = mem[s + _362 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
                mem[64] = _702 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _351
                continue 
            mem[_368 + _370 + _492 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
            mem[64] = _702 + _368 + _370 + _492 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _894
            u = _351
            continue 
        u = 0
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _352
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_486]:
                    revert with 0, 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _685 = mem[64]
            _691 = mem[t]
            s = 0
            while s < _691:
                mem[s + _685 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                _865 = mem[_207]
                s = 0
                while s < _865:
                    mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                    s = s + 32
                    continue 
                if ceil32(_865) <= _865:
                    _987 = mem[_486]
                    s = 0
                    while s < _987:
                        mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1071 = mem[64]
                        mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                        mem[64] = _987 + _685 + _691 + _865 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1071
                        u = _351
                        continue 
                    mem[_685 + _691 + _865 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                    mem[64] = _987 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1087
                    u = _351
                    continue 
                mem[_685 + _691 + _865 + 32] = 0
                _995 = mem[_486]
                s = 0
                while s < _995:
                    mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1072 = mem[64]
                    mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                    mem[64] = _995 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1072
                    u = _351
                    continue 
                mem[_685 + _691 + _865 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                mem[64] = _995 + _685 + _691 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1088
                u = _351
                continue 
            mem[_685 + _691 + 32] = 0
            _873 = mem[_207]
            s = 0
            while s < _873:
                mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_873) <= _873:
                _988 = mem[_486]
                s = 0
                while s < _988:
                    mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1073 = mem[64]
                    mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                    mem[64] = _988 + _685 + _691 + _873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1073
                    u = _351
                    continue 
                mem[_685 + _691 + _873 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                mem[64] = _988 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1089
                u = _351
                continue 
            mem[_685 + _691 + _873 + 32] = 0
            _996 = mem[_486]
            s = 0
            while s < _996:
                mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_996) <= _996:
                _1074 = mem[64]
                mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
                mem[64] = _996 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1074
                u = _351
                continue 
            mem[_685 + _691 + _873 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
            mem[64] = _996 + _685 + _691 + _873 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1090
            u = _351
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _352
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_486]:
                revert with 0, 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _686 = mem[64]
        _692 = mem[t]
        s = 0
        while s < _692:
            mem[s + _686 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_692) <= _692:
            _866 = mem[_207]
            s = 0
            while s < _866:
                mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_866) <= _866:
                _989 = mem[_486]
                s = 0
                while s < _989:
                    mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1075 = mem[64]
                    mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                    mem[64] = _989 + _686 + _692 + _866 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _351
                    continue 
                mem[_686 + _692 + _866 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                mem[64] = _989 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1091
                u = _351
                continue 
            mem[_686 + _692 + _866 + 32] = 0
            _997 = mem[_486]
            s = 0
            while s < _997:
                mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1076 = mem[64]
                mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
                mem[64] = _997 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _351
                continue 
            mem[_686 + _692 + _866 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
            mem[64] = _997 + _686 + _692 + _866 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1092
            u = _351
            continue 
        mem[_686 + _692 + 32] = 0
        _874 = mem[_207]
        s = 0
        while s < _874:
            mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
            s = s + 32
            continue 
        if ceil32(_874) <= _874:
            _990 = mem[_486]
            s = 0
            while s < _990:
                mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1077 = mem[64]
                mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
                mem[64] = _990 + _686 + _692 + _874 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1077
                u = _351
                continue 
            mem[_686 + _692 + _874 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
            mem[64] = _990 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1093
            u = _351
            continue 
        mem[_686 + _692 + _874 + 32] = 0
        _998 = mem[_486]
        s = 0
        while s < _998:
            mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
            s = s + 32
            continue 
        if ceil32(_998) <= _998:
            _1078 = mem[64]
            mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
            mem[64] = _998 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1078
            u = _351
            continue 
        mem[_686 + _692 + _874 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
        mem[64] = _998 + _686 + _692 + _874 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1094
        u = _351
        continue 
    _356 = mem[64]
    mem[mem[64]] = 32
    _367 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_367)] = mem[t + 32 len ceil32(_367)]
    if ceil32(_367) <= _367:
        return 32, mem[mem[64] + 32 len ceil32(_367) + 32]
    mem[mem[64] + _367 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_367) + _356 + -mem[64] + 64
}

function getNodesLastClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = 1
    mem[132] = arg1
    require ext_code.size(0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019)
    delegate 0x74ea1ab6c7ae2ac2cb2232c284e213c1e9f3a019.0x732a2ccf with:
         gas gas_remaining wei
        args 1, arg1
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        revert with 0, 'NOT_OWNER'
    mem[0] = arg1
    mem[32] = 5
    mem[64] = ceil32(return_data.size) + (32 * stor5[address(arg1)].field_0) + 128
    mem[ceil32(return_data.size) + 96] = stor5[address(arg1)].field_0
    s = ceil32(return_data.size) + 128
    idx = 0
    while idx < stor5[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 5)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor5[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_64] = uint255(stor5[address(arg1)][idx].field_0) * 0.5
            if bool(stor5[address(arg1)][idx].field_0):
                if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor5[address(arg1)][idx].field_0):
                    if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                        mem[_64 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                        mem[_64 + 32] = stor5[address(arg1)][idx].field_0
                        t = _64 + 32
                        u = sha3(mem[0])
                        while _64 + (uint255(stor5[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _64
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor5[address(arg1)][idx].field_1 % 128:
                mem[_59] = _64
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_64 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_59] = _64
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_64 + 32] = stor5[address(arg1)][idx].field_0
            t = _64 + 32
            u = sha3(mem[0])
            while _64 + stor5[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _64
            mem[_59 + 32] = stor5[address(arg1)][u].field_256
            mem[_59 + 64] = stor5[address(arg1)][u].field_512
            mem[_59 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(stor5[address(arg1)][idx].field_1 % 128) + 32
        mem[_66] = stor5[address(arg1)][idx].field_1 % 128
        if bool(stor5[address(arg1)][idx].field_0):
            if bool(stor5[address(arg1)][idx].field_0) == uint255(stor5[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor5[address(arg1)][idx].field_0):
                mem[_59] = _66
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor5[address(arg1)][idx].field_0) * 0.5:
                mem[_66 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
                mem[_59] = _66
                mem[_59 + 32] = stor5[address(arg1)][idx].field_256
                mem[_59 + 64] = stor5[address(arg1)][idx].field_512
                mem[_59 + 96] = stor5[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
            mem[_66 + 32] = stor5[address(arg1)][idx].field_0
            t = _66 + 32
            u = sha3(mem[0])
            while _66 + (uint255(stor5[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _66
            mem[_59 + 32] = stor5[address(arg1)][u].field_256
            mem[_59 + 64] = stor5[address(arg1)][u].field_512
            mem[_59 + 96] = stor5[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(stor5[address(arg1)][idx].field_0) == stor5[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor5[address(arg1)][idx].field_1 % 128:
            if 31 >= stor5[address(arg1)][idx].field_1 % 128:
                mem[_66 + 32] = 256 * Mask(248, 0, stor5[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 5))
                mem[_66 + 32] = stor5[address(arg1)][idx].field_0
                t = _66 + 32
                u = sha3(mem[0])
                while _66 + stor5[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _66
        mem[_59 + 32] = stor5[address(arg1)][idx].field_256
        mem[_59 + 64] = stor5[address(arg1)][idx].field_512
        mem[_59 + 96] = stor5[address(arg1)][idx].field_768
        mem[s] = _59
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[ceil32(return_data.size) + 96]
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    _62 = mem[mem[ceil32(return_data.size) + 128] + 64]
    if not mem[mem[ceil32(return_data.size) + 128] + 64]:
        _63 = mem[64]
        mem[64] = mem[64] + 64
        mem[_63] = 1
        mem[_63 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = 1
        mem[_65 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _63
        t = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _105 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _106 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 1
                mem[_108 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _110 = mem[64]
                _112 = mem[s]
                t = 0
                while t < _112:
                    mem[t + _110 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_112) <= _112:
                    _209 = mem[_65]
                    s = 0
                    while s < _209:
                        mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_209) <= _209:
                        _359 = mem[_108]
                        s = 0
                        while s < _359:
                            mem[s + _110 + _112 + _209 + 32] = mem[s + _108 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_359) <= _359:
                            _495 = mem[64]
                            mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                            mem[64] = _359 + _110 + _112 + _209 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _495
                            t = _105
                            continue 
                        mem[_110 + _112 + _209 + _359 + 32] = 0
                        _501 = mem[64]
                        mem[mem[64]] = _359 + _110 + _112 + _209 - mem[64]
                        mem[64] = _359 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _501
                        t = _105
                        continue 
                    mem[_110 + _112 + _209 + 32] = 0
                    _363 = mem[_108]
                    s = 0
                    while s < _363:
                        mem[s + _110 + _112 + _209 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_363) <= _363:
                        _496 = mem[64]
                        mem[mem[64]] = _363 + _110 + _112 + _209 - mem[64]
                        mem[64] = _363 + _110 + _112 + _209 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _496
                        t = _105
                        continue 
                    mem[_110 + _112 + _209 + _363 + 32] = 0
                    _502 = mem[64]
                    mem[mem[64]] = _363 + _110 + _112 + _209 - mem[64]
                    mem[64] = _363 + _110 + _112 + _209 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _502
                    t = _105
                    continue 
                mem[_110 + _112 + 32] = 0
                _212 = mem[_65]
                s = 0
                while s < _212:
                    mem[s + _110 + _112 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_212) <= _212:
                    _360 = mem[_108]
                    s = 0
                    while s < _360:
                        mem[s + _110 + _112 + _212 + 32] = mem[s + _108 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_360) <= _360:
                        _497 = mem[64]
                        mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                        mem[64] = _360 + _110 + _112 + _212 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _105
                        continue 
                    mem[_110 + _112 + _212 + _360 + 32] = 0
                    _503 = mem[64]
                    mem[mem[64]] = _360 + _110 + _112 + _212 - mem[64]
                    mem[64] = _360 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _503
                    t = _105
                    continue 
                mem[_110 + _112 + _212 + 32] = 0
                _364 = mem[_108]
                s = 0
                while s < _364:
                    mem[s + _110 + _112 + _212 + 32] = mem[s + _108 + 32]
                    s = s + 32
                    continue 
                if ceil32(_364) <= _364:
                    _498 = mem[64]
                    mem[mem[64]] = _364 + _110 + _112 + _212 - mem[64]
                    mem[64] = _364 + _110 + _112 + _212 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _105
                    continue 
                mem[_110 + _112 + _212 + _364 + 32] = 0
                _504 = mem[64]
                mem[mem[64]] = _364 + _110 + _112 + _212 - mem[64]
                mem[64] = _364 + _110 + _112 + _212 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _504
                t = _105
                continue 
            u = 0
            t = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _208 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _106
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_208]:
                        revert with 0, 50
                    mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _353 = mem[64]
                _357 = mem[s]
                t = 0
                while t < _357:
                    mem[t + _353 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_357) <= _357:
                    _489 = mem[_65]
                    s = 0
                    while s < _489:
                        mem[s + _353 + _357 + 32] = mem[s + _65 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_489) <= _489:
                        _695 = mem[_208]
                        s = 0
                        while s < _695:
                            mem[s + _353 + _357 + _489 + 32] = mem[s + _208 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_695) <= _695:
                            _879 = mem[64]
                            mem[mem[64]] = _695 + _353 + _357 + _489 - mem[64]
                            mem[64] = _695 + _353 + _357 + _489 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _879
                            t = _105
                            continue 
                        mem[_353 + _357 + _489 + _695 + 32] = 0
                        _895 = mem[64]
                        mem[mem[64]] = _695 + _353 + _357 + _489 - mem[64]
                        mem[64] = _695 + _353 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _895
                        t = _105
                        continue 
                    mem[_353 + _357 + _489 + 32] = 0
                    _703 = mem[_208]
                    s = 0
                    while s < _703:
                        mem[s + _353 + _357 + _489 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_703) <= _703:
                        _880 = mem[64]
                        mem[mem[64]] = _703 + _353 + _357 + _489 - mem[64]
                        mem[64] = _703 + _353 + _357 + _489 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _880
                        t = _105
                        continue 
                    mem[_353 + _357 + _489 + _703 + 32] = 0
                    _896 = mem[64]
                    mem[mem[64]] = _703 + _353 + _357 + _489 - mem[64]
                    mem[64] = _703 + _353 + _357 + _489 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _896
                    t = _105
                    continue 
                mem[_353 + _357 + 32] = 0
                _493 = mem[_65]
                s = 0
                while s < _493:
                    mem[s + _353 + _357 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_493) <= _493:
                    _696 = mem[_208]
                    s = 0
                    while s < _696:
                        mem[s + _353 + _357 + _493 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_696) <= _696:
                        _881 = mem[64]
                        mem[mem[64]] = _696 + _353 + _357 + _493 - mem[64]
                        mem[64] = _696 + _353 + _357 + _493 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _881
                        t = _105
                        continue 
                    mem[_353 + _357 + _493 + _696 + 32] = 0
                    _897 = mem[64]
                    mem[mem[64]] = _696 + _353 + _357 + _493 - mem[64]
                    mem[64] = _696 + _353 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _897
                    t = _105
                    continue 
                mem[_353 + _357 + _493 + 32] = 0
                _704 = mem[_208]
                s = 0
                while s < _704:
                    mem[s + _353 + _357 + _493 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_704) <= _704:
                    _882 = mem[64]
                    mem[mem[64]] = _704 + _353 + _357 + _493 - mem[64]
                    mem[64] = _704 + _353 + _357 + _493 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _882
                    t = _105
                    continue 
                mem[_353 + _357 + _493 + _704 + 32] = 0
                _898 = mem[64]
                mem[mem[64]] = _704 + _353 + _357 + _493 - mem[64]
                mem[64] = _704 + _353 + _357 + _493 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _898
                t = _105
                continue 
            mem[_208 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _106
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_208]:
                    revert with 0, 50
                mem[v + _208 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _354 = mem[64]
            _358 = mem[s]
            t = 0
            while t < _358:
                mem[t + _354 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_358) <= _358:
                _490 = mem[_65]
                s = 0
                while s < _490:
                    mem[s + _354 + _358 + 32] = mem[s + _65 + 32]
                    s = s + 32
                    continue 
                if ceil32(_490) <= _490:
                    _697 = mem[_208]
                    s = 0
                    while s < _697:
                        mem[s + _354 + _358 + _490 + 32] = mem[s + _208 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _883 = mem[64]
                        mem[mem[64]] = _697 + _354 + _358 + _490 - mem[64]
                        mem[64] = _697 + _354 + _358 + _490 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _105
                        continue 
                    mem[_354 + _358 + _490 + _697 + 32] = 0
                    _899 = mem[64]
                    mem[mem[64]] = _697 + _354 + _358 + _490 - mem[64]
                    mem[64] = _697 + _354 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _899
                    t = _105
                    continue 
                mem[_354 + _358 + _490 + 32] = 0
                _705 = mem[_208]
                s = 0
                while s < _705:
                    mem[s + _354 + _358 + _490 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_705) <= _705:
                    _884 = mem[64]
                    mem[mem[64]] = _705 + _354 + _358 + _490 - mem[64]
                    mem[64] = _705 + _354 + _358 + _490 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _105
                    continue 
                mem[_354 + _358 + _490 + _705 + 32] = 0
                _900 = mem[64]
                mem[mem[64]] = _705 + _354 + _358 + _490 - mem[64]
                mem[64] = _705 + _354 + _358 + _490 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _900
                t = _105
                continue 
            mem[_354 + _358 + 32] = 0
            _494 = mem[_65]
            s = 0
            while s < _494:
                mem[s + _354 + _358 + 32] = mem[s + _65 + 32]
                s = s + 32
                continue 
            if ceil32(_494) <= _494:
                _698 = mem[_208]
                s = 0
                while s < _698:
                    mem[s + _354 + _358 + _494 + 32] = mem[s + _208 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    _885 = mem[64]
                    mem[mem[64]] = _698 + _354 + _358 + _494 - mem[64]
                    mem[64] = _698 + _354 + _358 + _494 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _885
                    t = _105
                    continue 
                mem[_354 + _358 + _494 + _698 + 32] = 0
                _901 = mem[64]
                mem[mem[64]] = _698 + _354 + _358 + _494 - mem[64]
                mem[64] = _698 + _354 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _901
                t = _105
                continue 
            mem[_354 + _358 + _494 + 32] = 0
            _706 = mem[_208]
            s = 0
            while s < _706:
                mem[s + _354 + _358 + _494 + 32] = mem[s + _208 + 32]
                s = s + 32
                continue 
            if ceil32(_706) <= _706:
                _886 = mem[64]
                mem[mem[64]] = _706 + _354 + _358 + _494 - mem[64]
                mem[64] = _706 + _354 + _358 + _494 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _886
                t = _105
                continue 
            mem[_354 + _358 + _494 + _706 + 32] = 0
            _902 = mem[64]
            mem[mem[64]] = _706 + _354 + _358 + _494 - mem[64]
            mem[64] = _706 + _354 + _358 + _494 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _902
            t = _105
            continue 
        _107 = mem[64]
        mem[mem[64]] = 32
        _109 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_109)] = mem[s + 32 len ceil32(_109)]
        if ceil32(_109) <= _109:
            return 32, mem[mem[64] + 32 len ceil32(_109) + 32]
        mem[mem[64] + _109 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_109) + _107 + -mem[64] + 64
    u = 0
    t = mem[mem[ceil32(return_data.size) + 128] + 64]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _104 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _62
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_104]:
                revert with 0, 50
            mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 1
        mem[_206 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _104
        u = _57
        while idx < _56:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _349 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _350 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 1
                mem[_361 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _366 = mem[64]
                _369 = mem[t]
                u = 0
                while u < _369:
                    mem[u + _366 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_369) <= _369:
                    _487 = mem[_206]
                    t = 0
                    while t < _487:
                        mem[t + _366 + _369 + 32] = mem[t + _206 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_487) <= _487:
                        _689 = mem[_361]
                        s = 0
                        while s < _689:
                            mem[s + _366 + _369 + _487 + 32] = mem[s + _361 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_689) <= _689:
                            _869 = mem[64]
                            mem[mem[64]] = _689 + _366 + _369 + _487 - mem[64]
                            mem[64] = _689 + _366 + _369 + _487 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _869
                            u = _349
                            continue 
                        mem[_366 + _369 + _487 + _689 + 32] = 0
                        _887 = mem[64]
                        mem[mem[64]] = _689 + _366 + _369 + _487 - mem[64]
                        mem[64] = _689 + _366 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _887
                        u = _349
                        continue 
                    mem[_366 + _369 + _487 + 32] = 0
                    _699 = mem[_361]
                    s = 0
                    while s < _699:
                        mem[s + _366 + _369 + _487 + 32] = mem[s + _361 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_699) <= _699:
                        _870 = mem[64]
                        mem[mem[64]] = _699 + _366 + _369 + _487 - mem[64]
                        mem[64] = _699 + _366 + _369 + _487 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _870
                        u = _349
                        continue 
                    mem[_366 + _369 + _487 + _699 + 32] = 0
                    _888 = mem[64]
                    mem[mem[64]] = _699 + _366 + _369 + _487 - mem[64]
                    mem[64] = _699 + _366 + _369 + _487 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _888
                    u = _349
                    continue 
                mem[_366 + _369 + 32] = 0
                _491 = mem[_206]
                s = 0
                while s < _491:
                    mem[s + _366 + _369 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_491) <= _491:
                    _690 = mem[_361]
                    s = 0
                    while s < _690:
                        mem[s + _366 + _369 + _491 + 32] = mem[s + _361 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_690) <= _690:
                        _871 = mem[64]
                        mem[mem[64]] = _690 + _366 + _369 + _491 - mem[64]
                        mem[64] = _690 + _366 + _369 + _491 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _871
                        u = _349
                        continue 
                    mem[_366 + _369 + _491 + _690 + 32] = 0
                    _889 = mem[64]
                    mem[mem[64]] = _690 + _366 + _369 + _491 - mem[64]
                    mem[64] = _690 + _366 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _889
                    u = _349
                    continue 
                mem[_366 + _369 + _491 + 32] = 0
                _700 = mem[_361]
                s = 0
                while s < _700:
                    mem[s + _366 + _369 + _491 + 32] = mem[s + _361 + 32]
                    s = s + 32
                    continue 
                if ceil32(_700) <= _700:
                    _872 = mem[64]
                    mem[mem[64]] = _700 + _366 + _369 + _491 - mem[64]
                    mem[64] = _700 + _366 + _369 + _491 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _872
                    u = _349
                    continue 
                mem[_366 + _369 + _491 + _700 + 32] = 0
                _890 = mem[64]
                mem[mem[64]] = _700 + _366 + _369 + _491 - mem[64]
                mem[64] = _700 + _366 + _369 + _491 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _890
                u = _349
                continue 
            u = 0
            s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _485 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _350
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_485]:
                        revert with 0, 50
                    mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _683 = mem[64]
                _687 = mem[t]
                s = 0
                while s < _687:
                    mem[s + _683 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_687) <= _687:
                    _863 = mem[_206]
                    s = 0
                    while s < _863:
                        mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_863) <= _863:
                        _983 = mem[_485]
                        s = 0
                        while s < _983:
                            mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_983) <= _983:
                            _1063 = mem[64]
                            mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                            mem[64] = _983 + _683 + _687 + _863 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1063
                            u = _349
                            continue 
                        mem[_683 + _687 + _863 + _983 + 32] = 0
                        _1079 = mem[64]
                        mem[mem[64]] = _983 + _683 + _687 + _863 - mem[64]
                        mem[64] = _983 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1079
                        u = _349
                        continue 
                    mem[_683 + _687 + _863 + 32] = 0
                    _991 = mem[_485]
                    s = 0
                    while s < _991:
                        mem[s + _683 + _687 + _863 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_991) <= _991:
                        _1064 = mem[64]
                        mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                        mem[64] = _991 + _683 + _687 + _863 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1064
                        u = _349
                        continue 
                    mem[_683 + _687 + _863 + _991 + 32] = 0
                    _1080 = mem[64]
                    mem[mem[64]] = _991 + _683 + _687 + _863 - mem[64]
                    mem[64] = _991 + _683 + _687 + _863 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1080
                    u = _349
                    continue 
                mem[_683 + _687 + 32] = 0
                _867 = mem[_206]
                s = 0
                while s < _867:
                    mem[s + _683 + _687 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_867) <= _867:
                    _984 = mem[_485]
                    s = 0
                    while s < _984:
                        mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_984) <= _984:
                        _1065 = mem[64]
                        mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                        mem[64] = _984 + _683 + _687 + _867 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1065
                        u = _349
                        continue 
                    mem[_683 + _687 + _867 + _984 + 32] = 0
                    _1081 = mem[64]
                    mem[mem[64]] = _984 + _683 + _687 + _867 - mem[64]
                    mem[64] = _984 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1081
                    u = _349
                    continue 
                mem[_683 + _687 + _867 + 32] = 0
                _992 = mem[_485]
                s = 0
                while s < _992:
                    mem[s + _683 + _687 + _867 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    _1066 = mem[64]
                    mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                    mem[64] = _992 + _683 + _687 + _867 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1066
                    u = _349
                    continue 
                mem[_683 + _687 + _867 + _992 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _992 + _683 + _687 + _867 - mem[64]
                mem[64] = _992 + _683 + _687 + _867 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1082
                u = _349
                continue 
            mem[_485 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _350
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_485]:
                    revert with 0, 50
                mem[v + _485 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _684 = mem[64]
            _688 = mem[t]
            s = 0
            while s < _688:
                mem[s + _684 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_688) <= _688:
                _864 = mem[_206]
                s = 0
                while s < _864:
                    mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                    s = s + 32
                    continue 
                if ceil32(_864) <= _864:
                    _985 = mem[_485]
                    s = 0
                    while s < _985:
                        mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1067 = mem[64]
                        mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                        mem[64] = _985 + _684 + _688 + _864 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1067
                        u = _349
                        continue 
                    mem[_684 + _688 + _864 + _985 + 32] = 0
                    _1083 = mem[64]
                    mem[mem[64]] = _985 + _684 + _688 + _864 - mem[64]
                    mem[64] = _985 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1083
                    u = _349
                    continue 
                mem[_684 + _688 + _864 + 32] = 0
                _993 = mem[_485]
                s = 0
                while s < _993:
                    mem[s + _684 + _688 + _864 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_993) <= _993:
                    _1068 = mem[64]
                    mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                    mem[64] = _993 + _684 + _688 + _864 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1068
                    u = _349
                    continue 
                mem[_684 + _688 + _864 + _993 + 32] = 0
                _1084 = mem[64]
                mem[mem[64]] = _993 + _684 + _688 + _864 - mem[64]
                mem[64] = _993 + _684 + _688 + _864 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1084
                u = _349
                continue 
            mem[_684 + _688 + 32] = 0
            _868 = mem[_206]
            s = 0
            while s < _868:
                mem[s + _684 + _688 + 32] = mem[s + _206 + 32]
                s = s + 32
                continue 
            if ceil32(_868) <= _868:
                _986 = mem[_485]
                s = 0
                while s < _986:
                    mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1069 = mem[64]
                    mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                    mem[64] = _986 + _684 + _688 + _868 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1069
                    u = _349
                    continue 
                mem[_684 + _688 + _868 + _986 + 32] = 0
                _1085 = mem[64]
                mem[mem[64]] = _986 + _684 + _688 + _868 - mem[64]
                mem[64] = _986 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1085
                u = _349
                continue 
            mem[_684 + _688 + _868 + 32] = 0
            _994 = mem[_485]
            s = 0
            while s < _994:
                mem[s + _684 + _688 + _868 + 32] = mem[s + _485 + 32]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                _1070 = mem[64]
                mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
                mem[64] = _994 + _684 + _688 + _868 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1070
                u = _349
                continue 
            mem[_684 + _688 + _868 + _994 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _994 + _684 + _688 + _868 - mem[64]
            mem[64] = _994 + _684 + _688 + _868 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1086
            u = _349
            continue 
        _355 = mem[64]
        mem[mem[64]] = 32
        _365 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_365)] = mem[t + 32 len ceil32(_365)]
        if ceil32(_365) <= _365:
            return 32, mem[mem[64] + 32 len ceil32(_365) + 32]
        mem[mem[64] + _365 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_365) + _355 + -mem[64] + 64
    mem[_104 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _62
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_104]:
            revert with 0, 50
        mem[s + _104 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _207 = mem[64]
    mem[64] = mem[64] + 64
    mem[_207] = 1
    mem[_207 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _104
    u = _57
    while idx < _56:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _351 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _352 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 1
            mem[_362 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _368 = mem[64]
            _370 = mem[t]
            u = 0
            while u < _370:
                mem[u + _368 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_370) <= _370:
                _488 = mem[_207]
                t = 0
                while t < _488:
                    mem[t + _368 + _370 + 32] = mem[t + _207 + 32]
                    t = t + 32
                    continue 
                if ceil32(_488) <= _488:
                    _693 = mem[_362]
                    s = 0
                    while s < _693:
                        mem[s + _368 + _370 + _488 + 32] = mem[s + _362 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_693) <= _693:
                        _875 = mem[64]
                        mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                        mem[64] = _693 + _368 + _370 + _488 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _875
                        u = _351
                        continue 
                    mem[_368 + _370 + _488 + _693 + 32] = 0
                    _891 = mem[64]
                    mem[mem[64]] = _693 + _368 + _370 + _488 - mem[64]
                    mem[64] = _693 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _891
                    u = _351
                    continue 
                mem[_368 + _370 + _488 + 32] = 0
                _701 = mem[_362]
                s = 0
                while s < _701:
                    mem[s + _368 + _370 + _488 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_701) <= _701:
                    _876 = mem[64]
                    mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                    mem[64] = _701 + _368 + _370 + _488 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _876
                    u = _351
                    continue 
                mem[_368 + _370 + _488 + _701 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _701 + _368 + _370 + _488 - mem[64]
                mem[64] = _701 + _368 + _370 + _488 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _892
                u = _351
                continue 
            mem[_368 + _370 + 32] = 0
            _492 = mem[_207]
            s = 0
            while s < _492:
                mem[s + _368 + _370 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_492) <= _492:
                _694 = mem[_362]
                s = 0
                while s < _694:
                    mem[s + _368 + _370 + _492 + 32] = mem[s + _362 + 32]
                    s = s + 32
                    continue 
                if ceil32(_694) <= _694:
                    _877 = mem[64]
                    mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                    mem[64] = _694 + _368 + _370 + _492 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _351
                    continue 
                mem[_368 + _370 + _492 + _694 + 32] = 0
                _893 = mem[64]
                mem[mem[64]] = _694 + _368 + _370 + _492 - mem[64]
                mem[64] = _694 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _893
                u = _351
                continue 
            mem[_368 + _370 + _492 + 32] = 0
            _702 = mem[_362]
            s = 0
            while s < _702:
                mem[s + _368 + _370 + _492 + 32] = mem[s + _362 + 32]
                s = s + 32
                continue 
            if ceil32(_702) <= _702:
                _878 = mem[64]
                mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
                mem[64] = _702 + _368 + _370 + _492 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _351
                continue 
            mem[_368 + _370 + _492 + _702 + 32] = 0
            _894 = mem[64]
            mem[mem[64]] = _702 + _368 + _370 + _492 - mem[64]
            mem[64] = _702 + _368 + _370 + _492 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _894
            u = _351
            continue 
        u = 0
        s = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _486 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _352
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_486]:
                    revert with 0, 50
                mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _685 = mem[64]
            _691 = mem[t]
            s = 0
            while s < _691:
                mem[s + _685 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_691) <= _691:
                _865 = mem[_207]
                s = 0
                while s < _865:
                    mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                    s = s + 32
                    continue 
                if ceil32(_865) <= _865:
                    _987 = mem[_486]
                    s = 0
                    while s < _987:
                        mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_987) <= _987:
                        _1071 = mem[64]
                        mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                        mem[64] = _987 + _685 + _691 + _865 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1071
                        u = _351
                        continue 
                    mem[_685 + _691 + _865 + _987 + 32] = 0
                    _1087 = mem[64]
                    mem[mem[64]] = _987 + _685 + _691 + _865 - mem[64]
                    mem[64] = _987 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1087
                    u = _351
                    continue 
                mem[_685 + _691 + _865 + 32] = 0
                _995 = mem[_486]
                s = 0
                while s < _995:
                    mem[s + _685 + _691 + _865 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_995) <= _995:
                    _1072 = mem[64]
                    mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                    mem[64] = _995 + _685 + _691 + _865 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1072
                    u = _351
                    continue 
                mem[_685 + _691 + _865 + _995 + 32] = 0
                _1088 = mem[64]
                mem[mem[64]] = _995 + _685 + _691 + _865 - mem[64]
                mem[64] = _995 + _685 + _691 + _865 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1088
                u = _351
                continue 
            mem[_685 + _691 + 32] = 0
            _873 = mem[_207]
            s = 0
            while s < _873:
                mem[s + _685 + _691 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_873) <= _873:
                _988 = mem[_486]
                s = 0
                while s < _988:
                    mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_988) <= _988:
                    _1073 = mem[64]
                    mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                    mem[64] = _988 + _685 + _691 + _873 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1073
                    u = _351
                    continue 
                mem[_685 + _691 + _873 + _988 + 32] = 0
                _1089 = mem[64]
                mem[mem[64]] = _988 + _685 + _691 + _873 - mem[64]
                mem[64] = _988 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1089
                u = _351
                continue 
            mem[_685 + _691 + _873 + 32] = 0
            _996 = mem[_486]
            s = 0
            while s < _996:
                mem[s + _685 + _691 + _873 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_996) <= _996:
                _1074 = mem[64]
                mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
                mem[64] = _996 + _685 + _691 + _873 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1074
                u = _351
                continue 
            mem[_685 + _691 + _873 + _996 + 32] = 0
            _1090 = mem[64]
            mem[mem[64]] = _996 + _685 + _691 + _873 - mem[64]
            mem[64] = _996 + _685 + _691 + _873 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1090
            u = _351
            continue 
        mem[_486 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _352
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_486]:
                revert with 0, 50
            mem[v + _486 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _686 = mem[64]
        _692 = mem[t]
        s = 0
        while s < _692:
            mem[s + _686 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_692) <= _692:
            _866 = mem[_207]
            s = 0
            while s < _866:
                mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
                s = s + 32
                continue 
            if ceil32(_866) <= _866:
                _989 = mem[_486]
                s = 0
                while s < _989:
                    mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                    s = s + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1075 = mem[64]
                    mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                    mem[64] = _989 + _686 + _692 + _866 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _351
                    continue 
                mem[_686 + _692 + _866 + _989 + 32] = 0
                _1091 = mem[64]
                mem[mem[64]] = _989 + _686 + _692 + _866 - mem[64]
                mem[64] = _989 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1091
                u = _351
                continue 
            mem[_686 + _692 + _866 + 32] = 0
            _997 = mem[_486]
            s = 0
            while s < _997:
                mem[s + _686 + _692 + _866 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_997) <= _997:
                _1076 = mem[64]
                mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
                mem[64] = _997 + _686 + _692 + _866 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _351
                continue 
            mem[_686 + _692 + _866 + _997 + 32] = 0
            _1092 = mem[64]
            mem[mem[64]] = _997 + _686 + _692 + _866 - mem[64]
            mem[64] = _997 + _686 + _692 + _866 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1092
            u = _351
            continue 
        mem[_686 + _692 + 32] = 0
        _874 = mem[_207]
        s = 0
        while s < _874:
            mem[s + _686 + _692 + 32] = mem[s + _207 + 32]
            s = s + 32
            continue 
        if ceil32(_874) <= _874:
            _990 = mem[_486]
            s = 0
            while s < _990:
                mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
                s = s + 32
                continue 
            if ceil32(_990) <= _990:
                _1077 = mem[64]
                mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
                mem[64] = _990 + _686 + _692 + _874 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1077
                u = _351
                continue 
            mem[_686 + _692 + _874 + _990 + 32] = 0
            _1093 = mem[64]
            mem[mem[64]] = _990 + _686 + _692 + _874 - mem[64]
            mem[64] = _990 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1093
            u = _351
            continue 
        mem[_686 + _692 + _874 + 32] = 0
        _998 = mem[_486]
        s = 0
        while s < _998:
            mem[s + _686 + _692 + _874 + 32] = mem[s + _486 + 32]
            s = s + 32
            continue 
        if ceil32(_998) <= _998:
            _1078 = mem[64]
            mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
            mem[64] = _998 + _686 + _692 + _874 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1078
            u = _351
            continue 
        mem[_686 + _692 + _874 + _998 + 32] = 0
        _1094 = mem[64]
        mem[mem[64]] = _998 + _686 + _692 + _874 - mem[64]
        mem[64] = _998 + _686 + _692 + _874 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = _1094
        u = _351
        continue 
    _356 = mem[64]
    mem[mem[64]] = 32
    _367 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_367)] = mem[t + 32 len ceil32(_367)]
    if ceil32(_367) <= _367:
        return 32, mem[mem[64] + 32 len ceil32(_367) + 32]
    mem[mem[64] + _367 + 64] = 0
    return memory
      from mem[64]
       len ceil32(_367) + _356 + -mem[64] + 64
}



}
