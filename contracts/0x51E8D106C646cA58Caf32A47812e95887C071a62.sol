contract main {




// =====================  Runtime code  =====================


address adminAddress;
array of uint128 stor1;
array of struct stor2;
mapping of struct sub_0a3b7e31;
mapping of uint256 sub_6e732b70;
mapping of uint256 sub_3b5bfa8b;
mapping of struct sub_aaf54385;

function sub_0a3b7e31(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return uint64(sub_0a3b7e31[address(arg1)][address(arg2)][1][arg3].field_0), 
           uint64(sub_0a3b7e31[address(arg1)][address(arg2)][1][arg3].field_0),
           uint128(sub_0a3b7e31[address(arg1)][address(arg2)][1][arg3].field_0),
           uint128(sub_0a3b7e31[address(arg1)][address(arg2)][1][arg3].field_256)
}

function pendingAdmin() {
    return address(stor1.length)
}

function sub_3b5bfa8b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_3b5bfa8b[arg1][arg2]
}

function sub_679f7f77(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)
}

function sub_6e732b70(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_6e732b70[arg1][arg2]
}

function sub_aaf54385(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_aaf54385[arg1].field_0)
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function claimAdmin() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'not pending'
    emit AdminClaimed(address(stor1.length), adminAddress);
    adminAddress = address(stor1.length)
    address(stor1.length) = 0
}

function transferAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not arg1:
        revert with 0, 'new admin 0'
    emit TransferAdminPending(arg1);
    address(stor1.length) = arg1
}

function transferAdminQuickly(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not arg1:
        revert with 0, 'admin 0'
    emit TransferAdminPending(arg1);
    emit AdminClaimed(address(arg1), adminAddress);
    adminAddress = arg1
}

function sub_cb1d086b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint64(arg2)
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    uint64(sub_aaf54385[address(arg1)].field_0) = uint64(arg2)
    Mask(192, 0, sub_aaf54385[address(arg1)].field_64) = 0
    emit 0x8604b95f: uint64(arg2), address(arg1)
}

function sub_f793d77e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if uint256(stor2[address(arg1)].field_0) >= 100:
        revert with 0, 'rewardContracts is too long'
    if uint256(stor2[address(arg1)][1][address(arg2)].field_0):
        revert with 0, '_rewardContract is added'
    uint256(stor2[address(arg1)].field_0)++
    address(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0) = address(arg2)
    Mask(96, 0, stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_160) = 0
    uint256(stor2[address(arg1)][1][address(arg2)].field_0) = uint256(stor2[address(arg1)].field_0)
    emit 0x88a8c998: 1, address(arg2), address(arg1)
}

function sub_4c9d00cc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if adminAddress != msg.sender:
        revert with 0, 'only admin'
    if not uint256(stor2[address(arg1)][1][address(arg2)].field_0):
        revert with 0, '_rewardContract is removed'
    require uint256(stor2[address(arg1)].field_0) - 1 < uint256(stor2[address(arg1)].field_0)
    require uint256(stor2[address(arg1)][1][address(arg2)].field_0) - 1 < uint256(stor2[address(arg1)].field_0)
    uint256(stor2[address(arg1)][uint256(stor2[address(arg1)][1][address(arg2)].field_0)].field_0) = uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0)
    uint256(stor2[address(arg1)][1][uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0)].field_0) = uint256(stor2[address(arg1)][1][address(arg2)].field_0)
    require uint256(stor2[address(arg1)].field_0)
    uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0) = 0
    uint256(stor2[address(arg1)].field_0)--
    uint256(stor2[address(arg1)][1][address(arg2)].field_0) = 0
    emit 0x88a8c998: 0, address(arg2), address(arg1)
}

function sub_fdfaaa05(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < uint256(sub_0a3b7e31[msg.sender][address(arg1)].field_0):
        mem[0] = idx
        mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
        _18 = mem[64]
        mem[64] = mem[64] + 128
        mem[_18] = uint64(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_0)
        mem[_18 + 32] = uint64(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_64)
        mem[_18 + 64] = uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128)
        mem[_18 + 96] = uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256)
        if block.number >= uint64(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_64):
            if uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256) > uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128):
                revert with 0, 'SafeMath: subtraction overflow'
            if uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256):
                mem[0] = idx
                mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256) = uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128)
                if uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[mem[64]] = uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256)
                mem[mem[64] + 32] = idx
                emit Vested(uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][idx].field_256), idx, address(arg1), msg.sender);
        idx = idx + 1
        continue 
    revert with 0, '0 vesting amount'
}

function sub_bbd8a328(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require uint256(stor2[address(arg1)].field_0) <= test266151307()
    mem[96] = uint256(stor2[address(arg1)].field_0)
    mem[64] = (32 * uint256(stor2[address(arg1)].field_0)) + 128
    if not uint256(stor2[address(arg1)].field_0):
        idx = 0
        while idx < mem[96]:
            mem[32] = 2
            if idx >= uint256(stor2[address(arg1)].field_0):
                revert with 0, 
                            32,
                            34,
                            0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                            mem[(32 * uint256(stor2[address(arg1)].field_0)) + 230 len 30]
            mem[0] = sha3(address(arg1), 2)
            require idx < mem[96]
            mem[(32 * idx) + 128] = address(stor2[address(arg1)][idx].field_0)
            idx = idx + 1
            continue 
        mem[(32 * uint256(stor2[address(arg1)].field_0)) + 128] = 32
        _29 = mem[96]
        mem[(32 * uint256(stor2[address(arg1)].field_0)) + 160] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _29:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * uint256(stor2[address(arg1)].field_0)) + (32 * _29) + -mem[64] + 192
    mem[128 len 32 * uint256(stor2[address(arg1)].field_0)] = call.data[calldata.size len 32 * uint256(stor2[address(arg1)].field_0)]
    idx = 0
    while idx < mem[96]:
        mem[32] = 2
        if idx >= uint256(stor2[address(arg1)].field_0):
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * uint256(stor2[address(arg1)].field_0)) + 230 len 30]
        mem[0] = sha3(address(arg1), 2)
        require idx < mem[96]
        mem[(32 * idx) + 128] = address(stor2[address(arg1)][idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * uint256(stor2[address(arg1)].field_0)) + 128] = 32
    _30 = mem[96]
    mem[(32 * uint256(stor2[address(arg1)].field_0)) + 160] = mem[96]
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
       len (32 * uint256(stor2[address(arg1)].field_0)) + (32 * _30) + -mem[64] + 192
}

function sub_2f50bd72(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[0] = address(arg2)
    mem[32] = sha3(address(arg1), 3)
    require uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0) <= test266151307()
    mem[96] = uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)
    mem[64] = (32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 128
    if not uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0):
        idx = 0
        while idx < uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0):
            mem[0] = idx
            mem[32] = sha3(address(arg2), sha3(address(arg1), 3)) + 1
            _34 = mem[64]
            mem[64] = mem[64] + 128
            mem[_34] = uint64(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_0)
            mem[_34 + 32] = uint64(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_64)
            mem[_34 + 64] = uint128(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_128)
            mem[_34 + 96] = uint128(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_256)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _34
            idx = idx + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _38 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _38:
            _59 = mem[t]
            mem[s] = mem[mem[t] + 24 len 8]
            mem[s + 32] = mem[_59 + 56 len 8]
            mem[s + 64] = mem[_59 + 80 len 16]
            mem[s + 96] = mem[_59 + 112 len 16]
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _37 + (128 * _38) + -mem[64] + 64
    mem[64] = (32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 256
    mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 128] = 0
    mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 160] = 0
    mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 192] = 0
    mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 224] = 0
    mem[var18001] = (32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 128
    s = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 128] = 0
        mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 160] = 0
        mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 192] = 0
        mem[(32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 224] = 0
        mem[s + 32] = (32 * uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0)) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < uint256(sub_0a3b7e31[address(arg1)][address(arg2)].field_0):
        mem[0] = idx
        mem[32] = sha3(address(arg2), sha3(address(arg1), 3)) + 1
        _81 = mem[64]
        mem[64] = mem[64] + 128
        mem[_81] = uint64(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_0)
        mem[_81 + 32] = uint64(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_64)
        mem[_81 + 64] = uint128(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_128)
        mem[_81 + 96] = uint128(sub_0a3b7e31[address(arg1)][address(arg2)][1][idx].field_256)
        require idx < mem[96]
        mem[(32 * idx) + 128] = _81
        idx = idx + 1
        continue 
    _83 = mem[64]
    mem[mem[64]] = 32
    _84 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _84:
        _91 = mem[t]
        mem[s] = mem[mem[t] + 24 len 8]
        mem[s + 32] = mem[_91 + 56 len 8]
        mem[s + 64] = mem[_91 + 80 len 16]
        mem[s + 96] = mem[_91 + 112 len 16]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _83 + (128 * _84) + -mem[64] + 64
}

function sub_9059aa6a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        if 0 < ('cd', 4).length:
            require ('cd', 4)[0] == address(('cd', 4)[0])
            idx = 0
            while idx < uint256(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])].field_0):
                mem[0] = idx
                mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                _44 = mem[64]
                mem[64] = mem[64] + 128
                mem[_44] = uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_0)
                mem[_44 + 32] = uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_64)
                mem[_44 + 64] = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128)
                mem[_44 + 96] = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256)
                if block.number >= uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_64):
                    if uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256) > uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256):
                        mem[0] = idx
                        mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                        uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256) = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128)
                        if uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256)
                        mem[mem[64] + 32] = idx
                        emit Vested(uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256), idx, address(('cd', 4)[0]), msg.sender);
                idx = idx + 1
                continue 
            revert with 0, '0 vesting amount'
        mem[(32 * ('cd', 4).length) + 128] = 32
        mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if 0 < ('cd', 4).length:
            require ('cd', 4)[0] == address(('cd', 4)[0])
            idx = 0
            while idx < uint256(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])].field_0):
                mem[0] = idx
                mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                _47 = mem[64]
                mem[64] = mem[64] + 128
                mem[_47] = uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_0)
                mem[_47 + 32] = uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_64)
                mem[_47 + 64] = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128)
                mem[_47 + 96] = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256)
                if block.number >= uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_64):
                    if uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256) > uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256):
                        mem[0] = idx
                        mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                        uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256) = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128)
                        if uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[mem[64]] = uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256)
                        mem[mem[64] + 32] = idx
                        emit Vested(uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_128) - uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][idx].field_256), idx, address(('cd', 4)[0]), msg.sender);
                idx = idx + 1
                continue 
            revert with 0, '0 vesting amount'
        mem[(32 * ('cd', 4).length) + 128] = 32
        mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[(32 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    return memory
      from (32 * ('cd', 4).length) + 128
       len (96 * ('cd', 4).length) + 64
}

function sub_0f5636c3(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = address(cd[4])
    mem[32] = sha3(msg.sender, 3)
    idx = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        if mem[(32 * idx) + 128] >= uint256(sub_0a3b7e31[msg.sender][address(cd[4])].field_0):
            revert with 0, 'invalid schedule index'
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(cd[4]), sha3(msg.sender, 3)) + 1
        _165 = sha3(mem[(32 * idx) + 128], sha3(address(cd[4]), sha3(msg.sender, 3)) + 1)
        _166 = mem[64]
        mem[64] = mem[64] + 128
        mem[_166] = uint64(sub_0a3b7e31[msg.sender][address(cd[4])][1][mem[(32 * idx) + 128]].field_0)
        mem[_166 + 32] = uint64(stor[_165].field_64)
        mem[_166 + 64] = uint128(stor[_165].field_128)
        mem[_166 + 96] = uint128(stor1[_165])
        if block.number >= uint64(stor[_165].field_64):
            if uint128(stor1[_165]) > uint128(stor[_165].field_128):
                revert with 0, 'SafeMath: subtraction overflow'
            if uint128(stor[_165].field_128) - uint128(stor1[_165]):
                if uint128(stor[_165].field_128) < uint128(stor1[_165]):
                    revert with 0, 'SafeMath: addition overflow'
                if uint128(stor[_165].field_128) >= 0x100000000000000000000000000000000:
                    revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                require idx < mem[96]
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = sha3(address(cd[4]), sha3(msg.sender, 3)) + 1
                uint128(sub_0a3b7e31[msg.sender][address(cd[4])][1][mem[(32 * idx) + 128]].field_256) = uint128(stor[_165].field_128)
                if uint128(stor[_165].field_128) - uint128(stor1[_165]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                _199 = mem[(32 * idx) + 128]
                mem[mem[64]] = uint128(stor[_165].field_128) - uint128(stor1[_165])
                mem[mem[64] + 32] = _199
                emit Vested(uint128(stor[_165].field_128) - uint128(stor1[_165]), _199, address(cd[4]), msg.sender);
        else:
            if block.number > mem[_166 + 24 len 8]:
                _175 = mem[_166]
                if mem[_166 + 24 len 8] > uint64(stor[_165].field_64):
                    revert with 0, 'SafeMath: subtraction overflow'
                _179 = mem[_166]
                if not block.number - mem[_166 + 24 len 8]:
                    if uint64(stor[_165].field_64) - mem[_166 + 24 len 8] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint64(stor[_165].field_64) - mem[_166 + 24 len 8]
                    if uint128(stor1[_165]) > 0 / uint64(stor[_165].field_64) - mem[_166 + 24 len 8]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / uint64(stor[_165].field_64) - mem[_166 + 24 len 8]) - uint128(stor1[_165]):
                        if 0 / uint64(stor[_165].field_64) - mem[_166 + 24 len 8] < uint128(stor1[_165]):
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / uint64(stor[_165].field_64) - mem[_166 + 24 len 8] >= 0x100000000000000000000000000000000:
                            revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = sha3(address(cd[4]), sha3(msg.sender, 3)) + 1
                        uint128(sub_0a3b7e31[msg.sender][address(cd[4])][1][mem[(32 * idx) + 128]].field_256) = uint128(0 / uint64(stor[_165].field_64) - uint64(_175))
                        if (0 / uint64(stor[_165].field_64) - uint64(_175)) - uint128(stor1[_165]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        _228 = mem[(32 * idx) + 128]
                        mem[mem[64]] = (0 / uint64(stor[_165].field_64) - uint64(_175)) - uint128(stor1[_165])
                        mem[mem[64] + 32] = _228
                        emit Vested((0 / uint64(stor[_165].field_64) - uint64(_175)) - uint128(stor1[_165]), _228, address(cd[4]), msg.sender);
                else:
                    if (block.number * uint128(stor[_165].field_128)) - (mem[_166 + 24 len 8] * uint128(stor[_165].field_128)) / block.number - mem[_166 + 24 len 8] != uint128(stor[_165].field_128):
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if uint64(stor[_165].field_64) - mem[_166 + 24 len 8] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require uint64(stor[_165].field_64) - mem[_166 + 24 len 8]
                    if uint128(stor1[_165]) > (block.number * uint128(stor[_165].field_0)) - (mem[_166 + 24 len 8] * uint128(stor[_165].field_0)) / uint64(stor[_165].field_64) - mem[_166 + 24 len 8]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ((block.number * uint128(stor[_165].field_0)) - (mem[_166 + 24 len 8] * uint128(stor[_165].field_0)) / uint64(stor[_165].field_64) - mem[_166 + 24 len 8]) - uint128(stor1[_165]):
                        if (block.number * uint128(stor[_165].field_0)) - (mem[_166 + 24 len 8] * uint128(stor[_165].field_0)) / uint64(stor[_165].field_64) - mem[_166 + 24 len 8] < uint128(stor1[_165]):
                            revert with 0, 'SafeMath: addition overflow'
                        if (block.number * uint128(stor[_165].field_0)) - (mem[_166 + 24 len 8] * uint128(stor[_165].field_0)) / uint64(stor[_165].field_64) - mem[_166 + 24 len 8] >= 0x100000000000000000000000000000000:
                            revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                        require idx < mem[96]
                        mem[0] = mem[(32 * idx) + 128]
                        mem[32] = sha3(address(cd[4]), sha3(msg.sender, 3)) + 1
                        uint128(sub_0a3b7e31[msg.sender][address(cd[4])][1][mem[(32 * idx) + 128]].field_256) = uint128((block.number * uint128(stor[_165].field_128)) - (uint64(_179) * uint128(stor[_165].field_128)) / uint64(stor[_165].field_64) - uint64(_175))
                        if ((block.number * uint128(stor[_165].field_128)) - (uint64(_179) * uint128(stor[_165].field_128)) / uint64(stor[_165].field_64) - uint64(_175)) - uint128(stor1[_165]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < mem[96]
                        _230 = mem[(32 * idx) + 128]
                        mem[mem[64]] = ((block.number * uint128(stor[_165].field_128)) - (uint64(_179) * uint128(stor[_165].field_128)) / uint64(stor[_165].field_64) - uint64(_175)) - uint128(stor1[_165])
                        mem[mem[64] + 32] = _230
                        emit Vested(((block.number * uint128(stor[_165].field_128)) - (uint64(_179) * uint128(stor[_165].field_128)) / uint64(stor[_165].field_64) - uint64(_175)) - uint128(stor1[_165]), _230, address(cd[4]), msg.sender);
        idx = idx + 1
        continue 
    revert with 0, '0 vesting amount'
}

function sub_c33fddf8(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg2 > arg3:
        revert with 0, 'startIndex > endIndex'
    require arg3 + -arg2 + 1 <= test266151307()
    mem[96] = arg3 + -arg2 + 1
    mem[64] = (32 * arg3 + -arg2 + 1) + 128
    if not arg3 + -arg2 + 1:
        idx = arg2
        while idx <= arg3:
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = idx
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = sha3(msg.sender, 3)
        _320 = mem[96]
        idx = 0
        while idx < _320:
            require idx < mem[96]
            if mem[(32 * idx) + 128] >= uint256(sub_0a3b7e31[msg.sender][address(arg1)].field_0):
                revert with 0, 'invalid schedule index'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
            _333 = sha3(mem[(32 * idx) + 128], sha3(address(arg1), sha3(msg.sender, 3)) + 1)
            _334 = mem[64]
            mem[64] = mem[64] + 128
            mem[_334] = uint64(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_0)
            mem[_334 + 32] = uint64(stor[_333].field_64)
            mem[_334 + 64] = uint128(stor[_333].field_128)
            mem[_334 + 96] = uint128(stor1[_333])
            if block.number >= uint64(stor[_333].field_64):
                if uint128(stor1[_333]) > uint128(stor[_333].field_128):
                    revert with 0, 'SafeMath: subtraction overflow'
                if uint128(stor[_333].field_128) - uint128(stor1[_333]):
                    if uint128(stor[_333].field_128) < uint128(stor1[_333]):
                        revert with 0, 'SafeMath: addition overflow'
                    if uint128(stor[_333].field_128) >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                    uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_256) = uint128(stor[_333].field_128)
                    if uint128(stor[_333].field_128) - uint128(stor1[_333]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    _402 = mem[(32 * idx) + 128]
                    mem[mem[64]] = uint128(stor[_333].field_128) - uint128(stor1[_333])
                    mem[mem[64] + 32] = _402
                    emit Vested(uint128(stor[_333].field_128) - uint128(stor1[_333]), _402, address(arg1), msg.sender);
            else:
                if block.number > mem[_334 + 24 len 8]:
                    _354 = mem[_334]
                    if mem[_334 + 24 len 8] > uint64(stor[_333].field_64):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _362 = mem[_334]
                    if not block.number - mem[_334 + 24 len 8]:
                        if uint64(stor[_333].field_64) - mem[_334 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_333].field_64) - mem[_334 + 24 len 8]
                        if uint128(stor1[_333]) > 0 / uint64(stor[_333].field_64) - mem[_334 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / uint64(stor[_333].field_64) - mem[_334 + 24 len 8]) - uint128(stor1[_333]):
                            if 0 / uint64(stor[_333].field_64) - mem[_334 + 24 len 8] < uint128(stor1[_333]):
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / uint64(stor[_333].field_64) - mem[_334 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_256) = uint128(0 / uint64(stor[_333].field_64) - uint64(_354))
                            if (0 / uint64(stor[_333].field_64) - uint64(_354)) - uint128(stor1[_333]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            _459 = mem[(32 * idx) + 128]
                            mem[mem[64]] = (0 / uint64(stor[_333].field_64) - uint64(_354)) - uint128(stor1[_333])
                            mem[mem[64] + 32] = _459
                            emit Vested((0 / uint64(stor[_333].field_64) - uint64(_354)) - uint128(stor1[_333]), _459, address(arg1), msg.sender);
                    else:
                        if (block.number * uint128(stor[_333].field_128)) - (mem[_334 + 24 len 8] * uint128(stor[_333].field_128)) / block.number - mem[_334 + 24 len 8] != uint128(stor[_333].field_128):
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if uint64(stor[_333].field_64) - mem[_334 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_333].field_64) - mem[_334 + 24 len 8]
                        if uint128(stor1[_333]) > (block.number * uint128(stor[_333].field_0)) - (mem[_334 + 24 len 8] * uint128(stor[_333].field_0)) / uint64(stor[_333].field_64) - mem[_334 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((block.number * uint128(stor[_333].field_0)) - (mem[_334 + 24 len 8] * uint128(stor[_333].field_0)) / uint64(stor[_333].field_64) - mem[_334 + 24 len 8]) - uint128(stor1[_333]):
                            if (block.number * uint128(stor[_333].field_0)) - (mem[_334 + 24 len 8] * uint128(stor[_333].field_0)) / uint64(stor[_333].field_64) - mem[_334 + 24 len 8] < uint128(stor1[_333]):
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.number * uint128(stor[_333].field_0)) - (mem[_334 + 24 len 8] * uint128(stor[_333].field_0)) / uint64(stor[_333].field_64) - mem[_334 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_256) = uint128((block.number * uint128(stor[_333].field_128)) - (uint64(_362) * uint128(stor[_333].field_128)) / uint64(stor[_333].field_64) - uint64(_354))
                            if ((block.number * uint128(stor[_333].field_128)) - (uint64(_362) * uint128(stor[_333].field_128)) / uint64(stor[_333].field_64) - uint64(_354)) - uint128(stor1[_333]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            _464 = mem[(32 * idx) + 128]
                            mem[mem[64]] = ((block.number * uint128(stor[_333].field_128)) - (uint64(_362) * uint128(stor[_333].field_128)) / uint64(stor[_333].field_64) - uint64(_354)) - uint128(stor1[_333])
                            mem[mem[64] + 32] = _464
                            emit Vested(((block.number * uint128(stor[_333].field_128)) - (uint64(_362) * uint128(stor[_333].field_128)) / uint64(stor[_333].field_64) - uint64(_354)) - uint128(stor1[_333]), _464, address(arg1), msg.sender);
            _320 = mem[96]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            require idx - arg2 < mem[96]
            mem[(32 * idx - arg2) + 128] = idx
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = sha3(msg.sender, 3)
        _321 = mem[96]
        idx = 0
        while idx < _321:
            require idx < mem[96]
            if mem[(32 * idx) + 128] >= uint256(sub_0a3b7e31[msg.sender][address(arg1)].field_0):
                revert with 0, 'invalid schedule index'
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
            _336 = sha3(mem[(32 * idx) + 128], sha3(address(arg1), sha3(msg.sender, 3)) + 1)
            _337 = mem[64]
            mem[64] = mem[64] + 128
            mem[_337] = uint64(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_0)
            mem[_337 + 32] = uint64(stor[_336].field_64)
            mem[_337 + 64] = uint128(stor[_336].field_128)
            mem[_337 + 96] = uint128(stor1[_336])
            if block.number >= uint64(stor[_336].field_64):
                if uint128(stor1[_336]) > uint128(stor[_336].field_128):
                    revert with 0, 'SafeMath: subtraction overflow'
                if uint128(stor[_336].field_128) - uint128(stor1[_336]):
                    if uint128(stor[_336].field_128) < uint128(stor1[_336]):
                        revert with 0, 'SafeMath: addition overflow'
                    if uint128(stor[_336].field_128) >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                    uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_256) = uint128(stor[_336].field_128)
                    if uint128(stor[_336].field_128) - uint128(stor1[_336]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[96]
                    _404 = mem[(32 * idx) + 128]
                    mem[mem[64]] = uint128(stor[_336].field_128) - uint128(stor1[_336])
                    mem[mem[64] + 32] = _404
                    emit Vested(uint128(stor[_336].field_128) - uint128(stor1[_336]), _404, address(arg1), msg.sender);
            else:
                if block.number > mem[_337 + 24 len 8]:
                    _356 = mem[_337]
                    if mem[_337 + 24 len 8] > uint64(stor[_336].field_64):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _364 = mem[_337]
                    if not block.number - mem[_337 + 24 len 8]:
                        if uint64(stor[_336].field_64) - mem[_337 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_336].field_64) - mem[_337 + 24 len 8]
                        if uint128(stor1[_336]) > 0 / uint64(stor[_336].field_64) - mem[_337 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / uint64(stor[_336].field_64) - mem[_337 + 24 len 8]) - uint128(stor1[_336]):
                            if 0 / uint64(stor[_336].field_64) - mem[_337 + 24 len 8] < uint128(stor1[_336]):
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / uint64(stor[_336].field_64) - mem[_337 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_256) = uint128(0 / uint64(stor[_336].field_64) - uint64(_356))
                            if (0 / uint64(stor[_336].field_64) - uint64(_356)) - uint128(stor1[_336]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            _462 = mem[(32 * idx) + 128]
                            mem[mem[64]] = (0 / uint64(stor[_336].field_64) - uint64(_356)) - uint128(stor1[_336])
                            mem[mem[64] + 32] = _462
                            emit Vested((0 / uint64(stor[_336].field_64) - uint64(_356)) - uint128(stor1[_336]), _462, address(arg1), msg.sender);
                    else:
                        if (block.number * uint128(stor[_336].field_128)) - (mem[_337 + 24 len 8] * uint128(stor[_336].field_128)) / block.number - mem[_337 + 24 len 8] != uint128(stor[_336].field_128):
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if uint64(stor[_336].field_64) - mem[_337 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_336].field_64) - mem[_337 + 24 len 8]
                        if uint128(stor1[_336]) > (block.number * uint128(stor[_336].field_0)) - (mem[_337 + 24 len 8] * uint128(stor[_336].field_0)) / uint64(stor[_336].field_64) - mem[_337 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((block.number * uint128(stor[_336].field_0)) - (mem[_337 + 24 len 8] * uint128(stor[_336].field_0)) / uint64(stor[_336].field_64) - mem[_337 + 24 len 8]) - uint128(stor1[_336]):
                            if (block.number * uint128(stor[_336].field_0)) - (mem[_337 + 24 len 8] * uint128(stor[_336].field_0)) / uint64(stor[_336].field_64) - mem[_337 + 24 len 8] < uint128(stor1[_336]):
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.number * uint128(stor[_336].field_0)) - (mem[_337 + 24 len 8] * uint128(stor[_336].field_0)) / uint64(stor[_336].field_64) - mem[_337 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = sha3(address(arg1), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(arg1)][1][mem[(32 * idx) + 128]].field_256) = uint128((block.number * uint128(stor[_336].field_128)) - (uint64(_364) * uint128(stor[_336].field_128)) / uint64(stor[_336].field_64) - uint64(_356))
                            if ((block.number * uint128(stor[_336].field_128)) - (uint64(_364) * uint128(stor[_336].field_128)) / uint64(stor[_336].field_64) - uint64(_356)) - uint128(stor1[_336]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[96]
                            _466 = mem[(32 * idx) + 128]
                            mem[mem[64]] = ((block.number * uint128(stor[_336].field_128)) - (uint64(_364) * uint128(stor[_336].field_128)) / uint64(stor[_336].field_64) - uint64(_356)) - uint128(stor1[_336])
                            mem[mem[64] + 32] = _466
                            emit Vested(((block.number * uint128(stor[_336].field_128)) - (uint64(_364) * uint128(stor[_336].field_128)) / uint64(stor[_336].field_64) - uint64(_356)) - uint128(stor1[_336]), _466, address(arg1), msg.sender);
            _321 = mem[96]
            idx = idx + 1
            continue 
    revert with 0, '0 vesting amount'
}

function sub_4d4f3d93(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'tokens.length != indices.length'
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if 0 >= ('cd', 4).length:
            mem[(32 * ('cd', 4).length) + 128] = 32
            mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[(32 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
            return memory
              from (32 * ('cd', 4).length) + 128
               len (96 * ('cd', 4).length) + 64
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + ('cd', 36)[0] + 36)] <= test266151307()
        require cd[36] + ('cd', 36)[0] + 68 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[0] + 36)])
        mem[64] = (32 * ('cd', 4).length) + (32 * cd[(cd[36] + ('cd', 36)[0] + 36)]) + 160
        mem[(32 * ('cd', 4).length) + 128] = cd[(cd[36] + ('cd', 36)[0] + 36)]
        mem[(32 * ('cd', 4).length) + 160 len 32 * cd[(cd[36] + ('cd', 36)[0] + 36)]] = call.data[cd[36] + ('cd', 36)[0] + 68 len 32 * cd[(cd[36] + ('cd', 36)[0] + 36)]]
        mem[(32 * ('cd', 4).length) + (32 * cd[(cd[36] + ('cd', 36)[0] + 36)]) + 160] = 0
        mem[0] = address(('cd', 4)[0])
        mem[32] = sha3(msg.sender, 3)
        idx = 0
        while idx < cd[(cd[36] + ('cd', 36)[0] + 36)]:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] >= uint256(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])].field_0):
                revert with 0, 'invalid schedule index'
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
            _187 = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1)
            _188 = mem[64]
            mem[64] = mem[64] + 128
            mem[_188] = uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0)
            mem[_188 + 32] = uint64(stor[_187].field_64)
            mem[_188 + 64] = uint128(stor[_187].field_128)
            mem[_188 + 96] = uint128(stor1[_187])
            if block.number >= uint64(stor[_187].field_64):
                if uint128(stor1[_187]) > uint128(stor[_187].field_128):
                    revert with 0, 'SafeMath: subtraction overflow'
                if uint128(stor[_187].field_128) - uint128(stor1[_187]):
                    if uint128(stor[_187].field_128) < uint128(stor1[_187]):
                        revert with 0, 'SafeMath: addition overflow'
                    if uint128(stor[_187].field_128) >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                    uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_256) = uint128(stor[_187].field_128)
                    if uint128(stor[_187].field_128) - uint128(stor1[_187]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _256 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64]] = uint128(stor[_187].field_128) - uint128(stor1[_187])
                    mem[mem[64] + 32] = _256
                    emit Vested(uint128(stor[_187].field_128) - uint128(stor1[_187]), _256, address(('cd', 4)[0]), msg.sender);
            else:
                if block.number > mem[_188 + 24 len 8]:
                    _208 = mem[_188]
                    if mem[_188 + 24 len 8] > uint64(stor[_187].field_64):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _216 = mem[_188]
                    if not block.number - mem[_188 + 24 len 8]:
                        if uint64(stor[_187].field_64) - mem[_188 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_187].field_64) - mem[_188 + 24 len 8]
                        if uint128(stor1[_187]) > 0 / uint64(stor[_187].field_64) - mem[_188 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / uint64(stor[_187].field_64) - mem[_188 + 24 len 8]) - uint128(stor1[_187]):
                            if 0 / uint64(stor[_187].field_64) - mem[_188 + 24 len 8] < uint128(stor1[_187]):
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / uint64(stor[_187].field_64) - mem[_188 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_256) = uint128(0 / uint64(stor[_187].field_64) - uint64(_208))
                            if (0 / uint64(stor[_187].field_64) - uint64(_208)) - uint128(stor1[_187]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            _313 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[mem[64]] = (0 / uint64(stor[_187].field_64) - uint64(_208)) - uint128(stor1[_187])
                            mem[mem[64] + 32] = _313
                            emit Vested((0 / uint64(stor[_187].field_64) - uint64(_208)) - uint128(stor1[_187]), _313, address(('cd', 4)[0]), msg.sender);
                    else:
                        if (block.number * uint128(stor[_187].field_128)) - (mem[_188 + 24 len 8] * uint128(stor[_187].field_128)) / block.number - mem[_188 + 24 len 8] != uint128(stor[_187].field_128):
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if uint64(stor[_187].field_64) - mem[_188 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_187].field_64) - mem[_188 + 24 len 8]
                        if uint128(stor1[_187]) > (block.number * uint128(stor[_187].field_0)) - (mem[_188 + 24 len 8] * uint128(stor[_187].field_0)) / uint64(stor[_187].field_64) - mem[_188 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((block.number * uint128(stor[_187].field_0)) - (mem[_188 + 24 len 8] * uint128(stor[_187].field_0)) / uint64(stor[_187].field_64) - mem[_188 + 24 len 8]) - uint128(stor1[_187]):
                            if (block.number * uint128(stor[_187].field_0)) - (mem[_188 + 24 len 8] * uint128(stor[_187].field_0)) / uint64(stor[_187].field_64) - mem[_188 + 24 len 8] < uint128(stor1[_187]):
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.number * uint128(stor[_187].field_0)) - (mem[_188 + 24 len 8] * uint128(stor[_187].field_0)) / uint64(stor[_187].field_64) - mem[_188 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_256) = uint128((block.number * uint128(stor[_187].field_128)) - (uint64(_216) * uint128(stor[_187].field_128)) / uint64(stor[_187].field_64) - uint64(_208))
                            if ((block.number * uint128(stor[_187].field_128)) - (uint64(_216) * uint128(stor[_187].field_128)) / uint64(stor[_187].field_64) - uint64(_208)) - uint128(stor1[_187]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            _318 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[mem[64]] = ((block.number * uint128(stor[_187].field_128)) - (uint64(_216) * uint128(stor[_187].field_128)) / uint64(stor[_187].field_64) - uint64(_208)) - uint128(stor1[_187])
                            mem[mem[64] + 32] = _318
                            emit Vested(((block.number * uint128(stor[_187].field_128)) - (uint64(_216) * uint128(stor[_187].field_128)) / uint64(stor[_187].field_64) - uint64(_208)) - uint128(stor1[_187]), _318, address(('cd', 4)[0]), msg.sender);
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if 0 >= ('cd', 4).length:
            mem[(32 * ('cd', 4).length) + 128] = 32
            mem[(32 * ('cd', 4).length) + 160] = ('cd', 4).length
            mem[(32 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            return memory
              from (32 * ('cd', 4).length) + 128
               len (96 * ('cd', 4).length) + 64
        require ('cd', 4)[0] == address(('cd', 4)[0])
        require 0 < ('cd', 36).length
        require ('cd', 36)[0] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + ('cd', 36)[0] + 36)] <= test266151307()
        require cd[36] + ('cd', 36)[0] + 68 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[0] + 36)])
        mem[64] = (32 * ('cd', 4).length) + (32 * cd[(cd[36] + ('cd', 36)[0] + 36)]) + 160
        mem[(32 * ('cd', 4).length) + 128] = cd[(cd[36] + ('cd', 36)[0] + 36)]
        mem[(32 * ('cd', 4).length) + 160 len 32 * cd[(cd[36] + ('cd', 36)[0] + 36)]] = call.data[cd[36] + ('cd', 36)[0] + 68 len 32 * cd[(cd[36] + ('cd', 36)[0] + 36)]]
        mem[(32 * ('cd', 4).length) + (32 * cd[(cd[36] + ('cd', 36)[0] + 36)]) + 160] = 0
        mem[0] = address(('cd', 4)[0])
        mem[32] = sha3(msg.sender, 3)
        idx = 0
        while idx < cd[(cd[36] + ('cd', 36)[0] + 36)]:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * idx) + (32 * ('cd', 4).length) + 160] >= uint256(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])].field_0):
                revert with 0, 'invalid schedule index'
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
            _190 = sha3(mem[(32 * idx) + (32 * ('cd', 4).length) + 160], sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1)
            _191 = mem[64]
            mem[64] = mem[64] + 128
            mem[_191] = uint64(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_0)
            mem[_191 + 32] = uint64(stor[_190].field_64)
            mem[_191 + 64] = uint128(stor[_190].field_128)
            mem[_191 + 96] = uint128(stor1[_190])
            if block.number >= uint64(stor[_190].field_64):
                if uint128(stor1[_190]) > uint128(stor[_190].field_128):
                    revert with 0, 'SafeMath: subtraction overflow'
                if uint128(stor[_190].field_128) - uint128(stor1[_190]):
                    if uint128(stor[_190].field_128) < uint128(stor1[_190]):
                        revert with 0, 'SafeMath: addition overflow'
                    if uint128(stor[_190].field_128) >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                    uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_256) = uint128(stor[_190].field_128)
                    if uint128(stor[_190].field_128) - uint128(stor1[_190]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    _258 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64]] = uint128(stor[_190].field_128) - uint128(stor1[_190])
                    mem[mem[64] + 32] = _258
                    emit Vested(uint128(stor[_190].field_128) - uint128(stor1[_190]), _258, address(('cd', 4)[0]), msg.sender);
            else:
                if block.number > mem[_191 + 24 len 8]:
                    _210 = mem[_191]
                    if mem[_191 + 24 len 8] > uint64(stor[_190].field_64):
                        revert with 0, 'SafeMath: subtraction overflow'
                    _218 = mem[_191]
                    if not block.number - mem[_191 + 24 len 8]:
                        if uint64(stor[_190].field_64) - mem[_191 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_190].field_64) - mem[_191 + 24 len 8]
                        if uint128(stor1[_190]) > 0 / uint64(stor[_190].field_64) - mem[_191 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / uint64(stor[_190].field_64) - mem[_191 + 24 len 8]) - uint128(stor1[_190]):
                            if 0 / uint64(stor[_190].field_64) - mem[_191 + 24 len 8] < uint128(stor1[_190]):
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / uint64(stor[_190].field_64) - mem[_191 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_256) = uint128(0 / uint64(stor[_190].field_64) - uint64(_210))
                            if (0 / uint64(stor[_190].field_64) - uint64(_210)) - uint128(stor1[_190]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            _316 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[mem[64]] = (0 / uint64(stor[_190].field_64) - uint64(_210)) - uint128(stor1[_190])
                            mem[mem[64] + 32] = _316
                            emit Vested((0 / uint64(stor[_190].field_64) - uint64(_210)) - uint128(stor1[_190]), _316, address(('cd', 4)[0]), msg.sender);
                    else:
                        if (block.number * uint128(stor[_190].field_128)) - (mem[_191 + 24 len 8] * uint128(stor[_190].field_128)) / block.number - mem[_191 + 24 len 8] != uint128(stor[_190].field_128):
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if uint64(stor[_190].field_64) - mem[_191 + 24 len 8] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require uint64(stor[_190].field_64) - mem[_191 + 24 len 8]
                        if uint128(stor1[_190]) > (block.number * uint128(stor[_190].field_0)) - (mem[_191 + 24 len 8] * uint128(stor[_190].field_0)) / uint64(stor[_190].field_64) - mem[_191 + 24 len 8]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ((block.number * uint128(stor[_190].field_0)) - (mem[_191 + 24 len 8] * uint128(stor[_190].field_0)) / uint64(stor[_190].field_64) - mem[_191 + 24 len 8]) - uint128(stor1[_190]):
                            if (block.number * uint128(stor[_190].field_0)) - (mem[_191 + 24 len 8] * uint128(stor[_190].field_0)) / uint64(stor[_190].field_64) - mem[_191 + 24 len 8] < uint128(stor1[_190]):
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.number * uint128(stor[_190].field_0)) - (mem[_191 + 24 len 8] * uint128(stor[_190].field_0)) / uint64(stor[_190].field_64) - mem[_191 + 24 len 8] >= 0x100000000000000000000000000000000:
                                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[mem[64] + 107 len 25]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[32] = sha3(address(('cd', 4)[0]), sha3(msg.sender, 3)) + 1
                            uint128(sub_0a3b7e31[msg.sender][address(('cd', 4)[0])][1][mem[(32 * idx) + (32 * ('cd', 4).length) + 160]].field_256) = uint128((block.number * uint128(stor[_190].field_128)) - (uint64(_218) * uint128(stor[_190].field_128)) / uint64(stor[_190].field_64) - uint64(_210))
                            if ((block.number * uint128(stor[_190].field_128)) - (uint64(_218) * uint128(stor[_190].field_128)) / uint64(stor[_190].field_64) - uint64(_210)) - uint128(stor1[_190]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            _320 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                            mem[mem[64]] = ((block.number * uint128(stor[_190].field_128)) - (uint64(_218) * uint128(stor[_190].field_128)) / uint64(stor[_190].field_64) - uint64(_210)) - uint128(stor1[_190])
                            mem[mem[64] + 32] = _320
                            emit Vested(((block.number * uint128(stor[_190].field_128)) - (uint64(_218) * uint128(stor[_190].field_128)) / uint64(stor[_190].field_64) - uint64(_210)) - uint128(stor1[_190]), _320, address(('cd', 4)[0]), msg.sender);
            idx = idx + 1
            continue 
    revert with 0, '0 vesting amount'
}

function lockWithStartBlock(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if not uint256(stor2[address(arg1)][1][address(msg.sender)].field_0):
        revert with 0, 'only reward contract'
    if arg3 <= 0:
        revert with 0, '0 quantity'
    if not arg1:
        if arg3 != msg.value:
            revert with 0, 'Invalid msg.value'
        if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 < arg4:
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0):
            if arg4 >= 18446744073709551616:
                revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
            if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
            if arg3 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[331 len 25]
            uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
            uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
            uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
            uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
            uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
            if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_6e732b70[address(arg2)][address(arg1)] += arg3
            emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
        else:
            if arg4 != uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_0):
                if arg4 >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                if arg3 >= 0x100000000000000000000000000000000:
                    revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[331 len 25]
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6e732b70[address(arg2)][address(arg1)] += arg3
                emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
            else:
                if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 == uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_64):
                    if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) < uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128):
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) >= 0x100000000000000000000000000000000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                    mem[203 len 25]
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) = uint128(arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128))
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xa6fd3a57: arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1, arg1, arg2
                else:
                    if arg4 >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                    if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                    if arg3 >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[331 len 25]
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                    uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 < arg4:
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0):
                if arg4 >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                if arg3 >= 0x100000000000000000000000000000000:
                    revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[527 len 25]
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6e732b70[address(arg2)][address(arg1)] += arg3
                emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
            else:
                if arg4 != uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_0):
                    if arg4 >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                    if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                    if arg3 >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[527 len 25]
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                    uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
                else:
                    if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 == uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_64):
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) < uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128):
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) >= 0x100000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        39,
                                        0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                        mem[399 len 17],
                                        0,
                                        mem[420 len 4]
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) = uint128(arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128))
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xa6fd3a57: arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1, arg1, arg2
                    else:
                        if arg4 >= 18446744073709551616:
                            revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                        if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                            revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                        if arg3 >= 0x100000000000000000000000000000000:
                            revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[527 len 25]
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                        uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 < arg4:
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0):
                if arg4 >= 18446744073709551616:
                    revert with 0, 
                                32,
                                38,
                                0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                mem[ceil32(return_data.size) + 527 len 26]
                if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                    revert with 0, 
                                32,
                                38,
                                0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                mem[ceil32(return_data.size) + 527 len 26]
                if arg3 >= 0x100000000000000000000000000000000:
                    revert with 0, 
                                32,
                                39,
                                0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                mem[ceil32(return_data.size) + 528 len 25]
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6e732b70[address(arg2)][address(arg1)] += arg3
                emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
            else:
                if arg4 != uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_0):
                    if arg4 >= 18446744073709551616:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                    mem[ceil32(return_data.size) + 527 len 26]
                    if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                    mem[ceil32(return_data.size) + 527 len 26]
                    if arg3 >= 0x100000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    39,
                                    0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                    mem[ceil32(return_data.size) + 528 len 25]
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                    uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
                else:
                    if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 == uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_64):
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) < uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128):
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) >= 0x100000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        39,
                                        0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                        mem[ceil32(return_data.size) + 400 len 25]
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) = uint128(arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128))
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xa6fd3a57: arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1, arg1, arg2
                    else:
                        if arg4 >= 18446744073709551616:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                        mem[ceil32(return_data.size) + 527 len 26]
                        if uint256(sub_aaf54385[address(arg1)].field_0) + arg4 >= 18446744073709551616:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                        mem[ceil32(return_data.size) + 527 len 26]
                        if arg3 >= 0x100000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        39,
                                        0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                        mem[ceil32(return_data.size) + 528 len 25]
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(arg4)
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + arg4)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                        uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xfb1fd0fe: arg4, uint256(sub_aaf54385[address(arg1)].field_0) + arg4, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
}

function lock(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not uint256(stor2[address(arg1)][1][address(msg.sender)].field_0):
        revert with 0, 'only reward contract'
    if arg3 <= 0:
        revert with 0, '0 quantity'
    if not arg1:
        if arg3 != msg.value:
            revert with 0, 'Invalid msg.value'
        if uint256(sub_aaf54385[address(arg1)].field_0) + block.number < block.number:
            revert with 0, 'SafeMath: addition overflow'
        if not uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0):
            if block.number >= 18446744073709551616:
                revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
            if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
            if arg3 >= 0x100000000000000000000000000000000:
                revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[331 len 25]
            uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
            uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
            uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
            uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
            uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
            if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_6e732b70[address(arg2)][address(arg1)] += arg3
            emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
        else:
            if uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_0) != block.number:
                if block.number >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                if arg3 >= 0x100000000000000000000000000000000:
                    revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[331 len 25]
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6e732b70[address(arg2)][address(arg1)] += arg3
                emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
            else:
                if uint256(sub_aaf54385[address(arg1)].field_0) + block.number == uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_64):
                    if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) < uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128):
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) >= 0x100000000000000000000000000000000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                    mem[203 len 25]
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) = uint128(arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128))
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xa6fd3a57: arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1, arg1, arg2
                else:
                    if block.number >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                    if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[330 len 26]
                    if arg3 >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[331 len 25]
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                    uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if uint256(sub_aaf54385[address(arg1)].field_0) + block.number < block.number:
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0):
                if block.number >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                    revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                if arg3 >= 0x100000000000000000000000000000000:
                    revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[527 len 25]
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6e732b70[address(arg2)][address(arg1)] += arg3
                emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
            else:
                if uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_0) != block.number:
                    if block.number >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                    if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                        revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                    if arg3 >= 0x100000000000000000000000000000000:
                        revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[527 len 25]
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                    uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
                else:
                    if uint256(sub_aaf54385[address(arg1)].field_0) + block.number == uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_64):
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) < uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128):
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) >= 0x100000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        39,
                                        0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                        mem[399 len 17],
                                        0,
                                        mem[420 len 4]
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) = uint128(arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128))
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xa6fd3a57: arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1, arg1, arg2
                    else:
                        if block.number >= 18446744073709551616:
                            revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                        if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                            revert with 0, 32, 38, 0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974, mem[526 len 26]
                        if arg3 >= 0x100000000000000000000000000000000:
                            revert with 0, 32, 39, 0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974, mem[527 len 25]
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                        uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            if uint256(sub_aaf54385[address(arg1)].field_0) + block.number < block.number:
                revert with 0, 'SafeMath: addition overflow'
            if not uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0):
                if block.number >= 18446744073709551616:
                    revert with 0, 
                                32,
                                38,
                                0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                mem[ceil32(return_data.size) + 527 len 26]
                if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                    revert with 0, 
                                32,
                                38,
                                0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                mem[ceil32(return_data.size) + 527 len 26]
                if arg3 >= 0x100000000000000000000000000000000:
                    revert with 0, 
                                32,
                                39,
                                0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                mem[ceil32(return_data.size) + 528 len 25]
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_6e732b70[address(arg2)][address(arg1)] += arg3
                emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
            else:
                if uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_0) != block.number:
                    if block.number >= 18446744073709551616:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                    mem[ceil32(return_data.size) + 527 len 26]
                    if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                    mem[ceil32(return_data.size) + 527 len 26]
                    if arg3 >= 0x100000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    39,
                                    0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                    mem[ceil32(return_data.size) + 528 len 25]
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                    uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                    uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                    uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                    if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_6e732b70[address(arg2)][address(arg1)] += arg3
                    emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
                else:
                    if uint256(sub_aaf54385[address(arg1)].field_0) + block.number == uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_64):
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) < uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128):
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) >= 0x100000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        39,
                                        0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                        mem[ceil32(return_data.size) + 400 len 25]
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128) = uint128(arg3 + uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1].field_128))
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xa6fd3a57: arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0) - 1, arg1, arg2
                    else:
                        if block.number >= 18446744073709551616:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                        mem[ceil32(return_data.size) + 527 len 26]
                        if uint256(sub_aaf54385[address(arg1)].field_0) + block.number >= 18446744073709551616:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7753616665436173743a2076616c756520646f65736e27742066697420696e20363420626974,
                                        mem[ceil32(return_data.size) + 527 len 26]
                        if arg3 >= 0x100000000000000000000000000000000:
                            revert with 0, 
                                        32,
                                        39,
                                        0x7353616665436173743a2076616c756520646f65736e27742066697420696e2031323820626974,
                                        mem[ceil32(return_data.size) + 528 len 25]
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_0) = uint64(block.number)
                        uint64(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_64) = uint64(uint256(sub_aaf54385[address(arg1)].field_0) + block.number)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_128) = uint128(arg3)
                        uint128(sub_0a3b7e31[address(arg2)][address(arg1)][1][uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)].field_256) = 0
                        uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0)++
                        if arg3 + sub_6e732b70[address(arg2)][address(arg1)] < sub_6e732b70[address(arg2)][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_6e732b70[address(arg2)][address(arg1)] += arg3
                        emit 0xfb1fd0fe: block.number, uint256(sub_aaf54385[address(arg1)].field_0) + block.number, arg3, uint256(sub_0a3b7e31[address(arg2)][address(arg1)].field_0), arg1, arg2
}



}
