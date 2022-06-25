contract main {




// =====================  Runtime code  =====================


#
#  - checkTransactionInfo(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5)
#  - sub_ba78ef3b(?)
#
const ROLE_ADMIN = 0


mapping of struct roleAdmin;
array of struct roleMember;
array of struct sub_1555717c;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 stor5;
mapping of uint256 receiveTimestamp;
mapping of uint256 isUniswapPair;
uint256 stor8;

function sub_1555717c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_1555717c.length
    return sub_1555717c[arg1].field_0, sub_1555717c[arg1].field_160 << 224
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getReceiveTimestamp(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    return receiveTimestamp[address(arg1)][address(arg2)]
}

function sub_4bbef59b(?) payable {
    return sub_1555717c.length
}

function isMarkedAsBotStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    return bool(stor3[address(arg1)])
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function isUniswapPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    return isUniswapPair[address(arg1)]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isMarkedAsHumanStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function updateCooldownPeriodSell(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    stor5[address(arg1)] = arg2
}

function markAsUniswapPair(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    isUniswapPair[address(arg1)] = arg2
}

function markAddressAsHuman(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    stor4[address(arg1)] = uint8(arg2)
}

function markAddressAsBot(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    if stor3[address(arg1)]:
        revert with 0, 'CBD: bot'
    stor3[address(arg1)] = 1
}

function sub_72e64ad6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    receiveTimestamp[address(arg1)][address(arg2)] = block.timestamp
}

function getCooldownPeriodSell(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    if stor5[address(arg1)]:
        return stor5[address(arg1)]
    else:
        return 0
}

function markAddressAsNotBot(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    if not stor3[address(arg1)]:
        revert with 0, 'CBD: !bot'
    stor3[address(arg1)] = 0
}

function isBotAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    if not stor3[address(arg1)]:
        return bool(stor3[address(arg1)])
    return not bool(stor4[address(arg1)])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_fe32a5a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_1555717c.length:
        mem[0] = 2
        if sub_1555717c[idx].field_0 == address(arg1):
            if idx >= sub_1555717c.length:
                revert with 0, 50
            mem[0] = 2
            sub_1555717c[idx].field_0 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0, msg.sender, roleAdmin[arg1].field_256
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function bulkMarkAsUniswapPair(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        isUniswapPair[address(cd[((32 * idx) + arg1 + 36)])] = arg2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function bulkMarkAddressAsHuman(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        stor4[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function bulkMarkAddressAsBotBool(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        stor3[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_75ee0e28(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    idx = 0
    while idx < sub_1555717c.length:
        mem[0] = 2
        if sub_1555717c[idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_1555717c.length:
            revert with 0, 50
        sub_1555717c[idx].field_0 = uint64(arg1) << 96
        sub_1555717c[idx].field_160 = 0
    sub_1555717c.length++
    sub_1555717c[sub_1555717c.length].field_0 = uint64(arg1) << 96
    sub_1555717c[sub_1555717c.length].field_160 = 0
}

function bulkMarkAddressAsBot(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 3
        if not stor3[address(cd[((32 * idx) + arg1 + 36)])]:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 3
            stor3[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 865759086
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        revert with 0, msg.sender, roleAdmin[arg1].field_256
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function isMarkedAsBotStorageBulk(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    t = arg1.length
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        t = cd[idx]
        idx = idx + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        if not stor3[mem[(32 * idx) + 140 len 20]]:
            if idx >= arg1.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161
}

function isMarkedAsHumanStorageBulk(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    t = arg1.length
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        t = cd[idx]
        idx = idx + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            if idx >= arg1.length:
                revert with 0, 50
            mem[(32 * idx) + 128] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < mem[96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161
}

function grantRolesBulk(bytes32 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, msg.sender, 0
    idx = 0
    while idx < arg1.length:
        require cd[((64 * idx) + arg1 + 68)] == address(cd[((64 * idx) + arg1 + 68)])
        if not roleAdmin[cd[((64 * idx) + arg1 + 36)]][address(cd[((64 * idx) + arg1 + 68)])].field_0:
            roleAdmin[cd[((64 * idx) + arg1 + 36)]][address(cd[((64 * idx) + arg1 + 68)])].field_0 = 1
            emit RoleGranted(cd[((64 * idx) + arg1 + 36)], address(cd[((64 * idx) + arg1 + 68)]), msg.sender);
        mem[0] = address(cd[((64 * idx) + arg1 + 68)])
        mem[32] = sha3(cd[((64 * idx) + arg1 + 36)], 1) + 1
        if not roleMember[cd[((64 * idx) + arg1 + 36)]][1][address(cd[((64 * idx) + arg1 + 68)])].field_0:
            roleMember[cd[((64 * idx) + arg1 + 36)]].field_0++
            roleMember[cd[((64 * idx) + arg1 + 36)]][roleMember[cd[((64 * idx) + arg1 + 36)]].field_0].field_0 = address(cd[((64 * idx) + arg1 + 68)])
            roleMember[cd[((64 * idx) + arg1 + 36)]][roleMember[cd[((64 * idx) + arg1 + 36)]].field_0].field_160 = 0
            mem[0] = address(cd[((64 * idx) + arg1 + 68)])
            mem[32] = sha3(cd[((64 * idx) + arg1 + 36)], 1) + 1
            roleMember[cd[((64 * idx) + arg1 + 36)]][1][address(cd[((64 * idx) + arg1 + 68)])].field_0 = roleMember[cd[((64 * idx) + arg1 + 36)]].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_eef84ba1(?) payable {
    if stor8 != block.number:
        stor8 = block.number
        mem[64] = 160
        mem[96] = 0
        mem[128] = 0
        idx = 0
        s = 96
        while idx < sub_1555717c.length:
            mem[0] = 2
            _28 = mem[64]
            mem[64] = mem[64] + 64
            mem[_28] = sub_1555717c[idx].field_0
            mem[_28 + 32] = sub_1555717c[idx].field_160 << 224
            if sub_1555717c[idx].field_0:
                _33 = mem[64]
                mem[mem[64] + 32] = sub_1555717c[idx].field_160 << 224
                _37 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                _39 = mem[_37]
                s = 0
                while s < _39:
                    mem[s + _33 + 36] = mem[s + _37 + 32]
                    s = s + 32
                    continue 
                if ceil32(_39) <= _39:
                    call sub_1555717c[idx].field_0.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _39 + _33 + -mem[64] + 32]
                    if return_data.size:
                        _57 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_57] = return_data.size
                        mem[_57 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[_39 + _33 + 36] = 0
                    call sub_1555717c[idx].field_0.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _39 + _33 + -mem[64] + 32]
                    if return_data.size:
                        _58 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_58] = return_data.size
                        mem[_58 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _28
            continue 
    else:
        if block.gasprice <= 0:
            stor8 = block.number
            mem[64] = 160
            mem[96] = 0
            mem[128] = 0
            idx = 0
            s = 96
            while idx < sub_1555717c.length:
                mem[0] = 2
                _30 = mem[64]
                mem[64] = mem[64] + 64
                mem[_30] = sub_1555717c[idx].field_0
                mem[_30 + 32] = sub_1555717c[idx].field_160 << 224
                if sub_1555717c[idx].field_0:
                    _36 = mem[64]
                    mem[mem[64] + 32] = sub_1555717c[idx].field_160 << 224
                    _38 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    _40 = mem[_38]
                    s = 0
                    while s < _40:
                        mem[s + _36 + 36] = mem[s + _38 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_40) <= _40:
                        call sub_1555717c[idx].field_0.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _40 + _36 + -mem[64] + 32]
                        if return_data.size:
                            _59 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_59] = return_data.size
                            mem[_59 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_40 + _36 + 36] = 0
                        call sub_1555717c[idx].field_0.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _40 + _36 + -mem[64] + 32]
                        if return_data.size:
                            _60 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_60] = return_data.size
                            mem[_60 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _30
                continue 
}



}
