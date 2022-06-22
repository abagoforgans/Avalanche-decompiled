contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_46d7ab46(?)
#  - undoDeposit(uint256 arg1, uint256 arg2)
#
const sub_ace126cd(?) = 0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43

const sub_ba930d04(?) = 0xf0fb3b7be161dccaa893b4579bad029416c26008a1f03e33adf56b43ae49fd9b

const WITHDRAWER_ROLE = 0xfe10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334

const CREATOR_ROLE = 0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f

const DEFAULT_ADMIN_ROLE = 0

const EDITOR_ROLE = 0x21d1167972f621f75904fb065136bc8b53c7ba1c60ccd3a7758fbee465851e9c


mapping of struct roleAdmin;
array of struct roleMember;
array of struct stor2;
mapping of struct userInfo;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403026;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function deposits(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < deposits.length
    require arg2 < deposits[arg1].field_0
    return stor[(2 * arg2) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0, 
           stor[(2 * arg2) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_256
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function distributionContributors(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < stor3.length
    require arg2 < stor3[arg1].field_0
    return address(stor[('array', ('param', 'arg1'), ('name', 'stor3', 3)) + arg2].field_0)
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function distributionLength() payable {
    return stor2.length
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function getDeposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= deposits.length:
        revert with 0, 50
    mem[0] = 4
    mem[64] = (32 * deposits[arg1].field_0) + 128
    mem[96] = deposits[arg1].field_0
    s = 128
    idx = 0
    while idx < deposits[arg1].field_0:
        mem[0] = sha3(4) + arg1
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0
        mem[_12 + 32] = stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function setPaused(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[0x21d1167972f621f75904fb065136bc8b53c7ba1c60ccd3a7758fbee465851e9c][address(msg.sender)].field_0):
        if arg1 >= stor2.length:
            revert with 0, 50
        uint8(stor2[arg1].field_1024) = uint8(arg2)
        emit 0xe31c7297: bool(uint8(arg2)), msg.sender, arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x21d1167972f621f75904fb065136bc8b53c7ba1c60ccd3a7758fbee465851e9c
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function getContributors(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor3.length:
        revert with 0, 50
    mem[64] = (32 * stor3[arg1].field_0) + 128
    mem[96] = stor3[arg1].field_0
    if not stor3[arg1].field_0:
        mem[(32 * stor3[arg1].field_0) + 128] = 32
        mem[(32 * stor3[arg1].field_0) + 160] = stor3[arg1].field_0
        idx = 0
        s = (32 * stor3[arg1].field_0) + 192
        t = 128
        while idx < stor3[arg1].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor3[arg1].field_0) + 128
           len (96 * stor3[arg1].field_0) + 64
    mem[128] = address(stor3[arg1].field_0)
    idx = 128
    s = 0
    while (32 * stor3[arg1].field_0) + 96 > idx:
        mem[idx + 32] = address(stor3[arg1 + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3[arg1].field_0) + 128] = 32
    mem[(32 * stor3[arg1].field_0) + 160] = stor3[arg1].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor3[arg1].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor3[arg1].field_0) + -mem[64] + 192
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function totalDeposited(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= deposits.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < deposits[arg1].field_0:
        mem[0] = sha3(4) + arg1
        if s > !stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0
        continue 
    return (s * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0)
}

function deposit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= block.timestamp:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'unlock time must be in the future or zero'
    if arg1 >= stor2.length:
        revert with 0, 50
    if uint8(stor2[arg1].field_1200):
        revert with 0, 'distribution has been abandoned'
    mem[128] = arg3
    if arg1 >= deposits.length:
        revert with 0, 50
    deposits[arg1].field_0++
    stor[(2 * deposits[arg1].field_0) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0 = arg2
    stor[(2 * deposits[arg1].field_0) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_256 = arg3
    mem[196] = msg.sender
    mem[228] = this.address
    mem[260] = arg2
    mem[160] = 100
    mem[196 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[192 len 4] = unknown_0x23b872dd(?????)
    mem[292] = 32
    mem[324] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(stor2[arg1].field_256)):
        revert with 0, 'Address: call to non-contract'
    mem[356 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[456] = 0
    call address(stor2[arg1].field_256) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if arg2:
                revert with memory
                  from 128
                   len arg2
            revert with 0, 'SafeERC20: low-level call failed'
        if arg2:
            require arg2 >= 32
            require arg3 == bool(arg3)
            if not arg3:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[388] == bool(mem[388])
            if not mem[388]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Deposit(arg2, msg.sender, arg1);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
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

function abandon(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        if address(stor2[arg1].field_1040) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the distribution creator'
    if uint8(stor2[arg1].field_1200):
        revert with 0, 'Already abandoned'
    if arg1 >= deposits.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < deposits[arg1].field_0:
        mem[0] = sha3(4) + arg1
        if s > !stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0
        continue 
    if s * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0 * deposits[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rollback deposits before abandoning'
    uint8(stor2[arg1].field_1200) = 1
    emit 0xec2f6ea0: msg.sender, arg1
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= stor2.length:
        revert with 0, 50
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_0):
            if 31 < uint255(stor2[arg1].field_0) * 0.5:
                idx = 384
                s = 0
                while (uint255(stor2[arg1].field_0) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor2[(5 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[arg1].field_1 % 128:
            if 31 < stor2[arg1].field_1 % 128:
                idx = 384
                s = 0
                while stor2[arg1].field_1 % 128 + 352 > idx:
                    mem[idx + 32] = stor2[(5 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if arg1 >= deposits.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < deposits[arg1].field_0:
        mem[0] = sha3(4) + arg1
        if stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_256 > block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= deposits[arg1].field_0:
            revert with 0, 50
        mem[0] = sha3(4) + arg1
        if s > !stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', ('param', 'arg1'), ('name', 'deposits', 4))].field_0
        continue 
    if s and userInfo[arg1][address(arg2)].field_256 > -1 / s:
        revert with 0, 17
    if not stor2[arg1].field_512:
        revert with 0, 18
    if s * userInfo[arg1][address(arg2)].field_256 / stor2[arg1].field_512 < userInfo[arg1][address(arg2)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000 and userInfo[arg1][address(arg2)].field_0 >= 0:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 < 0 and s * userInfo[arg1][address(arg2)].field_256 / stor2[arg1].field_512 > userInfo[arg1][address(arg2)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if s < stor2[arg1].field_768:
        revert with 0, 17
    if s - stor2[arg1].field_768 > (s * userInfo[arg1][address(arg2)].field_256 / stor2[arg1].field_512) - userInfo[arg1][address(arg2)].field_0:
        return ((s * userInfo[arg1][address(arg2)].field_256 / stor2[arg1].field_512) - userInfo[arg1][address(arg2)].field_0)
    return (s - stor2[arg1].field_768)
}

function distributions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor2.length
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2[arg1].field_0):
            if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_0):
                if 31 >= uint255(stor2[arg1].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
                else:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[(5 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor2[arg1].field_1 % 128:
                if 31 >= stor2[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
                else:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[(5 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)]), 
               address(stor2[arg1].field_256),
               stor2[arg1].field_512,
               stor2[arg1].field_768,
               bool(uint8(stor2[arg1].field_1024)),
               bool(uint8(stor2[arg1].field_1032)),
               address(stor2[arg1].field_1024),
               bool(uint8(stor2[arg1].field_1200))
    if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2[arg1].field_0):
        if bool(stor2[arg1].field_0) == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_0):
            if 31 >= uint255(stor2[arg1].field_0) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
            else:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[(5 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor2[arg1].field_0) == stor2[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[arg1].field_1 % 128:
            if 31 >= stor2[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor2[arg1].field_8)
            else:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[(5 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor2[arg1].field_0 % 128, data=mem[128 len ceil32(stor2[arg1].field_1 % 128)]), 
           address(stor2[arg1].field_256),
           stor2[arg1].field_512,
           stor2[arg1].field_768,
           bool(uint8(stor2[arg1].field_1024)),
           bool(uint8(stor2[arg1].field_1032)),
           address(stor2[arg1].field_1024),
           bool(uint8(stor2[arg1].field_1200))
}

function withdrawIncorrectlySentFunds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not uint8(roleAdmin[0xfe10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334][address(msg.sender)].field_0):
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe10dac8c06a04bec0b551627dad28bc00d6516b0caacd1c7b345fcdb5211334
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    idx = 0
    s = 0
    while idx < stor2.length:
        mem[0] = 2
        if address(stor2[idx].field_256) != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= stor2.length:
            revert with 0, 50
        if idx >= deposits.length:
            revert with 0, 50
        mem[0] = 4
        t = 0
        u = 0
        while t < deposits[idx].field_0:
            mem[0] = sha3(4) + idx
            if u > !stor[(2 * t) + ('array', ('var', 0), ('name', 'deposits', 4))].field_0:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            t = t + 1
            u = u + stor[(2 * t) + ('array', ('var', 0), ('name', 'deposits', 4))].field_0
            continue 
        if u < stor2[idx].field_768:
            revert with 0, 17
        if s > !(u - stor2[idx].field_768):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + u - stor2[idx].field_768
        continue 
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < s:
        revert with 0, 17
    if arg2 > ext_call.return_data[0] - s:
        revert with 0, 'amount exceeds excess funds'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0xdb73e7df: arg2, arg1
}

function addContributors(uint256 arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg1 >= stor2.length:
        revert with 0, 50
    if not uint8(roleAdmin[0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have creator or temporary creator role'
        if address(stor2[arg1].field_1040) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only add contributors to your own distribution'
        if bool(uint8(stor2[arg1].field_1032)) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Distribution must be in setup mode'
    if uint8(stor2[arg1].field_1200):
        revert with 0, 'Distribution has been abandoned'
    if not arg2.length:
        revert with 0, 'must have contributors'
    if arg3.length != arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'contributors and amounts must be same length'
    if arg2.length > 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot process more than 200 at once'
    if arg1 >= stor3.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < arg3.length:
        if cd[((32 * idx) + arg3 + 36)] <= 0:
            revert with 0, 'cannot contribute zero amount'
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(arg1, 5)
        if userInfo[arg1][address(cd[((32 * idx) + arg2 + 36)])].field_256 != 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'duplicate contributor not allowed'
        if idx >= arg3.length:
            revert with 0, 50
        if s > !cd[((32 * idx) + arg3 + 36)]:
            revert with 0, 17
        if idx >= arg3.length:
            revert with 0, 50
        userInfo[arg1][address(cd[((32 * idx) + arg2 + 36)])].field_256 = cd[((32 * idx) + arg3 + 36)]
        if idx >= arg2.length:
            revert with 0, 50
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        stor3[arg1].field_0++
        mem[0] = sha3(3) + arg1
        address(stor[stor3[arg1].field_0 + ('array', ('param', 'arg1'), ('name', 'stor3', 3))].field_0) = address(cd[((32 * idx) + arg2 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    if stor2[arg1].field_512 > !(s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length):
        revert with 0, 17
    stor2[arg1].field_512 += s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
    emit 0x4ec1893b: arg2.length, msg.sender, arg1
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor2.length:
        revert with 0, 50
    if not uint8(stor2[arg1].field_1032):
        revert with 0, 'distribution already started'
    if uint8(stor2[arg1].field_1200):
        revert with 0, 'distribution has been abandoned'
    if not uint8(roleAdmin[address(msg.sender)].field_0):
        if not uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have superadmin or temporary creator role'
        if address(stor2[arg1].field_1040) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only start your own distribution'
    uint8(stor2[arg1].field_1032) = 0
    if uint8(roleAdmin[address(msg.sender)].field_0):
        if not uint8(roleAdmin[roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_256][address(msg.sender)].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[224 len 66] = call.data[calldata.size len 66]
            idx = 65
            s = roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_256
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 66:
                    revert with 0, 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
        if uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(stor2[arg1].field_1024)].field_0):
            uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(stor2[arg1].field_1024)].field_0) = 0
            emit RoleRevoked(0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43, address(stor2[arg1].field_1040), msg.sender);
        if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0:
            if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0 < 1:
                revert with 0, 17
            if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0 < 1:
                revert with 0, 17
            if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0 - 1 != roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0 - 1:
                if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0 - 1 >= roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0:
                    revert with 0, 50
                if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0 - 1 >= roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0:
                    revert with 0, 50
                roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0].field_0 = roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0].field_0
                roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0].field_0].field_0 = roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0
            if not roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0:
                revert with 0, 49
            roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0].field_0 = 0
            roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0--
            roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(stor2[arg1].field_1024)].field_0 = 0
    else:
        if msg.sender != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
        if uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(msg.sender)].field_0):
            uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(msg.sender)].field_0) = 0
            emit RoleRevoked(0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43, msg.sender, msg.sender);
        if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0:
            if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0 < 1:
                revert with 0, 17
            if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0 < 1:
                revert with 0, 17
            if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0 - 1 != roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0 - 1:
                if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0 - 1 >= roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0:
                    revert with 0, 50
                if roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0 - 1 >= roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0:
                    revert with 0, 50
                roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0].field_0 = roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0].field_0
                roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0].field_0].field_0 = roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0
            if not roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0:
                revert with 0, 49
            roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0].field_0 = 0
            roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43].field_0--
            roleMember[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][1][address(msg.sender)].field_0 = 0
    emit 0x42c34f6a: msg.sender, arg1
}

function getDistributions() payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _32 = mem[64]
        mem[64] = mem[64] + 256
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _37 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
            mem[_37] = uint255(stor2[idx].field_0) * 0.5
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor2[idx].field_0):
                    if 31 >= uint255(stor2[idx].field_0) * 0.5:
                        mem[_37 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                    else:
                        mem[0] = (5 * idx) + sha3(2)
                        mem[_37 + 32] = stor2[idx].field_0
                        t = _37 + 32
                        u = sha3(mem[0])
                        while _37 + (uint255(stor2[idx].field_0) * 0.5) > t:
                            mem[t + 32] = roleMember[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_32] = _37
                mem[_32 + 32] = address(stor2[idx].field_256)
                mem[_32 + 64] = stor2[idx].field_512
                mem[_32 + 96] = stor2[idx].field_768
                mem[_32 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_32 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_32 + 192] = address(stor2[idx].field_1040)
                mem[_32 + 224] = bool(uint8(stor2[idx].field_1200))
                mem[s] = _32
                s = s + 32
                idx = idx + 1
                continue 
            if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor2[idx].field_1 % 128:
                mem[_32] = _37
                mem[_32 + 32] = address(stor2[idx].field_256)
                mem[_32 + 64] = stor2[idx].field_512
                mem[_32 + 96] = stor2[idx].field_768
                mem[_32 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_32 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_32 + 192] = address(stor2[idx].field_1040)
                mem[_32 + 224] = bool(uint8(stor2[idx].field_1200))
                mem[s] = _32
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_1 % 128:
                mem[_37 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                mem[_32] = _37
                mem[_32 + 32] = address(stor2[idx].field_256)
                mem[_32 + 64] = stor2[idx].field_512
                mem[_32 + 96] = stor2[idx].field_768
                mem[_32 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_32 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_32 + 192] = address(stor2[idx].field_1040)
                mem[_32 + 224] = bool(uint8(stor2[idx].field_1200))
                mem[s] = _32
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(2)
            mem[_37 + 32] = stor2[idx].field_0
            t = _37 + 32
            u = sha3(mem[0])
            while _37 + stor2[u].field_1 % 128 > t:
                mem[t + 32] = roleMember[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_32] = _37
            mem[_32 + 32] = address(stor2[u].field_256)
            mem[_32 + 64] = stor2[u].field_512
            mem[_32 + 96] = stor2[u].field_768
            mem[_32 + 128] = bool(uint8(stor2[u].field_1024))
            mem[_32 + 160] = bool(uint8(stor2[u].field_1032))
            mem[_32 + 192] = address(stor2[u].field_1040)
            mem[_32 + 224] = bool(uint8(stor2[u].field_1200))
            mem[t] = _32
            t = t + 32
            u = u + 1
            continue 
        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
            revert with 0, 34
        _40 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
        mem[_40] = stor2[idx].field_1 % 128
        if bool(stor2[idx].field_0):
            if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor2[idx].field_0):
                mem[_32] = _40
                mem[_32 + 32] = address(stor2[idx].field_256)
                mem[_32 + 64] = stor2[idx].field_512
                mem[_32 + 96] = stor2[idx].field_768
                mem[_32 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_32 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_32 + 192] = address(stor2[idx].field_1040)
                mem[_32 + 224] = bool(uint8(stor2[idx].field_1200))
                mem[s] = _32
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                mem[_40 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                mem[_32] = _40
                mem[_32 + 32] = address(stor2[idx].field_256)
                mem[_32 + 64] = stor2[idx].field_512
                mem[_32 + 96] = stor2[idx].field_768
                mem[_32 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_32 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_32 + 192] = address(stor2[idx].field_1040)
                mem[_32 + 224] = bool(uint8(stor2[idx].field_1200))
                mem[s] = _32
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(2)
            mem[_40 + 32] = stor2[idx].field_0
            t = _40 + 32
            u = sha3(mem[0])
            while _40 + (uint255(stor2[u].field_0) * 0.5) > t:
                mem[t + 32] = roleMember[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_32] = _40
            mem[_32 + 32] = address(stor2[u].field_256)
            mem[_32 + 64] = stor2[u].field_512
            mem[_32 + 96] = stor2[u].field_768
            mem[_32 + 128] = bool(uint8(stor2[u].field_1024))
            mem[_32 + 160] = bool(uint8(stor2[u].field_1032))
            mem[_32 + 192] = address(stor2[u].field_1040)
            mem[_32 + 224] = bool(uint8(stor2[u].field_1200))
            mem[t] = _32
            t = t + 32
            u = u + 1
            continue 
        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
            revert with 0, 34
        if stor2[idx].field_1 % 128:
            if 31 >= stor2[idx].field_1 % 128:
                mem[_40 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
            else:
                mem[0] = (5 * idx) + sha3(2)
                mem[_40 + 32] = stor2[idx].field_0
                t = _40 + 32
                u = sha3(mem[0])
                while _40 + stor2[idx].field_1 % 128 > t:
                    mem[t + 32] = roleMember[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_32] = _40
        mem[_32 + 32] = address(stor2[idx].field_256)
        mem[_32 + 64] = stor2[idx].field_512
        mem[_32 + 96] = stor2[idx].field_768
        mem[_32 + 128] = bool(uint8(stor2[idx].field_1024))
        mem[_32 + 160] = bool(uint8(stor2[idx].field_1032))
        mem[_32 + 192] = address(stor2[idx].field_1040)
        mem[_32 + 224] = bool(uint8(stor2[idx].field_1200))
        mem[s] = _32
        s = s + 32
        idx = idx + 1
        continue 
    _33 = mem[64]
    mem[mem[64]] = 32
    _34 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _34:
        mem[u] = t + -_33 - 64
        _60 = mem[s]
        _61 = mem[mem[s]]
        mem[t] = 256
        _63 = mem[_61]
        mem[t + 256] = mem[_61]
        v = 0
        while v < _63:
            mem[v + t + 288] = mem[v + _61 + 32]
            v = v + 32
            continue 
        if ceil32(_63) > _63:
            mem[_63 + t + 288] = 0
        mem[t + 32] = mem[_60 + 44 len 20]
        mem[t + 64] = mem[_60 + 64]
        mem[t + 96] = mem[_60 + 96]
        mem[t + 128] = bool(mem[_60 + 128])
        mem[t + 160] = bool(mem[_60 + 160])
        mem[t + 192] = mem[_60 + 204 len 20]
        mem[t + 224] = bool(mem[_60 + 224])
        idx = idx + 1
        s = s + 32
        t = ceil32(_63) + t + 288
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getDistributionIdsForWallet(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _140 = mem[64]
        mem[64] = mem[64] + (32 * stor3[idx].field_0) + 32
        mem[_140] = stor3[idx].field_0
        if not stor3[idx].field_0:
            s = 0
            t = 0
            while s < stor3[idx].field_0:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _280 = mem[64]
                mem[64] = mem[64] + 256
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _288 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                    mem[_288] = uint255(stor2[idx].field_0) * 0.5
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_288 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_288 + 32] = stor2[idx].field_0
                                u = _288 + 32
                                v = sha3(mem[0])
                                while _288 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_288 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_288 + 32] = stor2[idx].field_0
                                u = _288 + 32
                                v = sha3(mem[0])
                                while _288 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_280] = _288
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _289 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                    mem[_289] = stor2[idx].field_1 % 128
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_289 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_289 + 32] = stor2[idx].field_0
                                u = _289 + 32
                                v = sha3(mem[0])
                                while _289 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_289 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_289 + 32] = stor2[idx].field_0
                                u = _289 + 32
                                v = sha3(mem[0])
                                while _289 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_280] = _289
                mem[_280 + 32] = address(stor2[idx].field_256)
                mem[_280 + 64] = stor2[idx].field_512
                mem[_280 + 96] = stor2[idx].field_768
                mem[_280 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_280 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_280 + 192] = address(stor2[idx].field_1040)
                mem[_280 + 224] = bool(uint8(stor2[idx].field_1200))
                if s >= mem[_140]:
                    revert with 0, 50
                if mem[(32 * s) + _140 + 44 len 20] != arg1:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1032):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1200):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
        else:
            mem[0] = sha3(3) + idx
            mem[_140 + 32] = address(stor3[idx].field_0)
            s = _140 + 32
            t = sha3(mem[0])
            while _140 + (32 * stor3[idx].field_0) > s:
                mem[s + 32] = address(roleMember[t].field_0)
                s = s + 32
                t = t + 1
                continue 
            _552 = mem[_140]
            s = 0
            t = 0
            while s < _552:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _559 = mem[64]
                mem[64] = mem[64] + 256
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _574 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                    mem[_574] = uint255(stor2[idx].field_0) * 0.5
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_574 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_574 + 32] = stor2[idx].field_0
                                u = _574 + 32
                                v = sha3(mem[0])
                                while _574 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_574 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_574 + 32] = stor2[idx].field_0
                                u = _574 + 32
                                v = sha3(mem[0])
                                while _574 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_559] = _574
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                    mem[_576] = stor2[idx].field_1 % 128
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_576 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_576 + 32] = stor2[idx].field_0
                                u = _576 + 32
                                v = sha3(mem[0])
                                while _576 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_576 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_576 + 32] = stor2[idx].field_0
                                u = _576 + 32
                                v = sha3(mem[0])
                                while _576 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_559] = _576
                mem[_559 + 32] = address(stor2[idx].field_256)
                mem[_559 + 64] = stor2[idx].field_512
                mem[_559 + 96] = stor2[idx].field_768
                mem[_559 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_559 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_559 + 192] = address(stor2[idx].field_1040)
                mem[_559 + 224] = bool(uint8(stor2[idx].field_1200))
                if s >= mem[_140]:
                    revert with 0, 50
                if mem[(32 * s) + _140 + 44 len 20] != arg1:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1032):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1200):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _138 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _278 = mem[64]
        mem[64] = mem[64] + (32 * stor3[idx].field_0) + 32
        mem[_278] = stor3[idx].field_0
        if not stor3[idx].field_0:
            s = 0
            t = 0
            while s < stor3[idx].field_0:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _413 = mem[64]
                mem[64] = mem[64] + 256
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                    mem[_428] = uint255(stor2[idx].field_0) * 0.5
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_428 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_428 + 32] = stor2[idx].field_0
                                u = _428 + 32
                                v = sha3(mem[0])
                                while _428 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_428 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_428 + 32] = stor2[idx].field_0
                                u = _428 + 32
                                v = sha3(mem[0])
                                while _428 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_413] = _428
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _433 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                    mem[_433] = stor2[idx].field_1 % 128
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_433 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_433 + 32] = stor2[idx].field_0
                                u = _433 + 32
                                v = sha3(mem[0])
                                while _433 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_433 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_433 + 32] = stor2[idx].field_0
                                u = _433 + 32
                                v = sha3(mem[0])
                                while _433 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_413] = _433
                mem[_413 + 32] = address(stor2[idx].field_256)
                mem[_413 + 64] = stor2[idx].field_512
                mem[_413 + 96] = stor2[idx].field_768
                mem[_413 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_413 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_413 + 192] = address(stor2[idx].field_1040)
                mem[_413 + 224] = bool(uint8(stor2[idx].field_1200))
                if s >= mem[_278]:
                    revert with 0, 50
                if mem[(32 * s) + _278 + 44 len 20] != arg1:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1032):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1200):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if t >= mem[_138]:
                    revert with 0, 50
                mem[(32 * t) + _138 + 32] = idx
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
        else:
            mem[0] = sha3(3) + idx
            mem[_278 + 32] = address(stor3[idx].field_0)
            s = _278 + 32
            t = sha3(mem[0])
            while _278 + (32 * stor3[idx].field_0) > s:
                mem[s + 32] = address(roleMember[t].field_0)
                s = s + 32
                t = t + 1
                continue 
            _698 = mem[_278]
            s = 0
            t = 0
            while s < _698:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                _700 = mem[64]
                mem[64] = mem[64] + 256
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    _713 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                    mem[_713] = uint255(stor2[idx].field_0) * 0.5
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_713 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_713 + 32] = stor2[idx].field_0
                                u = _713 + 32
                                v = sha3(mem[0])
                                while _713 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_713 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_713 + 32] = stor2[idx].field_0
                                u = _713 + 32
                                v = sha3(mem[0])
                                while _713 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_700] = _713
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _718 = mem[64]
                    mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                    mem[_718] = stor2[idx].field_1 % 128
                    if bool(stor2[idx].field_0):
                        if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor2[idx].field_0):
                            if 31 >= uint255(stor2[idx].field_0) * 0.5:
                                mem[_718 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_718 + 32] = stor2[idx].field_0
                                u = _718 + 32
                                v = sha3(mem[0])
                                while _718 + (uint255(stor2[idx].field_0) * 0.5) > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    else:
                        if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor2[idx].field_1 % 128:
                            if 31 >= stor2[idx].field_1 % 128:
                                mem[_718 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                            else:
                                mem[0] = (5 * idx) + sha3(2)
                                mem[_718 + 32] = stor2[idx].field_0
                                u = _718 + 32
                                v = sha3(mem[0])
                                while _718 + stor2[idx].field_1 % 128 > u:
                                    mem[u + 32] = roleMember[v].field_0
                                    u = u + 32
                                    v = v + 1
                                    continue 
                    mem[_700] = _718
                mem[_700 + 32] = address(stor2[idx].field_256)
                mem[_700 + 64] = stor2[idx].field_512
                mem[_700 + 96] = stor2[idx].field_768
                mem[_700 + 128] = bool(uint8(stor2[idx].field_1024))
                mem[_700 + 160] = bool(uint8(stor2[idx].field_1032))
                mem[_700 + 192] = address(stor2[idx].field_1040)
                mem[_700 + 224] = bool(uint8(stor2[idx].field_1200))
                if s >= mem[_278]:
                    revert with 0, 50
                if mem[(32 * s) + _278 + 44 len 20] != arg1:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1032):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if uint8(stor2[idx].field_1200):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if t >= mem[_138]:
                    revert with 0, 50
                mem[(32 * t) + _138 + 32] = idx
                if t == -1:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + 1
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _281 = mem[_138]
    mem[mem[64] + 32] = mem[_138]
    mem[mem[64] + 64 len 32 * _281] = mem[_138 + 32 len 32 * _281]
    return 32, mem[mem[64] + 32 len (32 * _281) + 32]
}

function create(string arg1, address arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f, 0)
    if uint8(roleAdmin[0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f][address(msg.sender)].field_0):
        idx = 0
        while idx < stor2.length:
            _2078 = mem[64]
            mem[mem[64] + 32 len arg1.length] = arg1[all]
            mem[arg1.length + mem[64] + 32] = 0
            _2081 = mem[64]
            mem[mem[64]] = arg1.length + _2078 - mem[64]
            mem[64] = arg1.length + _2078 + 32
            _2083 = sha3(mem[_2081 + 32 len mem[_2081]])
            mem[0] = 2
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[arg1.length + _2078 + 64] = Mask(248, 8, stor2[idx].field_0)
                    mem[arg1.length + _2078 + 32] = uint255(stor2[idx].field_0) * 0.5
                    mem[64] = arg1.length + _2078 + (uint255(stor2[idx].field_0) * 0.5) + 64
                    if sha3(mem[arg1.length + _2078 + 64 len uint255(stor2[idx].field_0) * 0.5]) == _2083:
                        revert with 0, 'a distribution with that name already exists'
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[arg1.length + _2078 + 32] = -arg1.length + -_2078 - 64
                        mem[64] = 0
                        if sha3(mem[arg1.length + _2078 + 64 len -arg1.length + -_2078 - 64]) == _2083:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('a distribution with that name al'),
                                        'ready exists'
                    else:
                        mem[0] = (5 * idx) + sha3(2)
                        s = 0
                        t = sha3((5 * idx) + sha3(2))
                        while s < uint255(stor2[idx].field_0) * 0.5:
                            mem[s + arg1.length + _2078 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _4205 = mem[64]
                        mem[mem[64]] = arg1.length + _2078 + (uint255(stor2[idx].field_0) * 0.5) + -mem[64] + 32
                        mem[64] = arg1.length + _2078 + (uint255(stor2[idx].field_0) * 0.5) + 64
                        if sha3(mem[_4205 + 32 len mem[_4205]]) == _2083:
                            revert with 0, 'a distribution with that name already exists'
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[arg1.length + _2078 + 64] = Mask(248, 8, stor2[idx].field_0)
                    mem[arg1.length + _2078 + 32] = stor2[idx].field_1 % 128
                    mem[64] = arg1.length + _2078 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[arg1.length + _2078 + 64 len stor2[idx].field_1 % 128]) == _2083:
                        revert with 0, 'a distribution with that name already exists'
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[arg1.length + _2078 + 32] = -arg1.length + -_2078 - 64
                        mem[64] = 0
                        if sha3(mem[arg1.length + _2078 + 64 len -arg1.length + -_2078 - 64]) == _2083:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('a distribution with that name al'),
                                        'ready exists'
                    else:
                        mem[0] = (5 * idx) + sha3(2)
                        s = 0
                        t = sha3((5 * idx) + sha3(2))
                        while s < stor2[idx].field_1 % 128:
                            mem[s + arg1.length + _2078 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _4208 = mem[64]
                        mem[mem[64]] = arg1.length + _2078 + stor2[idx].field_1 % 128 + -mem[64] + 32
                        mem[64] = arg1.length + _2078 + stor2[idx].field_1 % 128 + 64
                        if sha3(mem[_4208 + 32 len mem[_4208]]) == _2083:
                            revert with 0, 'a distribution with that name already exists'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2075 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 288
        mem[_2075 + 256] = arg1.length
        mem[_2075 + 288 len arg1.length] = arg1[all]
        mem[_2075 + arg1.length + 288] = 0
        mem[_2075] = _2075 + 256
        mem[_2075 + 32] = arg2
        mem[_2075 + 64] = 0
        mem[_2075 + 96] = 0
        mem[_2075 + 128] = 0
        mem[_2075 + 160] = 1
        mem[_2075 + 192] = msg.sender
        mem[_2075 + 224] = 0
        stor2.length++
        if bool(stor2[stor2.length].field_0):
            if bool(stor2[stor2.length].field_0) == uint255(stor2[stor2.length].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _6140 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_2075 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _6140 - mem[64]])
            else:
                stor2[stor2.length].field_0 = 0
                idx = 0
                while (uint255(stor2[stor2.length].field_0) * 0.5) + 31 / 32 > idx:
                    stor2[(5 * stor2.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _4177 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_2075 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _4177 - mem[64]])
        else:
            if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _6149 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_2075 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _6149 - mem[64]])
            else:
                stor2[stor2.length].field_0 = 0
                idx = 0
                while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                    stor2[(5 * stor2.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _4204 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_2075 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _4204 - mem[64]])
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43, 0)
        if not uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Must have creator or temporary creator role'
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            _2080 = mem[64]
            mem[64] = mem[64] + 256
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                _2091 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor2[idx].field_0) * 0.5) + 32
                mem[_2091] = uint255(stor2[idx].field_0) * 0.5
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2[idx].field_0):
                        if 31 >= uint255(stor2[idx].field_0) * 0.5:
                            mem[_2091 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = (5 * idx) + sha3(2)
                            mem[_2091 + 32] = stor2[idx].field_0
                            s = _2091 + 32
                            t = sha3(mem[0])
                            while _2091 + (uint255(stor2[idx].field_0) * 0.5) > s:
                                mem[s + 32] = roleMember[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor2[idx].field_1 % 128:
                        if 31 >= stor2[idx].field_1 % 128:
                            mem[_2091 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = (5 * idx) + sha3(2)
                            mem[_2091 + 32] = stor2[idx].field_0
                            s = _2091 + 32
                            t = sha3(mem[0])
                            while _2091 + stor2[idx].field_1 % 128 > s:
                                mem[s + 32] = roleMember[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2080] = _2091
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                _2096 = mem[64]
                mem[64] = mem[64] + ceil32(stor2[idx].field_1 % 128) + 32
                mem[_2096] = stor2[idx].field_1 % 128
                if bool(stor2[idx].field_0):
                    if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor2[idx].field_0):
                        if 31 >= uint255(stor2[idx].field_0) * 0.5:
                            mem[_2096 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = (5 * idx) + sha3(2)
                            mem[_2096 + 32] = stor2[idx].field_0
                            s = _2096 + 32
                            t = sha3(mem[0])
                            while _2096 + (uint255(stor2[idx].field_0) * 0.5) > s:
                                mem[s + 32] = roleMember[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor2[idx].field_1 % 128:
                        if 31 >= stor2[idx].field_1 % 128:
                            mem[_2096 + 32] = 256 * Mask(248, 0, stor2[idx].field_8)
                        else:
                            mem[0] = (5 * idx) + sha3(2)
                            mem[_2096 + 32] = stor2[idx].field_0
                            s = _2096 + 32
                            t = sha3(mem[0])
                            while _2096 + stor2[idx].field_1 % 128 > s:
                                mem[s + 32] = roleMember[t].field_0
                                s = s + 32
                                t = t + 1
                                continue 
                mem[_2080] = _2096
            mem[_2080 + 32] = address(stor2[idx].field_256)
            mem[_2080 + 64] = stor2[idx].field_512
            mem[_2080 + 96] = stor2[idx].field_768
            mem[_2080 + 128] = bool(uint8(stor2[idx].field_1024))
            mem[_2080 + 160] = bool(uint8(stor2[idx].field_1032))
            mem[_2080 + 192] = address(stor2[idx].field_1040)
            mem[_2080 + 224] = bool(uint8(stor2[idx].field_1200))
            if uint8(stor2[idx].field_1032):
                if address(stor2[idx].field_1040) == msg.sender:
                    if not uint8(stor2[idx].field_1200):
                        revert with 0, 'Temporary creator cannot call create more than once'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor2.length:
            _4146 = mem[64]
            mem[mem[64] + 32 len arg1.length] = arg1[all]
            mem[arg1.length + mem[64] + 32] = 0
            _4211 = mem[64]
            mem[mem[64]] = arg1.length + _4146 - mem[64]
            mem[64] = arg1.length + _4146 + 32
            _4213 = sha3(mem[_4211 + 32 len mem[_4211]])
            mem[0] = 2
            if bool(stor2[idx].field_0):
                if bool(stor2[idx].field_0) == uint255(stor2[idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[arg1.length + _4146 + 64] = Mask(248, 8, stor2[idx].field_0)
                    mem[arg1.length + _4146 + 32] = uint255(stor2[idx].field_0) * 0.5
                    mem[64] = arg1.length + _4146 + (uint255(stor2[idx].field_0) * 0.5) + 64
                    if sha3(mem[arg1.length + _4146 + 64 len uint255(stor2[idx].field_0) * 0.5]) == _4213:
                        revert with 0, 'a distribution with that name already exists'
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[arg1.length + _4146 + 32] = -arg1.length + -_4146 - 64
                        mem[64] = 0
                        if sha3(mem[arg1.length + _4146 + 64 len -arg1.length + -_4146 - 64]) == _4213:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('a distribution with that name al'),
                                        'ready exists'
                    else:
                        mem[0] = (5 * idx) + sha3(2)
                        s = 0
                        t = sha3((5 * idx) + sha3(2))
                        while s < uint255(stor2[idx].field_0) * 0.5:
                            mem[s + arg1.length + _4146 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _6204 = mem[64]
                        mem[mem[64]] = arg1.length + _4146 + (uint255(stor2[idx].field_0) * 0.5) + -mem[64] + 32
                        mem[64] = arg1.length + _4146 + (uint255(stor2[idx].field_0) * 0.5) + 64
                        if sha3(mem[_6204 + 32 len mem[_6204]]) == _4213:
                            revert with 0, 'a distribution with that name already exists'
            else:
                if bool(stor2[idx].field_0) == stor2[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor2[idx].field_0):
                    mem[arg1.length + _4146 + 64] = Mask(248, 8, stor2[idx].field_0)
                    mem[arg1.length + _4146 + 32] = stor2[idx].field_1 % 128
                    mem[64] = arg1.length + _4146 + stor2[idx].field_1 % 128 + 64
                    if sha3(mem[arg1.length + _4146 + 64 len stor2[idx].field_1 % 128]) == _4213:
                        revert with 0, 'a distribution with that name already exists'
                else:
                    if bool(stor2[idx].field_0) != 1:
                        mem[arg1.length + _4146 + 32] = -arg1.length + -_4146 - 64
                        mem[64] = 0
                        if sha3(mem[arg1.length + _4146 + 64 len -arg1.length + -_4146 - 64]) == _4213:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        '',
                                        0,
                                        uint32('a distribution with that name al'),
                                        'ready exists'
                    else:
                        mem[0] = (5 * idx) + sha3(2)
                        s = 0
                        t = sha3((5 * idx) + sha3(2))
                        while s < stor2[idx].field_1 % 128:
                            mem[s + arg1.length + _4146 + 64] = stor[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        _6207 = mem[64]
                        mem[mem[64]] = arg1.length + _4146 + stor2[idx].field_1 % 128 + -mem[64] + 32
                        mem[64] = arg1.length + _4146 + stor2[idx].field_1 % 128 + 64
                        if sha3(mem[_6207 + 32 len mem[_6207]]) == _4213:
                            revert with 0, 'a distribution with that name already exists'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _4143 = mem[64]
        mem[64] = mem[64] + ceil32(arg1.length) + 288
        mem[_4143 + 256] = arg1.length
        mem[_4143 + 288 len arg1.length] = arg1[all]
        mem[_4143 + arg1.length + 288] = 0
        mem[_4143] = _4143 + 256
        mem[_4143 + 32] = arg2
        mem[_4143 + 64] = 0
        mem[_4143 + 96] = 0
        mem[_4143 + 128] = 0
        mem[_4143 + 160] = 1
        mem[_4143 + 192] = msg.sender
        mem[_4143 + 224] = 0
        stor2.length++
        if bool(stor2[stor2.length].field_0):
            if bool(stor2[stor2.length].field_0) == uint255(stor2[stor2.length].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _8044 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_4143 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _8044 - mem[64]])
            else:
                stor2[stor2.length].field_0 = 0
                idx = 0
                while (uint255(stor2[stor2.length].field_0) * 0.5) + 31 / 32 > idx:
                    stor2[(5 * stor2.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _6176 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_4143 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _6176 - mem[64]])
        else:
            if bool(stor2[stor2.length].field_0) == stor2[stor2.length].field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor2[stor2.length][].field_0 = Array(len=arg1.length, data=arg1[all])
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _8053 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_4143 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _8053 - mem[64]])
            else:
                stor2[stor2.length].field_0 = 0
                idx = 0
                while stor2[stor2.length].field_1 % 128 + 31 / 32 > idx:
                    stor2[(5 * stor2.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor4057[stor2.length] = arg2
                stor4057[stor2.length] = 0
                stor4057[stor2.length] = 0
                uint8(stor4057[stor2.length].field_0) = 0
                uint8(stor4057[stor2.length].field_8) = 1
                address(stor4057[stor2.length].field_16) = msg.sender
                Mask(80, 0, stor4057[stor2.length].field_176) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                Mask(72, 0, stor4057[stor2.length].field_184) = 0
                stor3.length++
                deposits.length++
                _6203 = mem[64]
                mem[mem[64] len ceil32(arg1.length)] = arg1[all], mem[_4143 + arg1.length + 288 len ceil32(arg1.length) - arg1.length]
                if ceil32(arg1.length) <= arg1.length:
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length])
                else:
                    mem[arg1.length + mem[64]] = 0
                    if stor2.length < 1:
                        revert with 0, 17
                    emit 0x618eccac: (uint64(arg2) << 96), msg.sender, stor2.length - 1, sha3(mem[mem[64] len arg1.length + _6203 - mem[64]])
    if stor2.length - 1 >= stor2.length:
        revert with 0, 50
    if not uint8(roleAdmin[0x828634d95e775031b9ff576b159a8509d3053581a8c9c4d7d86899e0afcd882f][address(msg.sender)].field_0):
        if not uint8(roleAdmin[0xe42d265ea63d7fedc4c1af282050a00878aa17560cbe155942f83f4a27a46b43][address(msg.sender)].field_0):
            revert with 0, 'Must have creator or temporary creator role'
        if address(stor2[stor2.length].field_0) != msg.sender:
            revert with 0, 'Can only add contributors to your own distribution'
        if bool(uint8(stor2[stor2.length].field_0)) != 1:
            revert with 0, 'Distribution must be in setup mode'
    if uint8(stor2[stor2.length].field_0):
        revert with 0, 'Distribution has been abandoned'
    if not arg3.length:
        revert with 0, 'must have contributors'
    if arg4.length != arg3.length:
        revert with 0, 'contributors and amounts must be same length'
    if arg3.length > 200:
        revert with 0, 'cannot process more than 200 at once'
    if stor2.length - 1 >= stor3.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < arg4.length:
        if cd[((32 * idx) + arg4 + 36)] <= 0:
            revert with 0, 'cannot contribute zero amount'
        if idx >= arg3.length:
            revert with 0, 50
        require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
        mem[32] = sha3(stor2.length - 1, 5)
        if userInfo[stor2.length - 1][address(cd[((32 * idx) + arg3 + 36)])].field_256 != 0:
            revert with 0, 'duplicate contributor not allowed'
        if idx >= arg4.length:
            revert with 0, 50
        if s > !cd[((32 * idx) + arg4 + 36)]:
            revert with 0, 17
        if idx >= arg4.length:
            revert with 0, 50
        userInfo[stor2.length - 1][address(cd[((32 * idx) + arg3 + 36)])].field_256 = cd[((32 * idx) + arg4 + 36)]
        if idx >= arg3.length:
            revert with 0, 50
        require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
        stor3[stor2.length].field_0++
        mem[0] = sha3(3) + stor2.length - 1
        address(stor[stor3[stor2.length].field_0 + sha3(('name', 'stor3', 3) + stor2.length - 1)].field_0) = address(cd[((32 * idx) + arg3 + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[((32 * idx) + arg4 + 36)]
        continue 
    if stor2[stor2.length].field_0 > !(s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length):
        revert with 0, 17
    stor2[stor2.length].field_0 += s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length
    emit 0x4ec1893b: arg3.length, msg.sender, stor2.length - 1
}



}
