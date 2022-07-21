contract main {




// =====================  Runtime code  =====================


address owner;
array of struct nodeBalanceOf;
array of struct stor2;
mapping of uint256 stor3;
uint256 sub_ea1e9e40;
uint256 sub_fa6a6596;
uint256 sub_d58a20be;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 sub_88776ccd;
uint256 sub_c999fea3;
uint256 stor14;
uint256 stor15;
uint256 sub_0886294f;
uint256 sub_8e340c9d;
uint256 stor18;
uint256 sub_5b7c132f;
uint8 sub_7376058f;
mapping of uint8 stor21;

function sub_0886294f(?) payable {
    return sub_0886294f
}

function nodeBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor21[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized access'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    return nodeBalanceOf[address(arg1)].field_0
}

function sub_5b2c2f21(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return stor2.length
}

function sub_5b7c132f(?) payable {
    return sub_5b7c132f
}

function sub_71350be9(?) payable {
    if not msg.sender:
        revert with 0, 'ZERO ADDRESS'
    return nodeBalanceOf[address(msg.sender)].field_0
}

function sub_7376058f(?) payable {
    return bool(sub_7376058f)
}

function sub_88776ccd(?) payable {
    return sub_88776ccd
}

function owner() payable {
    return owner
}

function sub_8e340c9d(?) payable {
    return sub_8e340c9d
}

function sub_c999fea3(?) payable {
    return sub_c999fea3
}

function sub_d58a20be(?) payable {
    return sub_d58a20be
}

function sub_ea1e9e40(?) payable {
    return sub_ea1e9e40
}

function sub_fa6a6596(?) payable {
    return sub_fa6a6596
}

function _fallback() payable {
    revert
}

function sub_5a8a9dd8(?) payable {
    return stor14, stor15, sub_0886294f, sub_8e340c9d, stor18
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_296cbbb0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7376058f = uint8(bool(arg1))
    sub_5b7c132f = arg2
}

function setAuthorizedContract(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    stor21[address(arg1)] = uint8(arg2)
}

function sub_eb61dda3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
    stor15 = arg2
    sub_8e340c9d = block.timestamp
    stor18 = arg3
    sub_0886294f = arg4
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

function sub_44714bbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeBalanceOf[address(arg1)].field_0 = 0
    idx = 0
    while 3 * nodeBalanceOf[address(arg1)].field_0 > idx:
        nodeBalanceOf[address(arg1)][idx].field_0 = 0
        nodeBalanceOf[address(arg1)][idx].field_256 = 0
        nodeBalanceOf[address(arg1)][idx].field_512 = 0
        idx = idx + 3
        continue 
}

function sub_0ea62bff(?) payable {
    if not stor14:
        revert with 'NH{q', 18
    if not stor14:
        revert with 'NH{q', 18
    if not sub_c999fea3 % stor14:
        if sub_c999fea3 / stor14 > -1:
            revert with 'NH{q', 17
        if sub_c999fea3 / stor14 >= stor15:
            return (sub_c999fea3 / stor14)
    else:
        if sub_c999fea3 / stor14 > -2:
            revert with 'NH{q', 17
        if (sub_c999fea3 / stor14) + 1 >= stor15:
            return ((sub_c999fea3 / stor14) + 1)
    return stor15
}

function updateReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot have a reward lower than 0 or higher than 5'
    if arg1 > 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot have a reward lower than 0 or higher than 5'
    sub_ea1e9e40 = arg1
    sub_fa6a6596 = arg2
    if not arg2:
        revert with 'NH{q', 18
    sub_d58a20be = 24 * 3600 / arg2
}

function sub_cb157434(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if arg2 and 10^18 > -1 / arg2:
        revert with 'NH{q', 17
    if arg3 and 10^18 > -1 / arg3:
        revert with 'NH{q', 17
    if arg4 and 10^18 > -1 / arg4:
        revert with 'NH{q', 17
    if arg5 and 10^18 > -1 / arg5:
        revert with 'NH{q', 17
    stor7 = 10^18 * arg1
    stor8 = 10^18 * arg2
    stor9 = 10^18 * arg3
    stor10 = 10^18 * arg4
    stor11 = 10^18 * arg5
    return 1
}

function nodePrice() payable {
    if not msg.sender:
        revert with 0, 'ZERO address'
    if nodeBalanceOf[address(msg.sender)].field_0 <= 10:
        return stor7
    if nodeBalanceOf[address(msg.sender)].field_0 > 10:
        if nodeBalanceOf[address(msg.sender)].field_0 <= 20:
            return stor8
    if nodeBalanceOf[address(msg.sender)].field_0 > 20:
        if nodeBalanceOf[address(msg.sender)].field_0 <= 40:
            return stor9
    if nodeBalanceOf[address(msg.sender)].field_0 > 40:
        if nodeBalanceOf[address(msg.sender)].field_0 <= 80:
            return stor10
    if nodeBalanceOf[address(msg.sender)].field_0 <= 80:
        return 10000 * 10^18
    if nodeBalanceOf[address(msg.sender)].field_0 > 100:
        return 10000 * 10^18
    return stor11
}

function sub_11ac8e6a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'ZERO address'
    if nodeBalanceOf[address(arg1)].field_0 <= 10:
        return stor7
    if nodeBalanceOf[address(arg1)].field_0 > 10:
        if nodeBalanceOf[address(arg1)].field_0 <= 20:
            return stor8
    if nodeBalanceOf[address(arg1)].field_0 > 20:
        if nodeBalanceOf[address(arg1)].field_0 <= 40:
            return stor9
    if nodeBalanceOf[address(arg1)].field_0 > 40:
        if nodeBalanceOf[address(arg1)].field_0 <= 80:
            return stor10
    if nodeBalanceOf[address(arg1)].field_0 <= 80:
        return 10000 * 10^18
    if nodeBalanceOf[address(arg1)].field_0 > 100:
        return 10000 * 10^18
    return stor11
}

function sub_61f42e37(?) payable {
    if not msg.sender:
        revert with 0, 'ZERO ADDRESS'
    idx = 0
    s = 0
    while idx < nodeBalanceOf[address(msg.sender)].field_0:
        if idx >= nodeBalanceOf[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        if block.timestamp < nodeBalanceOf[address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        if block.timestamp - nodeBalanceOf[address(msg.sender)][idx].field_512 >= 24 * 3600:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = s
            continue 
        if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_d223ed46(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'ZERO ADDRESS'
    idx = 0
    s = 0
    while idx < nodeBalanceOf[address(arg1)].field_0:
        if idx >= nodeBalanceOf[address(arg1)].field_0:
            revert with 'NH{q', 50
        if block.timestamp < nodeBalanceOf[address(arg1)][idx].field_512:
            revert with 'NH{q', 17
        if block.timestamp - nodeBalanceOf[address(arg1)][idx].field_512 >= 24 * 3600:
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            s = s
            continue 
        if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[0] = address(arg1)
        mem[32] = 1
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function sub_39f4d868(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if bool(stor21[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized access'
    if arg2:
        if not sub_88776ccd - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        sub_88776ccd++
    if not sub_c999fea3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    sub_c999fea3++
    nodeBalanceOf[address(arg1)].field_0++
    nodeBalanceOf[address(arg1)][nodeBalanceOf[address(arg1)].field_0].field_0 = sub_c999fea3
    nodeBalanceOf[address(arg1)][nodeBalanceOf[address(arg1)].field_0].field_256 = block.timestamp
    nodeBalanceOf[address(arg1)][nodeBalanceOf[address(arg1)].field_0].field_512 = block.timestamp
    if not stor3[address(arg1)]:
        stor2.length++
        address(stor2[stor2.length].field_0) = address(arg1)
        Mask(96, 0, stor2[stor2.length].field_160) = 0
        stor3[address(arg1)] = stor2.length
    emit 0x527bf1ad: sub_c999fea3, address(arg1), nodeBalanceOf[address(arg1)].field_0
    return 1
}

function availableRewards() payable {
    if not msg.sender:
        revert with 0, '0'
    if var32002 >= var32001:
        return 0
    mem[32] = 1
    if var36001 >= nodeBalanceOf[address(msg.sender)].field_0:
        revert with 'NH{q', 50
    mem[64] = 192
    mem[96] = stor[(3 * var38001) + sha3(var38002)]
    mem[128] = stor[(3 * var38001) + sha3(var38002) + 1]
    mem[160] = stor[(3 * var38001) + sha3(var38002) + 2]
    if not stor[(3 * var38001) + sha3(var38002) + 1]:
        if var40001:
            # nil
        else:
            if block.timestamp < var108001:
                revert with 'NH{q', 17
            # nil
    else:
        if var41001:
            # nil
        else:
            if block.timestamp < mem[var41002 + 32]:
                revert with 'NH{q', 17
            if stor7 / 1000 and sub_ea1e9e40 > -1 / stor7 / 1000:
                revert with 'NH{q', 17
            if not sub_d58a20be:
                revert with 'NH{q', 18
            if not sub_fa6a6596:
                revert with 'NH{q', 18
            if block.timestamp - mem[var41002 + 32] / sub_fa6a6596 and stor7 / 1000 * sub_ea1e9e40 / sub_d58a20be > -1 / block.timestamp - mem[var41002 + 32] / sub_fa6a6596:
                revert with 'NH{q', 17
            if var110003 > -var110001 - 1:
                revert with 'NH{q', 17
            # nil
}

function sub_3cb83972(?) payable {
    if block.timestamp < sub_8e340c9d:
        revert with 'NH{q', 17
    if not sub_0886294f:
        revert with 'NH{q', 18
    if not sub_0886294f:
        revert with 'NH{q', 18
    if not block.timestamp - sub_8e340c9d % sub_0886294f:
        if block.timestamp - sub_8e340c9d / sub_0886294f > -1:
            revert with 'NH{q', 17
        if block.timestamp - sub_8e340c9d / sub_0886294f < 1:
            revert with 'NH{q', 17
        if sub_0886294f and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / sub_0886294f:
            revert with 'NH{q', 17
        if sub_8e340c9d > sub_0886294f + (-1 * block.timestamp - sub_8e340c9d / sub_0886294f * sub_0886294f) - 1:
            revert with 'NH{q', 17
        return (sub_8e340c9d - sub_0886294f + (block.timestamp - sub_8e340c9d / sub_0886294f * sub_0886294f))
    if block.timestamp - sub_8e340c9d / sub_0886294f > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_8e340c9d / sub_0886294f) + 1 < 1:
        revert with 'NH{q', 17
    if sub_0886294f and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / sub_0886294f:
        revert with 'NH{q', 17
    if sub_8e340c9d > (-1 * sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
        revert with 'NH{q', 17
    return (sub_8e340c9d + (sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
}

function sub_8d807fad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor21[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized access'
    if not address(arg1):
        revert with 0, 'ZERO ADDRESS'
    if nodeBalanceOf[address(arg1)].field_0 <= 0:
        revert with 0, 'No nodes available'
    if var48002 >= var48001:
        return 0
    mem[32] = 1
    if var52001 >= nodeBalanceOf[address(arg1)].field_0:
        revert with 'NH{q', 50
    mem[64] = 192
    mem[96] = stor[(3 * var54001) + sha3(var54002)]
    mem[128] = stor[(3 * var54001) + sha3(var54002) + 1]
    mem[160] = stor[(3 * var54001) + sha3(var54002) + 2]
    if not stor[(3 * var54001) + sha3(var54002) + 1]:
        if var56001:
            # nil
        else:
            if block.timestamp < var124001:
                revert with 'NH{q', 17
            # nil
    else:
        if var57001:
            # nil
        else:
            if block.timestamp < mem[var57002 + 32]:
                revert with 'NH{q', 17
            if stor7 / 1000 and sub_ea1e9e40 > -1 / stor7 / 1000:
                revert with 'NH{q', 17
            if not sub_d58a20be:
                revert with 'NH{q', 18
            if not sub_fa6a6596:
                revert with 'NH{q', 18
            if block.timestamp - mem[var57002 + 32] / sub_fa6a6596 and stor7 / 1000 * sub_ea1e9e40 / sub_d58a20be > -1 / block.timestamp - mem[var57002 + 32] / sub_fa6a6596:
                revert with 'NH{q', 17
            if var126003 > -var126001 - 1:
                revert with 'NH{q', 17
            # nil
}

function sub_bc86995e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if var63002 >= arg1 + arg2:
            mem[(32 * arg2) + 128] = 32
            mem[(32 * arg2) + 160] = arg2
            idx = 0
            s = 128
            t = (32 * arg2) + 192
            while idx < mem[96]:
                _193 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_193 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len (98 * arg2) + -mem[64] + 192
        if var69001 < stor2.length:
            mem[64] = (32 * arg2) + 192
            mem[(32 * arg2) + 128] = address(var75001)
            mem[0] = address(var77001)
            mem[32] = 1
            mem[var77003] = nodeBalanceOf[address(var77001)].field_0
            s = nodeBalanceOf[address(var77001)].field_0
            t = var77003
            u = var77004
            v = var77006
            idx = var77007
            while idx < arg2:
                mem[(32 * idx) + 128] = u
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if idx + 1 >= arg1 + arg2:
                    _355 = mem[64]
                    mem[mem[64]] = 32
                    _358 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    u = 128
                    v = mem[64] + 64
                    while idx < _358:
                        _373 = mem[u]
                        mem[v] = mem[mem[u] + 12 len 20]
                        mem[v + 32] = mem[_373 + 32]
                        mem[t] = s
                        idx = idx + 1
                        u = u + 32
                        v = v + 64
                        continue 
                    return memory
                      from mem[64]
                       len _355 + (64 * _358) + -mem[64] + 64
                if idx + 1 >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = address(stor2[idx].field_256)
                mem[0] = address(stor2[idx].field_256)
                mem[32] = 1
                mem[_359 + 32] = nodeBalanceOf[address(stor2[idx].field_256)].field_0
                s = nodeBalanceOf[address(stor2[idx].field_256)].field_0
                t = _359 + 32
                u = _359
                v = stor2[idx].field_256
                idx = idx + 1
                continue 
    else:
        mem[64] = (32 * arg2) + 192
        mem[(32 * arg2) + 128] = 0
        mem[(32 * arg2) + 160] = 0
        mem[var30001] = (32 * arg2) + 128
        s = var30001
        idx = var30002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[s + 32] = (32 * arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg1 > -arg2 - 1:
            revert with 'NH{q', 17
        if var70002 >= arg1 + arg2:
            _218 = mem[64]
            mem[mem[64]] = 32
            _222 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _222:
                _244 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_244 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _218 + (64 * _222) + -mem[64] + 64
        if var76001 < stor2.length:
            mem[0] = 2
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = address(var82001)
            mem[0] = address(var84001)
            mem[32] = 1
            mem[var84003] = nodeBalanceOf[address(var84001)].field_0
            _387 = mem[96]
            s = nodeBalanceOf[address(var84001)].field_0
            t = var84003
            u = var84004
            v = var84006
            idx = var84007
            while idx < _387:
                mem[(32 * idx) + 128] = u
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if arg1 > -arg2 - 1:
                    revert with 'NH{q', 17
                if idx + 1 >= arg1 + arg2:
                    _388 = mem[64]
                    mem[mem[64]] = 32
                    _390 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    u = 128
                    v = mem[64] + 64
                    while idx < _390:
                        _397 = mem[u]
                        mem[v] = mem[mem[u] + 12 len 20]
                        mem[v + 32] = mem[_397 + 32]
                        mem[t] = s
                        idx = idx + 1
                        u = u + 32
                        v = v + 64
                        continue 
                    return memory
                      from mem[64]
                       len _388 + (64 * _390) + -mem[64] + 64
                if idx + 1 >= stor2.length:
                    revert with 'NH{q', 50
                mem[0] = 2
                _391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_391] = address(stor2[idx].field_256)
                mem[0] = address(stor2[idx].field_256)
                mem[32] = 1
                mem[_391 + 32] = nodeBalanceOf[address(stor2[idx].field_256)].field_0
                s = nodeBalanceOf[address(stor2[idx].field_256)].field_0
                t = _391 + 32
                u = _391
                v = stor2[idx].field_256
                idx = idx + 1
                continue 
    revert with 'NH{q', 50
}

function sub_23eea5e0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == bool(cd[68])
    require cd[100] == bool(cd[100])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Uneven lengths'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if cd[((32 * idx) + cd[36] + 36)] <= 5:
            s = 0
            while s < cd[((32 * idx) + cd[36] + 36)]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not cd[68]:
                    _173 = mem[64]
                    mem[64] = mem[64] + 96
                    if not sub_c999fea3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_c999fea3++
                    mem[_173] = sub_c999fea3
                    mem[_173 + 32] = block.timestamp
                    mem[_173 + 64] = block.timestamp
                else:
                    if not sub_88776ccd - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_88776ccd++
                    _185 = mem[64]
                    mem[64] = mem[64] + 96
                    if not sub_c999fea3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_c999fea3++
                    mem[_185] = sub_c999fea3
                    mem[_185 + 32] = block.timestamp
                    mem[_185 + 64] = block.timestamp
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0++
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = sub_c999fea3
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_256 = block.timestamp
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_512 = block.timestamp
                if not stor3[address(cd[((32 * idx) + cd[4] + 36)])]:
                    stor2.length++
                    address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
                    Mask(96, 0, stor2[stor2.length].field_160) = 0
                    stor3[address(cd[((32 * idx) + cd[4] + 36)])] = stor2.length
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 1
                mem[mem[64]] = sub_c999fea3
                mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                emit 0x527bf1ad: sub_c999fea3, address(cd[((32 * idx) + cd[4] + 36)]), nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                if cd[100]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 1
                    if s >= nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                    nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][s].field_512 = 0
                if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        else:
            s = 0
            while s < 5:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                if not cd[68]:
                    _174 = mem[64]
                    mem[64] = mem[64] + 96
                    if not sub_c999fea3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_c999fea3++
                    mem[_174] = sub_c999fea3
                    mem[_174 + 32] = block.timestamp
                    mem[_174 + 64] = block.timestamp
                else:
                    if not sub_88776ccd - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_88776ccd++
                    _186 = mem[64]
                    mem[64] = mem[64] + 96
                    if not sub_c999fea3 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    sub_c999fea3++
                    mem[_186] = sub_c999fea3
                    mem[_186 + 32] = block.timestamp
                    mem[_186 + 64] = block.timestamp
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0++
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = sub_c999fea3
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_256 = block.timestamp
                nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_512 = block.timestamp
                if not stor3[address(cd[((32 * idx) + cd[4] + 36)])]:
                    stor2.length++
                    address(stor2[stor2.length].field_0) = address(cd[((32 * idx) + cd[4] + 36)])
                    Mask(96, 0, stor2[stor2.length].field_160) = 0
                    stor3[address(cd[((32 * idx) + cd[4] + 36)])] = stor2.length
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 1
                mem[mem[64]] = sub_c999fea3
                mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                emit 0x527bf1ad: sub_c999fea3, address(cd[((32 * idx) + cd[4] + 36)]), nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0
                if cd[100]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 1
                    if s >= nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 1)
                    nodeBalanceOf[address(cd[((32 * idx) + cd[4] + 36)])][s].field_512 = 0
                if not s - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor21[address(msg.sender)]) != 1:
        revert with 0, 'Unauthorized access'
    if not arg1:
        revert with 0, 'ZERO ADDRESS'
    if nodeBalanceOf[address(arg1)].field_0 <= 0:
        revert with 0, 'No nodes owned'
    if var48002 >= var48001:
        return 0
    mem[32] = 1
    if var52001 >= nodeBalanceOf[address(arg1)].field_0:
        revert with 'NH{q', 50
    mem[64] = 192
    mem[96] = stor[(3 * var54001) + sha3(var54002)]
    mem[128] = stor[(3 * var54001) + sha3(var54002) + 1]
    mem[160] = stor[(3 * var54001) + sha3(var54002) + 2]
    if not stor[(3 * var54001) + sha3(var54002) + 1]:
        if not var56001:
            if block.timestamp < var124001:
                revert with 'NH{q', 17
            # nil
        else:
            if var76002 >= nodeBalanceOf[address(arg1)].field_0:
                revert with 'NH{q', 50
            nodeBalanceOf[address(arg1)][var76002].field_256 = block.timestamp
            s = var76002
            s = 0
            idx = var76002
            while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                    return 0
                mem[32] = 1
                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 1)
                _618 = mem[64]
                mem[64] = mem[64] + 96
                mem[_618] = nodeBalanceOf[address(arg1)][idx].field_768
                mem[_618 + 32] = nodeBalanceOf[address(arg1)][idx].field_1024
                mem[_618 + 64] = nodeBalanceOf[address(arg1)][idx].field_1280
                if nodeBalanceOf[address(arg1)][idx].field_1024:
                    if nodeBalanceOf[address(arg1)][idx].field_1024 < block.timestamp:
                        if block.timestamp < nodeBalanceOf[address(arg1)][idx].field_1024:
                            revert with 'NH{q', 17
                        if stor7 / 1000 and sub_ea1e9e40 > -1 / stor7 / 1000:
                            revert with 'NH{q', 17
                        if not sub_d58a20be:
                            revert with 'NH{q', 18
                        if not sub_fa6a6596:
                            revert with 'NH{q', 18
                        if block.timestamp - nodeBalanceOf[address(arg1)][idx].field_1024 / sub_fa6a6596 and stor7 / 1000 * sub_ea1e9e40 / sub_d58a20be > -1 / block.timestamp - nodeBalanceOf[address(arg1)][idx].field_1024 / sub_fa6a6596:
                            revert with 'NH{q', 17
                        if 0 > (-1 * block.timestamp - nodeBalanceOf[address(arg1)][idx].field_1024 / sub_fa6a6596 * stor7 / 1000 * sub_ea1e9e40 / sub_d58a20be) - 1:
                            revert with 'NH{q', 17
                mem[32] = 1
                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 1)
                nodeBalanceOf[address(arg1)][idx].field_1792 = block.timestamp
                s = idx + 1
                s = sha3(address(arg1), 1)
                idx = idx + 1
                continue 
            revert with 'NH{q', 17
    else:
        if var57001:
            if var77002 >= nodeBalanceOf[address(arg1)].field_0:
                revert with 'NH{q', 50
            nodeBalanceOf[address(arg1)][var77002].field_256 = block.timestamp
            s = var77002
            t = 0
            idx = var77002
            while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                    return 0
                mem[32] = 1
                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 1)
                _654 = mem[64]
                mem[64] = mem[64] + 96
                mem[_654] = nodeBalanceOf[address(arg1)][idx].field_768
                mem[_654 + 32] = nodeBalanceOf[address(arg1)][idx].field_1024
                mem[_654 + 64] = nodeBalanceOf[address(arg1)][idx].field_1280
                if nodeBalanceOf[address(arg1)][idx].field_1024:
                    mem[0] = t + sha3(address(arg1), 1)
                    stor[(3 * s) + ('array', ('var', 2), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'nodeBalanceOf', 1)))].field_256 = block.timestamp
                    var56001 = not nodeBalanceOf[address(arg1)][idx].field_1024
                    var56002 = _654
                    var56004 = idx + 1
                    var56007 = idx + 1
                    continue 
                mem[32] = 1
                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 1)
                nodeBalanceOf[address(arg1)][idx].field_1792 = block.timestamp
                s = idx + 1
                t = sha3(address(arg1), 1)
                idx = idx + 1
                continue 
        else:
            if block.timestamp >= mem[var57002 + 32]:
                if not stor7 / 1000 or sub_ea1e9e40 <= -1 / stor7 / 1000:
                    if not sub_d58a20be:
                        revert with 'NH{q', 18
                    if not sub_fa6a6596:
                        revert with 'NH{q', 18
                    if not block.timestamp - mem[var57002 + 32] / sub_fa6a6596 or stor7 / 1000 * sub_ea1e9e40 / sub_d58a20be <= -1 / block.timestamp - mem[var57002 + 32] / sub_fa6a6596:
                        if var126003 <= -var126001 - 1:
                            if var130002 >= nodeBalanceOf[address(arg1)].field_0:
                                revert with 'NH{q', 50
                            nodeBalanceOf[address(arg1)][var130002].field_256 = block.timestamp
                            s = var130002
                            t = 0
                            idx = var130002
                            while idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                                    return (var128002 + var128003)
                                mem[32] = 1
                                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(address(arg1), 1)
                                _621 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_621] = nodeBalanceOf[address(arg1)][idx].field_768
                                mem[_621 + 32] = nodeBalanceOf[address(arg1)][idx].field_1024
                                mem[_621 + 64] = nodeBalanceOf[address(arg1)][idx].field_1280
                                if nodeBalanceOf[address(arg1)][idx].field_1024:
                                    mem[0] = t + sha3(address(arg1), 1)
                                    stor[(3 * s) + ('array', ('var', 2), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'nodeBalanceOf', 1)))].field_256 = block.timestamp
                                    var56001 = not nodeBalanceOf[address(arg1)][idx].field_1024
                                    var56002 = _621
                                    var56004 = idx + 1
                                    var56007 = idx + 1
                                    continue 
                                if var128002 + var128003 > -1:
                                    revert with 'NH{q', 17
                                mem[32] = 1
                                if idx + 1 >= nodeBalanceOf[address(arg1)].field_0:
                                    revert with 'NH{q', 50
                                mem[0] = sha3(address(arg1), 1)
                                nodeBalanceOf[address(arg1)][idx].field_1792 = block.timestamp
                                s = idx + 1
                                t = sha3(address(arg1), 1)
                                idx = idx + 1
                                continue 
        revert with 'NH{q', 17
}

function sub_a74d6b73(?) payable {
    if block.timestamp < sub_8e340c9d:
        revert with 'NH{q', 17
    if not sub_0886294f:
        revert with 'NH{q', 18
    if not sub_0886294f:
        revert with 'NH{q', 18
    if not block.timestamp - sub_8e340c9d % sub_0886294f:
        if block.timestamp - sub_8e340c9d / sub_0886294f > -1:
            revert with 'NH{q', 17
        if block.timestamp - sub_8e340c9d / sub_0886294f < 1:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        if not stor14:
            revert with 'NH{q', 18
        if not sub_c999fea3 % stor14:
            if sub_c999fea3 / stor14 > -1:
                revert with 'NH{q', 17
            if sub_c999fea3 / stor14 >= stor15:
                if not sub_0886294f:
                    revert with 'NH{q', 18
                if not 24 * 3600 / sub_0886294f:
                    revert with 'NH{q', 18
                if not 24 * 3600 / sub_0886294f:
                    revert with 'NH{q', 18
                if not sub_c999fea3 / stor14 % 24 * 3600 / sub_0886294f:
                    if sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f > -1:
                        revert with 'NH{q', 17
                    if sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f:
                        revert with 'NH{q', 17
                    if stor18 > (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + (-1 * block.timestamp - sub_8e340c9d / sub_0886294f * sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) - 1:
                        revert with 'NH{q', 17
                    return (stor18 - (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + (block.timestamp - sub_8e340c9d / sub_0886294f * sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f))
                if sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f > -2:
                    revert with 'NH{q', 17
                if (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + 1 and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + 1:
                    revert with 'NH{q', 17
                if stor18 > -(block.timestamp - sub_8e340c9d / sub_0886294f) + (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) - (block.timestamp - sub_8e340c9d / sub_0886294f * sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f):
                    revert with 'NH{q', 17
                return (stor18 + (block.timestamp - sub_8e340c9d / sub_0886294f) + -(sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + (block.timestamp - sub_8e340c9d / sub_0886294f * sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) - 1)
        else:
            if sub_c999fea3 / stor14 > -2:
                revert with 'NH{q', 17
            if (sub_c999fea3 / stor14) + 1 >= stor15:
                if not sub_0886294f:
                    revert with 'NH{q', 18
                if not 24 * 3600 / sub_0886294f:
                    revert with 'NH{q', 18
                if not 24 * 3600 / sub_0886294f:
                    revert with 'NH{q', 18
                if not (sub_c999fea3 / stor14) + 1 % 24 * 3600 / sub_0886294f:
                    if (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f > -1:
                        revert with 'NH{q', 17
                    if (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f:
                        revert with 'NH{q', 17
                    if stor18 > ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + (-1 * block.timestamp - sub_8e340c9d / sub_0886294f * (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) - 1:
                        revert with 'NH{q', 17
                    return (stor18 - ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + (block.timestamp - sub_8e340c9d / sub_0886294f * (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f))
                if (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f > -2:
                    revert with 'NH{q', 17
                if ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + 1 and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + 1:
                    revert with 'NH{q', 17
                if stor18 > -(block.timestamp - sub_8e340c9d / sub_0886294f) + ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) - (block.timestamp - sub_8e340c9d / sub_0886294f * (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f):
                    revert with 'NH{q', 17
                return (stor18 + (block.timestamp - sub_8e340c9d / sub_0886294f) + -((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + (block.timestamp - sub_8e340c9d / sub_0886294f * (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) - 1)
        if not sub_0886294f:
            revert with 'NH{q', 18
        if not 24 * 3600 / sub_0886294f:
            revert with 'NH{q', 18
        if not 24 * 3600 / sub_0886294f:
            revert with 'NH{q', 18
        if not stor15 % 24 * 3600 / sub_0886294f:
            if stor15 / 24 * 3600 / sub_0886294f > -1:
                revert with 'NH{q', 17
            if stor15 / 24 * 3600 / sub_0886294f and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / stor15 / 24 * 3600 / sub_0886294f:
                revert with 'NH{q', 17
            if stor18 > (stor15 / 24 * 3600 / sub_0886294f) + (-1 * block.timestamp - sub_8e340c9d / sub_0886294f * stor15 / 24 * 3600 / sub_0886294f) - 1:
                revert with 'NH{q', 17
            return (stor18 - (stor15 / 24 * 3600 / sub_0886294f) + (block.timestamp - sub_8e340c9d / sub_0886294f * stor15 / 24 * 3600 / sub_0886294f))
        if stor15 / 24 * 3600 / sub_0886294f > -2:
            revert with 'NH{q', 17
        if (stor15 / 24 * 3600 / sub_0886294f) + 1 and (block.timestamp - sub_8e340c9d / sub_0886294f) - 1 > -1 / (stor15 / 24 * 3600 / sub_0886294f) + 1:
            revert with 'NH{q', 17
        if stor18 > -(block.timestamp - sub_8e340c9d / sub_0886294f) + (stor15 / 24 * 3600 / sub_0886294f) - (block.timestamp - sub_8e340c9d / sub_0886294f * stor15 / 24 * 3600 / sub_0886294f):
            revert with 'NH{q', 17
        return (stor18 + (block.timestamp - sub_8e340c9d / sub_0886294f) + -(stor15 / 24 * 3600 / sub_0886294f) + (block.timestamp - sub_8e340c9d / sub_0886294f * stor15 / 24 * 3600 / sub_0886294f) - 1)
    if block.timestamp - sub_8e340c9d / sub_0886294f > -2:
        revert with 'NH{q', 17
    if (block.timestamp - sub_8e340c9d / sub_0886294f) + 1 < 1:
        revert with 'NH{q', 17
    if not stor14:
        revert with 'NH{q', 18
    if not stor14:
        revert with 'NH{q', 18
    if not sub_c999fea3 % stor14:
        if sub_c999fea3 / stor14 > -1:
            revert with 'NH{q', 17
        if sub_c999fea3 / stor14 >= stor15:
            if not sub_0886294f:
                revert with 'NH{q', 18
            if not 24 * 3600 / sub_0886294f:
                revert with 'NH{q', 18
            if not 24 * 3600 / sub_0886294f:
                revert with 'NH{q', 18
            if not sub_c999fea3 / stor14 % 24 * 3600 / sub_0886294f:
                if sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f > -1:
                    revert with 'NH{q', 17
                if sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f:
                    revert with 'NH{q', 17
                if stor18 > (-1 * sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
                    revert with 'NH{q', 17
                return (stor18 + (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
            if sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f > -2:
                revert with 'NH{q', 17
            if (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + 1 and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f) + 1:
                revert with 'NH{q', 17
            if stor18 > -(block.timestamp - sub_8e340c9d / sub_0886294f) + (-1 * sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
                revert with 'NH{q', 17
            return (stor18 + (block.timestamp - sub_8e340c9d / sub_0886294f) + (sub_c999fea3 / stor14 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
    else:
        if sub_c999fea3 / stor14 > -2:
            revert with 'NH{q', 17
        if (sub_c999fea3 / stor14) + 1 >= stor15:
            if not sub_0886294f:
                revert with 'NH{q', 18
            if not 24 * 3600 / sub_0886294f:
                revert with 'NH{q', 18
            if not 24 * 3600 / sub_0886294f:
                revert with 'NH{q', 18
            if not (sub_c999fea3 / stor14) + 1 % 24 * 3600 / sub_0886294f:
                if (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f > -1:
                    revert with 'NH{q', 17
                if (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f:
                    revert with 'NH{q', 17
                if stor18 > (-1 * (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
                    revert with 'NH{q', 17
                return (stor18 + ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
            if (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f > -2:
                revert with 'NH{q', 17
            if ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + 1 and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f) + 1:
                revert with 'NH{q', 17
            if stor18 > -(block.timestamp - sub_8e340c9d / sub_0886294f) + (-1 * (sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
                revert with 'NH{q', 17
            return (stor18 + (block.timestamp - sub_8e340c9d / sub_0886294f) + ((sub_c999fea3 / stor14) + 1 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
    if not sub_0886294f:
        revert with 'NH{q', 18
    if not 24 * 3600 / sub_0886294f:
        revert with 'NH{q', 18
    if not 24 * 3600 / sub_0886294f:
        revert with 'NH{q', 18
    if not stor15 % 24 * 3600 / sub_0886294f:
        if stor15 / 24 * 3600 / sub_0886294f > -1:
            revert with 'NH{q', 17
        if stor15 / 24 * 3600 / sub_0886294f and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / stor15 / 24 * 3600 / sub_0886294f:
            revert with 'NH{q', 17
        if stor18 > (-1 * stor15 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
            revert with 'NH{q', 17
        return (stor18 + (stor15 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
    if stor15 / 24 * 3600 / sub_0886294f > -2:
        revert with 'NH{q', 17
    if (stor15 / 24 * 3600 / sub_0886294f) + 1 and block.timestamp - sub_8e340c9d / sub_0886294f > -1 / (stor15 / 24 * 3600 / sub_0886294f) + 1:
        revert with 'NH{q', 17
    if stor18 > -(block.timestamp - sub_8e340c9d / sub_0886294f) + (-1 * stor15 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f) - 1:
        revert with 'NH{q', 17
    return (stor18 + (block.timestamp - sub_8e340c9d / sub_0886294f) + (stor15 / 24 * 3600 / sub_0886294f * block.timestamp - sub_8e340c9d / sub_0886294f))
}



}
