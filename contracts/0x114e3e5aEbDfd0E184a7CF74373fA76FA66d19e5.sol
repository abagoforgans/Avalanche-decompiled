contract main {




// =====================  Runtime code  =====================


const sub_7f9e9b68(?) = 0x22bdb532d89c3f536d0ad987578e8cce1b293cc33ed2d1cad423649665483132

const sub_8b646bbe(?) = 0x20280dc25f6be9632332945e993f5421528666989bec87f3720eb06a441e4cfa

const minterRole = 0x39eb9ec2059d897c44a17440c762c429de204f6fddd727156ca52b8da086a6f7

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
array of struct transactions;
array of address listeners;
uint256 TOTAL_GONS;
uint256 stor5;
uint8 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
mapping of uint8 stor9;
array of address sub_bee2ddc2;
uint256 rebaseSupply;
array of struct stor12;
array of struct stor13;
uint8 decimals;

function totalSupply() payable {
    return rebaseSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function decimals() payable {
    return decimals
}

function rebaseSupply() payable {
    idx = 0
    while idx < sub_bee2ddc2.length:
        mem[0] = 10
        if stor5 != 0:
            mem[0] = sub_bee2ddc2[idx]
            mem[32] = 7
            if not stor5:
                revert with 0, 18
            if 0 > !(stor7[stor10[idx]] / stor5):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if rebaseSupply < 0:
        revert with 0, 17
    return rebaseSupply
}

function rebaseAllowed() payable {
    return bool(stor6)
}

function numExcluded() payable {
    return sub_bee2ddc2.length
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

function transactionsSize() payable {
    return transactions.length
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < transactions.length
    return bool(transactions[arg1].field_0), transactions[arg1].field_0, transactions[arg1].field_168 << 224
}

function listeners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < listeners.length
    return listeners[arg1]
}

function sub_bee2ddc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_bee2ddc2.length
    return sub_bee2ddc2[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function TOTAL_GONS() payable {
    return TOTAL_GONS
}

function listenersSize() payable {
    return listeners.length
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == stor5:
        return 0
    if not stor5:
        revert with 0, 18
    return (stor7[address(arg1)] / stor5)
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 and stor5 > -1 / arg2:
        revert with 0, 17
    if arg2 * stor5 > stor7[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    stor7[address(msg.sender)] += -1 * arg2 * stor5
    if stor7[arg1] > !(arg2 * stor5):
        revert with 0, 17
    stor7[address(arg1)] = stor7[arg1] + (arg2 * stor5)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function disableRebase() payable {
    if roleAdmin[address(msg.sender)].field_0:
        stor6 = 0
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function setTransactionEnabled(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[address(msg.sender)].field_0:
        if arg1 >= transactions.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'index must be in range of stored tx list'
        transactions[arg1].field_0 = uint8(arg2)
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 and stor5 > -1 / arg3:
        revert with 0, 17
    if arg3 * stor5 > stor7[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    stor7[address(arg1)] += -1 * arg3 * stor5
    if stor7[arg2] > !(arg3 * stor5):
        revert with 0, 17
    stor7[address(arg2)] = stor7[arg2] + (arg3 * stor5)
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
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

function addListener(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        if 10 < listeners.length:
            revert with 0, 'Too many listeners'
        idx = 0
        while idx < listeners.length:
            mem[0] = 3
            if listeners[idx] == arg1:
                revert with 0, 'Listener exists'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        listeners.length++
        listeners[listeners.length] = arg1
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[address(arg1)][address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg2 and stor5 > -1 / arg2:
        revert with 0, 17
    if stor7[address(arg1)] < arg2 * stor5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    if arg2 and stor5 > -1 / arg2:
        revert with 0, 17
    if stor7[address(arg1)] < arg2 * stor5:
        revert with 0, 17
    stor7[address(arg1)] += -1 * arg2 * stor5
    if stor5 and arg2 > -1 / stor5:
        revert with 0, 17
    if TOTAL_GONS < stor5 * arg2:
        revert with 0, 17
    TOTAL_GONS += -1 * stor5 * arg2
    if rebaseSupply < arg2:
        revert with 0, 17
    rebaseSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function grantRebaseExclusion(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x22bdb532d89c3f536d0ad987578e8cce1b293cc33ed2d1cad423649665483132][address(msg.sender)].field_0:
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
            s = 0x22bdb532d89c3f536d0ad987578e8cce1b293cc33ed2d1cad423649665483132
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
    if stor9[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if 100 < sub_bee2ddc2.length:
        revert with 0, 'Too many excluded accounts'
    stor9[address(arg1)] = 1
    sub_bee2ddc2.length++
    sub_bee2ddc2[sub_bee2ddc2.length] = arg1
    emit GrantExclusion(arg1);
}

function removeListener(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        idx = 0
        while idx < listeners.length:
            mem[0] = 3
            if listeners[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if listeners.length < 1:
                revert with 0, 17
            if listeners.length - 1 >= listeners.length:
                revert with 0, 50
            if idx >= listeners.length:
                revert with 0, 50
            listeners[idx] = listeners[listeners.length]
            if not listeners.length:
                revert with 0, 49
            listeners[listeners.length] = 0
            listeners.length--
        revert with 0, 'Listener not found'
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
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function revokeRebaseExclusion(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x22bdb532d89c3f536d0ad987578e8cce1b293cc33ed2d1cad423649665483132][address(msg.sender)].field_0:
        if not stor9[address(arg1)]:
            revert with 0, 'Account is not already excluded'
        idx = 0
        while idx < sub_bee2ddc2.length:
            mem[0] = 10
            if sub_bee2ddc2[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_bee2ddc2.length < 1:
                revert with 0, 17
            if sub_bee2ddc2.length - 1 >= sub_bee2ddc2.length:
                revert with 0, 50
            if idx >= sub_bee2ddc2.length:
                revert with 0, 50
            sub_bee2ddc2[idx] = sub_bee2ddc2[sub_bee2ddc2.length]
            stor9[address(arg1)] = 0
            if not sub_bee2ddc2.length:
                revert with 0, 49
            sub_bee2ddc2[sub_bee2ddc2.length] = 0
            sub_bee2ddc2.length--
            emit RevokeExclusion(arg1);
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
        s = 0x22bdb532d89c3f536d0ad987578e8cce1b293cc33ed2d1cad423649665483132
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

function sub_5244ea37(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg2.length)) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg2.length)) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg2.length)) + 289 len 66], 0, 0 >> 928,
                    0
    if 10 < transactions.length:
        revert with 0, 'Too many transactions'
    transactions.length++
    transactions[transactions.length].field_0 = 1
    transactions[transactions.length].field_8 = address(arg1)
    transactions[transactions.length].field_168 = 0
    transactions[transactions.length].field_200 = 0
}

function removeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
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
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if arg1 >= transactions.length:
        revert with 0, 'index out of range'
    if transactions.length < 1:
        revert with 0, 17
    if arg1 < transactions.length - 1:
        if transactions.length < 1:
            revert with 0, 17
        if transactions.length - 1 >= transactions.length:
            revert with 0, 50
        if arg1 >= transactions.length:
            revert with 0, 50
        transactions[arg1].field_0 = uint8(bool(transactions[transactions.length].field_0))
        transactions[arg1].field_0 = uint8(bool(transactions[transactions.length].field_0))
        transactions[arg1].field_8 = transactions[transactions.length].field_0
        transactions[arg1].field_168 = Mask(88, 168, bool(transactions[transactions.length].field_0)) >> 168
        transactions[arg1].field_0 = uint8(bool(transactions[transactions.length].field_0))
        transactions[arg1].field_8 = transactions[transactions.length].field_0
        transactions[arg1].field_168 = transactions[transactions.length].field_0
        transactions[arg1].field_200 = Mask(56, 200, bool(transactions[transactions.length].field_0)) >> 200
        transactions[arg1].field_200 = 0
    if not transactions.length:
        revert with 0, 49
    transactions[transactions.length].field_0 = 0
    transactions.length--
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0x39eb9ec2059d897c44a17440c762c429de204f6fddd727156ca52b8da086a6f7][address(msg.sender)].field_0:
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
            s = 0x39eb9ec2059d897c44a17440c762c429de204f6fddd727156ca52b8da086a6f7
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
    if 0 == stor5:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if arg2 <= 0:
            revert with 0, 'ERC20: Can't mint 0 tokens'
        if stor5 and arg2 > -1 / stor5:
            revert with 0, 17
        if TOTAL_GONS > !(stor5 * arg2):
            revert with 0, 17
        TOTAL_GONS += stor5 * arg2
        if rebaseSupply > !arg2:
            revert with 0, 17
        rebaseSupply += arg2
        if arg2 and stor5 > -1 / arg2:
            revert with 0, 17
        if stor7[address(arg1)] > !(arg2 * stor5):
            revert with 0, 17
        stor7[address(arg1)] += arg2 * stor5
        emit Transfer(arg2, 0, arg1);
        if 0 == stor5:
            return 0
        if not stor5:
            revert with 0, 18
        return (stor7[address(arg1)] / stor5 > 0)
    if not stor5:
        revert with 0, 18
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 <= 0:
        revert with 0, 'ERC20: Can't mint 0 tokens'
    if stor5 and arg2 > -1 / stor5:
        revert with 0, 17
    if TOTAL_GONS > !(stor5 * arg2):
        revert with 0, 17
    TOTAL_GONS += stor5 * arg2
    if rebaseSupply > !arg2:
        revert with 0, 17
    rebaseSupply += arg2
    if arg2 and stor5 > -1 / arg2:
        revert with 0, 17
    if stor7[address(arg1)] > !(arg2 * stor5):
        revert with 0, 17
    stor7[address(arg1)] += arg2 * stor5
    emit Transfer(arg2, 0, arg1);
    if 0 == stor5:
        return (0 > stor7[address(arg1)] / stor5)
    if not stor5:
        revert with 0, 18
    return (stor7[address(arg1)] / stor5 > stor7[address(arg1)] / stor5)
}

function name() payable {
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor12.length):
            if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12.length):
                if 31 < uint255(stor12.length) * 0.5:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor12.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        else:
            if bool(stor12.length) == stor12.length.field_1 < 32:
                revert with 0, 34
            if stor12.length.field_1:
                if 31 < stor12.length.field_1:
                    mem[128] = uint256(stor12.field_0)
                    idx = 128
                    s = 0
                    while stor12.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor12[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)])
                mem[128] = 256 * stor12.length.field_8
        mem[ceil32(uint255(stor12.length) * 0.5) + 192 len ceil32(uint255(stor12.length) * 0.5)] = mem[128 len ceil32(uint255(stor12.length) * 0.5)]
        if ceil32(uint255(stor12.length) * 0.5) > uint255(stor12.length) * 0.5:
            mem[(uint255(stor12.length) * 0.5) + ceil32(uint255(stor12.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor12.length), data=mem[128 len ceil32(uint255(stor12.length) * 0.5)], mem[(2 * ceil32(uint255(stor12.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor12.length) * 0.5)]), 
    if bool(stor12.length) == stor12.length.field_1 < 32:
        revert with 0, 34
    if bool(stor12.length):
        if bool(stor12.length) == uint255(stor12.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12.length):
            if 31 < uint255(stor12.length) * 0.5:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while (uint255(stor12.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    else:
        if bool(stor12.length) == stor12.length.field_1 < 32:
            revert with 0, 34
        if stor12.length.field_1:
            if 31 < stor12.length.field_1:
                mem[128] = uint256(stor12.field_0)
                idx = 128
                s = 0
                while stor12.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor12[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)])
            mem[128] = 256 * stor12.length.field_8
    mem[ceil32(stor12.length.field_1) + 192 len ceil32(stor12.length.field_1)] = mem[128 len ceil32(stor12.length.field_1)]
    if ceil32(stor12.length.field_1) > stor12.length.field_1:
        mem[stor12.length.field_1 + ceil32(stor12.length.field_1) + 192] = 0
    return Array(len=stor12.length % 128, data=mem[128 len ceil32(stor12.length.field_1)], mem[(2 * ceil32(stor12.length.field_1)) + 192 len 2 * ceil32(stor12.length.field_1)]), 
}

function symbol() payable {
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor13.length):
                if 31 < uint255(stor13.length) * 0.5:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor13.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(uint255(stor13.length) * 0.5) + 192 len ceil32(uint255(stor13.length) * 0.5)] = mem[128 len ceil32(uint255(stor13.length) * 0.5)]
        if ceil32(uint255(stor13.length) * 0.5) > uint255(stor13.length) * 0.5:
            mem[(uint255(stor13.length) * 0.5) + ceil32(uint255(stor13.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length), data=mem[128 len ceil32(uint255(stor13.length) * 0.5)], mem[(2 * ceil32(uint255(stor13.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor13.length) * 0.5)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == uint255(stor13.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor13.length):
            if 31 < uint255(stor13.length) * 0.5:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while (uint255(stor13.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function rebase(uint256 arg1, int256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = msg.sender
    mem[32] = sha3(0x20280dc25f6be9632332945e993f5421528666989bec87f3720eb06a441e4cfa, 0)
    if not roleAdmin[0x20280dc25f6be9632332945e993f5421528666989bec87f3720eb06a441e4cfa][address(msg.sender)].field_0:
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
            s = 0x20280dc25f6be9632332945e993f5421528666989bec87f3720eb06a441e4cfa
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
    if not stor6:
        revert with 0, 'Rebase is not allowed'
    idx = 0
    while idx < sub_bee2ddc2.length:
        mem[0] = 10
        if stor5 != 0:
            mem[0] = sub_bee2ddc2[idx]
            mem[32] = 7
            if not stor5:
                revert with 0, 18
            if 0 > !(stor7[stor10[idx]] / stor5):
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if rebaseSupply < 0:
        revert with 0, 17
    if not arg2:
        mem[96] = rebaseSupply
        emit LogRebase(rebaseSupply, arg1);
        idx = 0
        while idx < sub_bee2ddc2.length:
            mem[0] = 10
            if stor5 != 0:
                mem[0] = sub_bee2ddc2[idx]
                mem[32] = 7
                if not stor5:
                    revert with 0, 18
                if 0 > !(stor7[stor10[idx]] / stor5):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if rebaseSupply < 0:
            revert with 0, 17
        idx = 0
        while idx < transactions.length:
            mem[0] = 2
            if transactions[idx].field_0:
                _2431 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_2431 + 32] = transactions[idx].field_168 << 224 or mem[_2431 + 36 len 28]
                s = 0
                while s < mem[_2431]:
                    mem[s + _2431 + 36] = mem[s + _2431 + 32]
                    s = s + 32
                    continue 
                if ceil32(mem[_2431]) <= mem[_2431]:
                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_2431] + _2431 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Orchestrator: Transaction Failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'Orchestrator: Transaction Failed'
                    else:
                        _3321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3321] = return_data.size
                        mem[_3321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Orchestrator: Transaction Failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3321 + 32] == bool(mem[_3321 + 32])
                            if not mem[_3321 + 32]:
                                revert with 0, 'Orchestrator: Transaction Failed'
                else:
                    mem[mem[_2431] + _2431 + 36] = 0
                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len mem[_2431] + _2431 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'Orchestrator: Transaction Failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'Orchestrator: Transaction Failed'
                    else:
                        _3322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_3322] = return_data.size
                        mem[_3322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'Orchestrator: Transaction Failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_3322 + 32] == bool(mem[_3322 + 32])
                            if not mem[_3322 + 32]:
                                revert with 0, 'Orchestrator: Transaction Failed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < sub_bee2ddc2.length:
            mem[0] = 10
            if stor5 != 0:
                mem[0] = sub_bee2ddc2[idx]
                mem[32] = 7
                if not stor5:
                    revert with 0, 18
                if 0 > !(stor7[stor10[idx]] / stor5):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if rebaseSupply < 0:
            revert with 0, 17
        if not rebaseSupply:
            mem[96] = rebaseSupply
            emit LogRebase(rebaseSupply, arg1);
            idx = 0
            while idx < sub_bee2ddc2.length:
                mem[0] = 10
                if stor5 != 0:
                    mem[0] = sub_bee2ddc2[idx]
                    mem[32] = 7
                    if not stor5:
                        revert with 0, 18
                    if 0 > !(stor7[stor10[idx]] / stor5):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if rebaseSupply < 0:
                revert with 0, 17
            idx = 0
            while idx < transactions.length:
                mem[0] = 2
                if transactions[idx].field_0:
                    _3314 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_3314 + 32] = transactions[idx].field_168 << 224 or mem[_3314 + 36 len 28]
                    s = 0
                    while s < mem[_3314]:
                        mem[s + _3314 + 36] = mem[s + _3314 + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_3314]) <= mem[_3314]:
                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_3314] + _3314 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Orchestrator: Transaction Failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'Orchestrator: Transaction Failed'
                        else:
                            _4071 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4071] = return_data.size
                            mem[_4071 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Orchestrator: Transaction Failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_4071 + 32] == bool(mem[_4071 + 32])
                                if not mem[_4071 + 32]:
                                    revert with 0, 'Orchestrator: Transaction Failed'
                    else:
                        mem[mem[_3314] + _3314 + 36] = 0
                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_3314] + _3314 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Orchestrator: Transaction Failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'Orchestrator: Transaction Failed'
                        else:
                            _4072 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4072] = return_data.size
                            mem[_4072 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Orchestrator: Transaction Failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_4072 + 32] == bool(mem[_4072 + 32])
                                if not mem[_4072 + 32]:
                                    revert with 0, 'Orchestrator: Transaction Failed'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if sub_bee2ddc2.length > test266151307():
                revert with 0, 65
            mem[96] = sub_bee2ddc2.length
            mem[64] = (32 * sub_bee2ddc2.length) + 128
            if not sub_bee2ddc2.length:
                idx = 0
                while idx < sub_bee2ddc2.length:
                    mem[0] = 10
                    if 0 == stor5:
                        if idx >= sub_bee2ddc2.length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 0
                    else:
                        mem[0] = sub_bee2ddc2[idx]
                        mem[32] = 7
                        if not stor5:
                            revert with 0, 18
                        if idx >= sub_bee2ddc2.length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor7[stor10[idx]] / stor5
                        if stor7[stor10[idx]] / stor5:
                            if not sub_bee2ddc2[idx]:
                                revert with 0, 'ERC20: burn from the zero address'
                            if stor7[stor10[idx]] / stor5 and stor5 > -1 / stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            if stor7[stor10[idx]] < stor7[stor10[idx]] / stor5 * stor5:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            if stor7[stor10[idx]] / stor5 and stor5 > -1 / stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            if stor7[stor10[idx]] < stor7[stor10[idx]] / stor5 * stor5:
                                revert with 0, 17
                            mem[0] = sub_bee2ddc2[idx]
                            mem[32] = 7
                            stor7[stor10[idx]] += -1 * stor7[stor10[idx]] / stor5 * stor5
                            if stor5 and stor7[stor10[idx]] / stor5 > -1 / stor5:
                                revert with 0, 17
                            if TOTAL_GONS < stor5 * stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            TOTAL_GONS += -1 * stor5 * stor7[stor10[idx]] / stor5
                            if rebaseSupply < stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            rebaseSupply -= stor7[stor10[idx]] / stor5
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 >= 0:
                    if rebaseSupply > !arg2:
                        revert with 0, 17
                    rebaseSupply += arg2
                    if test266151307() >= rebaseSupply:
                        if not rebaseSupply:
                            revert with 0, 18
                        stor5 = TOTAL_GONS / rebaseSupply
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            if idx >= sub_bee2ddc2.length:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if not sub_bee2ddc2[idx]:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if mem[(32 * idx) + 128] <= 0:
                                    revert with 0, 'ERC20: Can't mint 0 tokens'
                                if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                    revert with 0, 17
                                if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                    revert with 0, 17
                                TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                if rebaseSupply > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                rebaseSupply += mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                    revert with 0, 17
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                        emit LogRebase(rebaseSupply, arg1);
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            mem[0] = 10
                            if stor5 != 0:
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                if not stor5:
                                    revert with 0, 18
                                if 0 > !(stor7[stor10[idx]] / stor5):
                                    revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if rebaseSupply < 0:
                            revert with 0, 17
                        idx = 0
                        while idx < transactions.length:
                            mem[0] = 2
                            if transactions[idx].field_0:
                                _4632 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_4632 + 32] = transactions[idx].field_168 << 224 or mem[_4632 + 36 len 28]
                                s = 0
                                while s < mem[_4632]:
                                    mem[s + _4632 + 36] = mem[s + _4632 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_4632]) <= mem[_4632]:
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4632] + _4632 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5229 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5229] = return_data.size
                                        mem[_5229 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5229 + 32] == bool(mem[_5229 + 32])
                                            if not mem[_5229 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                else:
                                    mem[mem[_4632] + _4632 + 36] = 0
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4632] + _4632 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5230 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5230] = return_data.size
                                        mem[_5230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5230 + 32] == bool(mem[_5230 + 32])
                                            if not mem[_5230 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        rebaseSupply = test266151307()
                        if not rebaseSupply:
                            revert with 0, 18
                        stor5 = TOTAL_GONS / rebaseSupply
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            if idx >= sub_bee2ddc2.length:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if not sub_bee2ddc2[idx]:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if mem[(32 * idx) + 128] <= 0:
                                    revert with 0, 'ERC20: Can't mint 0 tokens'
                                if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                    revert with 0, 17
                                if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                    revert with 0, 17
                                TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                if rebaseSupply > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                rebaseSupply += mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                    revert with 0, 17
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                        emit LogRebase(rebaseSupply, arg1);
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            mem[0] = 10
                            if stor5 != 0:
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                if not stor5:
                                    revert with 0, 18
                                if 0 > !(stor7[stor10[idx]] / stor5):
                                    revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if rebaseSupply < 0:
                            revert with 0, 17
                        idx = 0
                        while idx < transactions.length:
                            mem[0] = 2
                            if transactions[idx].field_0:
                                _4638 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_4638 + 32] = transactions[idx].field_168 << 224 or mem[_4638 + 36 len 28]
                                s = 0
                                while s < mem[_4638]:
                                    mem[s + _4638 + 36] = mem[s + _4638 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_4638]) <= mem[_4638]:
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4638] + _4638 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5231 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5231] = return_data.size
                                        mem[_5231 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5231 + 32] == bool(mem[_5231 + 32])
                                            if not mem[_5231 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                else:
                                    mem[mem[_4638] + _4638 + 36] = 0
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4638] + _4638 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5232 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5232] = return_data.size
                                        mem[_5232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5232 + 32] == bool(mem[_5232 + 32])
                                            if not mem[_5232 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if arg2 >= 0:
                        if rebaseSupply < arg2:
                            revert with 0, 17
                        rebaseSupply -= arg2
                        if test266151307() >= rebaseSupply:
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4656 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4656 + 32] = transactions[idx].field_168 << 224 or mem[_4656 + 36 len 28]
                                    s = 0
                                    while s < mem[_4656]:
                                        mem[s + _4656 + 36] = mem[s + _4656 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4656]) <= mem[_4656]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4656] + _4656 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5237 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5237] = return_data.size
                                            mem[_5237 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5237 + 32] == bool(mem[_5237 + 32])
                                                if not mem[_5237 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4656] + _4656 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4656] + _4656 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5238 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5238] = return_data.size
                                            mem[_5238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5238 + 32] == bool(mem[_5238 + 32])
                                                if not mem[_5238 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            rebaseSupply = test266151307()
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4662 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4662 + 32] = transactions[idx].field_168 << 224 or mem[_4662 + 36 len 28]
                                    s = 0
                                    while s < mem[_4662]:
                                        mem[s + _4662 + 36] = mem[s + _4662 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4662]) <= mem[_4662]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4662] + _4662 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5239 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5239] = return_data.size
                                            mem[_5239 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5239 + 32] == bool(mem[_5239 + 32])
                                                if not mem[_5239 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4662] + _4662 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4662] + _4662 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5240 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5240] = return_data.size
                                            mem[_5240 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5240 + 32] == bool(mem[_5240 + 32])
                                                if not mem[_5240 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if rebaseSupply < -arg2:
                            revert with 0, 17
                        rebaseSupply += arg2
                        if test266151307() >= rebaseSupply:
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4644 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4644 + 32] = transactions[idx].field_168 << 224 or mem[_4644 + 36 len 28]
                                    s = 0
                                    while s < mem[_4644]:
                                        mem[s + _4644 + 36] = mem[s + _4644 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4644]) <= mem[_4644]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4644] + _4644 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5233 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5233] = return_data.size
                                            mem[_5233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5233 + 32] == bool(mem[_5233 + 32])
                                                if not mem[_5233 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4644] + _4644 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4644] + _4644 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5234 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5234] = return_data.size
                                            mem[_5234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5234 + 32] == bool(mem[_5234 + 32])
                                                if not mem[_5234 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            rebaseSupply = test266151307()
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4650 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4650 + 32] = transactions[idx].field_168 << 224 or mem[_4650 + 36 len 28]
                                    s = 0
                                    while s < mem[_4650]:
                                        mem[s + _4650 + 36] = mem[s + _4650 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4650]) <= mem[_4650]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4650] + _4650 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5235 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5235] = return_data.size
                                            mem[_5235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5235 + 32] == bool(mem[_5235 + 32])
                                                if not mem[_5235 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4650] + _4650 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4650] + _4650 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5236 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5236] = return_data.size
                                            mem[_5236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5236 + 32] == bool(mem[_5236 + 32])
                                                if not mem[_5236 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            else:
                mem[128 len 32 * sub_bee2ddc2.length] = call.data[calldata.size len 32 * sub_bee2ddc2.length]
                idx = 0
                while idx < sub_bee2ddc2.length:
                    mem[0] = 10
                    if 0 == stor5:
                        if idx >= sub_bee2ddc2.length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = 0
                    else:
                        mem[0] = sub_bee2ddc2[idx]
                        mem[32] = 7
                        if not stor5:
                            revert with 0, 18
                        if idx >= sub_bee2ddc2.length:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor7[stor10[idx]] / stor5
                        if stor7[stor10[idx]] / stor5:
                            if not sub_bee2ddc2[idx]:
                                revert with 0, 'ERC20: burn from the zero address'
                            if stor7[stor10[idx]] / stor5 and stor5 > -1 / stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            if stor7[stor10[idx]] < stor7[stor10[idx]] / stor5 * stor5:
                                revert with 0, 'ERC20: burn amount exceeds balance'
                            if stor7[stor10[idx]] / stor5 and stor5 > -1 / stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            if stor7[stor10[idx]] < stor7[stor10[idx]] / stor5 * stor5:
                                revert with 0, 17
                            mem[0] = sub_bee2ddc2[idx]
                            mem[32] = 7
                            stor7[stor10[idx]] += -1 * stor7[stor10[idx]] / stor5 * stor5
                            if stor5 and stor7[stor10[idx]] / stor5 > -1 / stor5:
                                revert with 0, 17
                            if TOTAL_GONS < stor5 * stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            TOTAL_GONS += -1 * stor5 * stor7[stor10[idx]] / stor5
                            if rebaseSupply < stor7[stor10[idx]] / stor5:
                                revert with 0, 17
                            rebaseSupply -= stor7[stor10[idx]] / stor5
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if arg2 >= 0:
                    if rebaseSupply > !arg2:
                        revert with 0, 17
                    rebaseSupply += arg2
                    if test266151307() >= rebaseSupply:
                        if not rebaseSupply:
                            revert with 0, 18
                        stor5 = TOTAL_GONS / rebaseSupply
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            if idx >= sub_bee2ddc2.length:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if not sub_bee2ddc2[idx]:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if mem[(32 * idx) + 128] <= 0:
                                    revert with 0, 'ERC20: Can't mint 0 tokens'
                                if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                    revert with 0, 17
                                if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                    revert with 0, 17
                                TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                if rebaseSupply > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                rebaseSupply += mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                    revert with 0, 17
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                        emit LogRebase(rebaseSupply, arg1);
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            mem[0] = 10
                            if stor5 != 0:
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                if not stor5:
                                    revert with 0, 18
                                if 0 > !(stor7[stor10[idx]] / stor5):
                                    revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if rebaseSupply < 0:
                            revert with 0, 17
                        idx = 0
                        while idx < transactions.length:
                            mem[0] = 2
                            if transactions[idx].field_0:
                                _4668 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_4668 + 32] = transactions[idx].field_168 << 224 or mem[_4668 + 36 len 28]
                                s = 0
                                while s < mem[_4668]:
                                    mem[s + _4668 + 36] = mem[s + _4668 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_4668]) <= mem[_4668]:
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4668] + _4668 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5241 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5241] = return_data.size
                                        mem[_5241 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5241 + 32] == bool(mem[_5241 + 32])
                                            if not mem[_5241 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                else:
                                    mem[mem[_4668] + _4668 + 36] = 0
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4668] + _4668 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5242 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5242] = return_data.size
                                        mem[_5242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5242 + 32] == bool(mem[_5242 + 32])
                                            if not mem[_5242 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        rebaseSupply = test266151307()
                        if not rebaseSupply:
                            revert with 0, 18
                        stor5 = TOTAL_GONS / rebaseSupply
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            if idx >= sub_bee2ddc2.length:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if not sub_bee2ddc2[idx]:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if mem[(32 * idx) + 128] <= 0:
                                    revert with 0, 'ERC20: Can't mint 0 tokens'
                                if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                    revert with 0, 17
                                if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                    revert with 0, 17
                                TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                if rebaseSupply > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                rebaseSupply += mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                    revert with 0, 17
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                        emit LogRebase(rebaseSupply, arg1);
                        idx = 0
                        while idx < sub_bee2ddc2.length:
                            mem[0] = 10
                            if stor5 != 0:
                                mem[0] = sub_bee2ddc2[idx]
                                mem[32] = 7
                                if not stor5:
                                    revert with 0, 18
                                if 0 > !(stor7[stor10[idx]] / stor5):
                                    revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if rebaseSupply < 0:
                            revert with 0, 17
                        idx = 0
                        while idx < transactions.length:
                            mem[0] = 2
                            if transactions[idx].field_0:
                                _4674 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[_4674 + 32] = transactions[idx].field_168 << 224 or mem[_4674 + 36 len 28]
                                s = 0
                                while s < mem[_4674]:
                                    mem[s + _4674 + 36] = mem[s + _4674 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_4674]) <= mem[_4674]:
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4674] + _4674 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5243 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5243] = return_data.size
                                        mem[_5243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5243 + 32] == bool(mem[_5243 + 32])
                                            if not mem[_5243 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                else:
                                    mem[mem[_4674] + _4674 + 36] = 0
                                    call transactions[idx].field_8.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len mem[_4674] + _4674 + -mem[64] + 32]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require mem[128] == bool(mem[128])
                                            if not mem[128]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        _5244 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_5244] = return_data.size
                                        mem[_5244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'Orchestrator: Transaction Failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[_5244 + 32] == bool(mem[_5244 + 32])
                                            if not mem[_5244 + 32]:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if arg2 >= 0:
                        if rebaseSupply < arg2:
                            revert with 0, 17
                        rebaseSupply -= arg2
                        if test266151307() >= rebaseSupply:
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4692 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4692 + 32] = transactions[idx].field_168 << 224 or mem[_4692 + 36 len 28]
                                    s = 0
                                    while s < mem[_4692]:
                                        mem[s + _4692 + 36] = mem[s + _4692 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4692]) <= mem[_4692]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4692] + _4692 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5249 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5249] = return_data.size
                                            mem[_5249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5249 + 32] == bool(mem[_5249 + 32])
                                                if not mem[_5249 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4692] + _4692 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4692] + _4692 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5250 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5250] = return_data.size
                                            mem[_5250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5250 + 32] == bool(mem[_5250 + 32])
                                                if not mem[_5250 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            rebaseSupply = test266151307()
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4698 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4698 + 32] = transactions[idx].field_168 << 224 or mem[_4698 + 36 len 28]
                                    s = 0
                                    while s < mem[_4698]:
                                        mem[s + _4698 + 36] = mem[s + _4698 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4698]) <= mem[_4698]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4698] + _4698 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5251 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5251] = return_data.size
                                            mem[_5251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5251 + 32] == bool(mem[_5251 + 32])
                                                if not mem[_5251 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4698] + _4698 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4698] + _4698 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5252 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5252] = return_data.size
                                            mem[_5252 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5252 + 32] == bool(mem[_5252 + 32])
                                                if not mem[_5252 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                    else:
                        if arg2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if rebaseSupply < -arg2:
                            revert with 0, 17
                        rebaseSupply += arg2
                        if test266151307() >= rebaseSupply:
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4680 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4680 + 32] = transactions[idx].field_168 << 224 or mem[_4680 + 36 len 28]
                                    s = 0
                                    while s < mem[_4680]:
                                        mem[s + _4680 + 36] = mem[s + _4680 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4680]) <= mem[_4680]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4680] + _4680 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5245 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5245] = return_data.size
                                            mem[_5245 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5245 + 32] == bool(mem[_5245 + 32])
                                                if not mem[_5245 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4680] + _4680 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4680] + _4680 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5246 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5246] = return_data.size
                                            mem[_5246 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5246 + 32] == bool(mem[_5246 + 32])
                                                if not mem[_5246 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            rebaseSupply = test266151307()
                            if not rebaseSupply:
                                revert with 0, 18
                            stor5 = TOTAL_GONS / rebaseSupply
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                if idx >= sub_bee2ddc2.length:
                                    revert with 0, 50
                                if mem[(32 * idx) + 128] > 0:
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if idx >= sub_bee2ddc2.length:
                                        revert with 0, 50
                                    if not sub_bee2ddc2[idx]:
                                        revert with 0, 'ERC20: transfer to the zero address'
                                    if mem[(32 * idx) + 128] <= 0:
                                        revert with 0, 'ERC20: Can't mint 0 tokens'
                                    if stor5 and mem[(32 * idx) + 128] > -1 / stor5:
                                        revert with 0, 17
                                    if TOTAL_GONS > !(stor5 * mem[(32 * idx) + 128]):
                                        revert with 0, 17
                                    TOTAL_GONS += stor5 * mem[(32 * idx) + 128]
                                    if rebaseSupply > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    rebaseSupply += mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] and stor5 > -1 / mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    if stor7[stor10[idx]] > !(mem[(32 * idx) + 128] * stor5):
                                        revert with 0, 17
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    stor7[stor10[idx]] += mem[(32 * idx) + 128] * stor5
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            mem[(32 * sub_bee2ddc2.length) + 128] = rebaseSupply
                            emit LogRebase(rebaseSupply, arg1);
                            idx = 0
                            while idx < sub_bee2ddc2.length:
                                mem[0] = 10
                                if stor5 != 0:
                                    mem[0] = sub_bee2ddc2[idx]
                                    mem[32] = 7
                                    if not stor5:
                                        revert with 0, 18
                                    if 0 > !(stor7[stor10[idx]] / stor5):
                                        revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if rebaseSupply < 0:
                                revert with 0, 17
                            idx = 0
                            while idx < transactions.length:
                                mem[0] = 2
                                if transactions[idx].field_0:
                                    _4686 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[_4686 + 32] = transactions[idx].field_168 << 224 or mem[_4686 + 36 len 28]
                                    s = 0
                                    while s < mem[_4686]:
                                        mem[s + _4686 + 36] = mem[s + _4686 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(mem[_4686]) <= mem[_4686]:
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4686] + _4686 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5247 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5247] = return_data.size
                                            mem[_5247 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5247 + 32] == bool(mem[_5247 + 32])
                                                if not mem[_5247 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                    else:
                                        mem[mem[_4686] + _4686 + 36] = 0
                                        call transactions[idx].field_8.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len mem[_4686] + _4686 + -mem[64] + 32]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                        else:
                                            _5248 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_5248] = return_data.size
                                            mem[_5248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'Orchestrator: Transaction Failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_5248 + 32] == bool(mem[_5248 + 32])
                                                if not mem[_5248 + 32]:
                                                    revert with 0, 'Orchestrator: Transaction Failed'
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
    idx = 0
    while idx < listeners.length:
        mem[0] = 3
        mem[mem[64]] = 0x5ccb350400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = rebaseSupply
        mem[mem[64] + 68] = rebaseSupply
        mem[mem[64] + 100] = rebaseSupply
        mem[mem[64] + 132] = rebaseSupply
        require ext_code.size(listeners[idx])
        call listeners[idx].tokenRebased(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args this.address, rebaseSupply, rebaseSupply, rebaseSupply, rebaseSupply
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return rebaseSupply
}



}
