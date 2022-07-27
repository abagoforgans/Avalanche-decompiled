contract main {




// =====================  Runtime code  =====================


const decimals = 1

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
mapping of struct roleAdmin;
mapping of struct sub_38397b37;
uint128 stor7;
uint256 stor7;
uint256 sub_5706e8e7;

function totalSupply() {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function sub_38397b37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_38397b37[address(arg1)].field_80 % 72057594037927936
}

function sub_5706e8e7(?) {
    return sub_5706e8e7
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function approve(address arg1, uint256 arg2) {
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

function addReward() payable {
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DroppingNowToken: reward cannot be 0'
    if totalSupply > !sub_5706e8e7:
        revert with 'NH{q', 17
    if totalSupply + sub_5706e8e7 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DroppingNowToken: no reward recipients'
    if not totalSupply + sub_5706e8e7:
        revert with 'NH{q', 18
    if uint256(stor7) > !(msg.value / totalSupply + sub_5706e8e7):
        revert with 'NH{q', 17
    uint256(stor7) += msg.value / totalSupply + sub_5706e8e7
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_350128e0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
}

function rewardBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(arg1)] > !sub_38397b37[address(arg1)].field_80 % 72057594037927936:
        revert with 'NH{q', 17
    if not balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
        return Mask(120, 0, sub_38397b37[address(arg1)].field_0)
    if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg1)].field_0):
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg1)].field_0) > -1 / balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
        revert with 'NH{q', 17
    if Mask(120, 0, sub_38397b37[address(arg1)].field_0) > !((uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936)):
        revert with 'NH{q', 17
    return (Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936))
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = uint256(roleAdmin[arg1].field_256)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function claimReward() {
    if uint256(stor7) == Mask(80, 0, sub_38397b37[msg.sender].field_0):
        if not Mask(120, 0, sub_38397b37[msg.sender].field_136):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DroppingNowToken: nothing to claim'
    else:
        if balanceOf[address(msg.sender)] > !sub_38397b37[msg.sender].field_80 % 72057594037927936:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] + sub_38397b37[msg.sender].field_80 % 72057594037927936:
            if uint256(stor7) < Mask(80, 0, sub_38397b37[msg.sender].field_0):
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + sub_38397b37[msg.sender].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[msg.sender].field_0) > -1 / balanceOf[address(msg.sender)] + sub_38397b37[msg.sender].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if Mask(120, 0, sub_38397b37[msg.sender].field_0) > !((uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[msg.sender].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * sub_38397b37[msg.sender].field_80 % 72057594037927936)):
                revert with 'NH{q', 17
            if Mask(120, 0, sub_38397b37[msg.sender].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[msg.sender].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * sub_38397b37[msg.sender].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[msg.sender].field_136):
                Mask(120, 0, sub_38397b37[msg.sender].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[msg.sender].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[msg.sender].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * sub_38397b37[msg.sender].field_80 % 72057594037927936))
        Mask(80, 0, sub_38397b37[msg.sender].field_0) = Mask(80, 0, stor7)
        if not Mask(120, 0, sub_38397b37[msg.sender].field_136):
            revert with 0, 'DroppingNowToken: nothing to claim'
    ('bool', ('type', 120, ('field', 136, ('stor', ('map', 'msg.sender', ('name', 'sub_38397b37', 6))))))
    uint256(sub_38397b37[msg.sender].field_0) = Mask(136, 0, sub_38397b37[msg.sender].field_0)
    call msg.sender with:
       value Mask(120, 0, sub_38397b37[msg.sender].field_136) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit RewardClaimed(Mask(120, 0, sub_38397b37[msg.sender].field_136), msg.sender);
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor3[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor3[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[stor3.length.field_1 % 128 + ceil32(stor3.length.field_1 % 128) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 'NH{q', 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor4[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 'NH{q', 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor4[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor4[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[stor4.length.field_1 % 128 + ceil32(stor4.length.field_1 % 128) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function claimTokens() {
    if uint256(stor7) == Mask(80, 0, sub_38397b37[msg.sender].field_0):
        if not sub_38397b37[msg.sender].field_80 % 72057594037927936:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DroppingNowToken: nothing to claim'
    else:
        if balanceOf[address(msg.sender)] > !sub_38397b37[msg.sender].field_80 % 72057594037927936:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] + sub_38397b37[msg.sender].field_80 % 72057594037927936:
            if uint256(stor7) < Mask(80, 0, sub_38397b37[msg.sender].field_0):
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + sub_38397b37[msg.sender].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[msg.sender].field_0) > -1 / balanceOf[address(msg.sender)] + sub_38397b37[msg.sender].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if Mask(120, 0, sub_38397b37[msg.sender].field_0) > !((uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[msg.sender].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * sub_38397b37[msg.sender].field_80 % 72057594037927936)):
                revert with 'NH{q', 17
            if Mask(120, 0, sub_38397b37[msg.sender].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[msg.sender].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * sub_38397b37[msg.sender].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[msg.sender].field_136):
                Mask(120, 0, sub_38397b37[msg.sender].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[msg.sender].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[msg.sender].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[msg.sender].field_0) * sub_38397b37[msg.sender].field_80 % 72057594037927936))
        Mask(80, 0, sub_38397b37[msg.sender].field_0) = Mask(80, 0, stor7)
        if not sub_38397b37[msg.sender].field_80 % 72057594037927936:
            revert with 0, 'DroppingNowToken: nothing to claim'
    ('bool', ('type', 56, ('field', 80, ('stor', ('map', 'msg.sender', ('name', 'sub_38397b37', 6))))))
    sub_38397b37[msg.sender].field_80 % 72057594037927936 = 0
    if sub_5706e8e7 < sub_38397b37[msg.sender].field_80 % 72057594037927936:
        revert with 'NH{q', 17
    sub_5706e8e7 -= sub_38397b37[msg.sender].field_80 % 72057594037927936
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if uint256(stor7) != Mask(80, 0, sub_38397b37[address(msg.sender)].field_0):
        if balanceOf[address(msg.sender)] > !sub_38397b37[address(msg.sender)].field_80 % 72057594037927936:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] + sub_38397b37[address(msg.sender)].field_80 % 72057594037927936:
            if uint256(stor7) < Mask(80, 0, sub_38397b37[address(msg.sender)].field_0):
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + sub_38397b37[address(msg.sender)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) > -1 / balanceOf[address(msg.sender)] + sub_38397b37[address(msg.sender)].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if Mask(120, 0, sub_38397b37[address(msg.sender)].field_0) > !((uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936)):
                revert with 'NH{q', 17
            if Mask(120, 0, sub_38397b37[address(msg.sender)].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(msg.sender)].field_136):
                Mask(120, 0, sub_38397b37[address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(msg.sender)].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936))
        Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) = Mask(80, 0, stor7)
    if totalSupply > !sub_38397b37[msg.sender].field_80 % 72057594037927936:
        revert with 'NH{q', 17
    totalSupply += sub_38397b37[msg.sender].field_80 % 72057594037927936
    if balanceOf[address(msg.sender)] > !sub_38397b37[msg.sender].field_80 % 72057594037927936:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += sub_38397b37[msg.sender].field_80 % 72057594037927936
    emit Transfer(sub_38397b37[msg.sender].field_80 % 72057594037927936, 0, msg.sender);
    emit TokensClaimed(sub_38397b37[msg.sender].field_80 % 72057594037927936, msg.sender);
}

function sub_ac8a750a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 6
            _37 = mem[64]
            mem[64] = mem[64] + 96
            mem[_37] = Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
            mem[_37 + 32] = sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936
            mem[_37 + 64] = Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 0
            if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if not balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            else:
                if uint256(stor7) < Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) > -1 / balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) > !((uint256(stor7) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor7) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) + (uint256(stor7) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor7) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 6
            _39 = mem[64]
            mem[64] = mem[64] + 96
            mem[_39] = Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0)
            mem[_39 + 32] = sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936
            mem[_39 + 64] = Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 0
            if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] > !sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if not balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_136)
            else:
                if uint256(stor7) < Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) > -1 / balanceOf[address(cd[((32 * idx) + cd[4] + 36)])] + sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) > !((uint256(stor7) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor7) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = Mask(120, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) + (uint256(stor7) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * balanceOf[address(cd[((32 * idx) + cd[4] + 36)])]) + (uint256(stor7) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_0) * sub_38397b37[address(cd[((32 * idx) + cd[4] + 36)])].field_80 % 72057594037927936)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_40d0d974(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, 5)
    if uint8(roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0):
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            _121 = sha3(mem[(32 * idx) + 140 len 20], 6)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _125 = mem[(32 * idx) + 128]
            if uint256(stor7) == Mask(80, 0, sub_38397b37[mem[(32 * idx) + 140 len 20]].field_0):
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if sub_38397b37[mem[(32 * idx) + 140 len 20]].field_80 % 72057594037927936 > -mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 154 len 7] + test266151307():
                    revert with 'NH{q', 17
                sub_38397b37[mem[(32 * idx) + 140 len 20]].field_80 % 72057594037927936 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 154 len 7] + sub_38397b37[mem[(32 * idx) + 140 len 20]].field_80 % 72057594037927936 % 72057594037927936
            else:
                _127 = mem[64]
                mem[64] = mem[64] + 96
                mem[_127] = Mask(80, 0, sub_38397b37[mem[(32 * idx) + 140 len 20]].field_0)
                mem[_127 + 32] = stor[_121].field_80 % 72057594037927936
                mem[_127 + 64] = Mask(120, 0, stor[_121].field_136)
                mem[0] = address(_125)
                mem[32] = 0
                if balanceOf[address(_125)] > !stor[_121].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if balanceOf[address(_125)] + stor[_121].field_80 % 72057594037927936:
                    if uint256(stor7) < mem[_127 + 22 len 10]:
                        revert with 'NH{q', 17
                    if balanceOf[address(_125)] + stor[_121].field_80 % 72057594037927936 and uint256(stor7) - mem[_127 + 22 len 10] > -1 / balanceOf[address(_125)] + stor[_121].field_80 % 72057594037927936:
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_121].field_136) > !((uint256(stor7) * balanceOf[address(_125)]) - (mem[_127 + 22 len 10] * balanceOf[address(_125)]) + (uint256(stor7) * stor[_121].field_80 % 72057594037927936) - (mem[_127 + 22 len 10] * stor[_121].field_80 % 72057594037927936)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, stor[_121].field_136) + (uint256(stor7) * balanceOf[address(_125)]) - (mem[_127 + 22 len 10] * balanceOf[address(_125)]) + (uint256(stor7) * stor[_121].field_80 % 72057594037927936) - (mem[_127 + 22 len 10] * stor[_121].field_80 % 72057594037927936) != Mask(120, 0, stor[_121].field_136):
                        Mask(120, 0, stor[_121].field_136) = Mask(120, 0, Mask(120, 0, stor[_121].field_136) + (uint256(stor7) * balanceOf[address(_125)]) - (mem[_127 + 22 len 10] * balanceOf[address(_125)]) + (uint256(stor7) * stor[_121].field_80 % 72057594037927936) - (mem[_127 + 22 len 10] * stor[_121].field_80 % 72057594037927936))
                Mask(80, 0, stor[_121].field_0) = Mask(80, 0, stor7)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if stor[_121].field_80 % 72057594037927936 > -mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 154 len 7] + test266151307():
                    revert with 'NH{q', 17
                stor[_121].field_80 % 72057594037927936 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 154 len 7] + stor[_121].field_80 % 72057594037927936 % 72057594037927936
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if s > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            continue 
        if sub_5706e8e7 > !s:
            revert with 'NH{q', 17
        sub_5706e8e7 += s
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162 len 42], ' is missing role ', mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 290 len 66], 0, 0 >> 928,
                0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not msg.sender:
        if uint256(stor7) == Mask(80, 0, sub_38397b37[address(arg1)].field_0):
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        else:
            if balanceOf[address(arg1)] > !sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg1)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg1)].field_0) > -1 / balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(arg1)].field_0) > !((uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936)):
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg1)].field_136):
                    Mask(120, 0, sub_38397b37[address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936))
            Mask(80, 0, sub_38397b37[address(arg1)].field_0) = Mask(80, 0, stor7)
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
    else:
        if uint256(stor7) == Mask(80, 0, sub_38397b37[address(msg.sender)].field_0):
            if uint256(stor7) == Mask(80, 0, sub_38397b37[address(arg1)].field_0):
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            else:
                if balanceOf[address(arg1)] > !sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                    if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg1)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg1)].field_0) > -1 / balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg1)].field_0) > !((uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg1)].field_136):
                        Mask(120, 0, sub_38397b37[address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936))
                Mask(80, 0, sub_38397b37[address(arg1)].field_0) = Mask(80, 0, stor7)
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
        else:
            if balanceOf[address(msg.sender)] > !sub_38397b37[address(msg.sender)].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] + sub_38397b37[address(msg.sender)].field_80 % 72057594037927936:
                if uint256(stor7) < Mask(80, 0, sub_38397b37[address(msg.sender)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] + sub_38397b37[address(msg.sender)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) > -1 / balanceOf[address(msg.sender)] + sub_38397b37[address(msg.sender)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(msg.sender)].field_0) > !((uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936)):
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(msg.sender)].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(msg.sender)].field_136):
                    Mask(120, 0, sub_38397b37[address(msg.sender)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(msg.sender)].field_0) + (uint256(stor7) * balanceOf[address(msg.sender)]) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * balanceOf[address(msg.sender)]) + (uint256(stor7) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) * sub_38397b37[address(msg.sender)].field_80 % 72057594037927936))
            Mask(80, 0, sub_38397b37[address(msg.sender)].field_0) = Mask(80, 0, stor7)
            if uint256(stor7) != Mask(80, 0, sub_38397b37[address(arg1)].field_0):
                if balanceOf[address(arg1)] > !sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                    if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg1)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg1)].field_0) > -1 / balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg1)].field_0) > !((uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg1)].field_136):
                        Mask(120, 0, sub_38397b37[address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936))
                Mask(80, 0, sub_38397b37[address(arg1)].field_0) = Mask(80, 0, stor7)
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))), ('param', 'arg2'))
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 'NH{q', 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if uint256(stor7) == Mask(80, 0, sub_38397b37[address(arg2)].field_0):
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        else:
            if balanceOf[address(arg2)] > !sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg2)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg2)].field_0) > -1 / balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(arg2)].field_0) > !((uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936)):
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(arg2)].field_0) + (uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg2)].field_136):
                    Mask(120, 0, sub_38397b37[address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg2)].field_0) + (uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936))
            Mask(80, 0, sub_38397b37[address(arg2)].field_0) = Mask(80, 0, stor7)
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
    else:
        if uint256(stor7) == Mask(80, 0, sub_38397b37[address(arg1)].field_0):
            if uint256(stor7) == Mask(80, 0, sub_38397b37[address(arg2)].field_0):
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            else:
                if balanceOf[address(arg2)] > !sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                    if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg2)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg2)].field_0) > -1 / balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg2)].field_0) > !((uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg2)].field_0) + (uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg2)].field_136):
                        Mask(120, 0, sub_38397b37[address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg2)].field_0) + (uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936))
                Mask(80, 0, sub_38397b37[address(arg2)].field_0) = Mask(80, 0, stor7)
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 'ERC20: transfer amount exceeds balance'
        else:
            if balanceOf[address(arg1)] > !sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg1)].field_0):
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg1)].field_0) > -1 / balanceOf[address(arg1)] + sub_38397b37[address(arg1)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(arg1)].field_0) > !((uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936)):
                    revert with 'NH{q', 17
                if Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg1)].field_136):
                    Mask(120, 0, sub_38397b37[address(arg1)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg1)].field_0) + (uint256(stor7) * balanceOf[address(arg1)]) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * balanceOf[address(arg1)]) + (uint256(stor7) * sub_38397b37[address(arg1)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg1)].field_0) * sub_38397b37[address(arg1)].field_80 % 72057594037927936))
            Mask(80, 0, sub_38397b37[address(arg1)].field_0) = Mask(80, 0, stor7)
            if uint256(stor7) != Mask(80, 0, sub_38397b37[address(arg2)].field_0):
                if balanceOf[address(arg2)] > !sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                    if uint256(stor7) < Mask(80, 0, sub_38397b37[address(arg2)].field_0):
                        revert with 'NH{q', 17
                    if balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936 and uint256(stor7) - Mask(80, 0, sub_38397b37[address(arg2)].field_0) > -1 / balanceOf[address(arg2)] + sub_38397b37[address(arg2)].field_80 % 72057594037927936:
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg2)].field_0) > !((uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936)):
                        revert with 'NH{q', 17
                    if Mask(120, 0, sub_38397b37[address(arg2)].field_0) + (uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) != Mask(120, 0, sub_38397b37[address(arg2)].field_136):
                        Mask(120, 0, sub_38397b37[address(arg2)].field_136) = Mask(120, 0, Mask(120, 0, sub_38397b37[address(arg2)].field_0) + (uint256(stor7) * balanceOf[address(arg2)]) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * balanceOf[address(arg2)]) + (uint256(stor7) * sub_38397b37[address(arg2)].field_80 % 72057594037927936) - (Mask(80, 0, sub_38397b37[address(arg2)].field_0) * sub_38397b37[address(arg2)].field_80 % 72057594037927936))
                Mask(80, 0, sub_38397b37[address(arg2)].field_0) = Mask(80, 0, stor7)
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 'ERC20: transfer amount exceeds balance'
    ('ge', ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))), ('param', 'arg3'))
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 'NH{q', 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
