contract main {




// =====================  Runtime code  =====================


#
#  - sub_2241328b(?)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - sub_ab7d304c(?)
#  - sub_fd20cfdd(?)
#
const sub_311729e8(?) = 0xa3548cb41722f35dc925d06d6a7fb44dc6b34b70c8f0e9d134b50f42698c822f

const decimals = 0

const WHITELIST = 0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500

const DEFAULT_ADMIN_ROLE = 0


address owner;
mapping of struct roleAdmin;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
array of struct stor7;
array of uint256 stor8;
array of uint256 stor9;
uint16 stor10;
uint256 stor10;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function sub_5a41aad2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if uint8(arg1) == 1:
        return 'Replace tokens', 0
    if uint8(arg1) != 2:
        return 'Unknown code', 0
    return 'Other', 0
}

function sub_13f84a45(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if not uint8(arg1):
        return 'New tokens sold', 0
    if uint8(arg1) != 1:
        return 'Unknown code', 0
    return 'Replacement tokens', 0
}

function messageForTransferRestriction(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 2:
        return 'Recipient not in whitelist', 0
    if arg1 != 1:
        return 'Unknown code', 0
    return 'Sender not in whitelist', 0
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function detectTransferRestriction(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500][address(arg1)].field_0:
        return 1
    if roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500][address(arg2)].field_0:
        return 0
    return 2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg1 > uint256(stor10):
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor8.length:
        idx = stor8.length
        while 0 < idx:
            if 0 > -(0 xor idx / 2) - 1:
                revert with 'NH{q', 17
            if 0 xor idx / 2 >= stor8.length:
                revert with 'NH{q', 50
            mem[0] = 8
            if stor8[0.5 / 0 xor idx] > arg1:
                idx = 0 xor idx / 2
                continue 
            if 0 xor idx / 2 > -2:
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor8.length:
        return totalSupply
    if 0 >= stor9.length:
        revert with 'NH{q', 50
    return stor9
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[0] = arg1
    if arg2 <= 0:
        revert with 0, 'ERC20Snapshot: id is 0'
    if arg2 > uint256(stor10):
        revert with 0, 'ERC20Snapshot: nonexistent id'
    if stor7[address(arg1)].field_0:
        idx = stor7[mem[0]].field_0
        while 0 < idx:
            if 0 > -(0 xor idx / 2) - 1:
                revert with 'NH{q', 17
            if 0 xor idx / 2 >= stor7[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 7)
            if stor7[address(arg1)][0.5 / 0 xor idx].field_0 > arg2:
                idx = 0 xor idx / 2
                continue 
            if 0 xor idx / 2 > -2:
                revert with 'NH{q', 17
            idx = idx
            continue 
    if 0 == stor7[address(arg1)].field_0:
        return balanceOf[address(arg1)]
    if 0 >= stor7[address(arg1)].field_256:
        revert with 'NH{q', 50
    return stor7[address(arg1)][1].field_0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
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
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
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
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
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
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
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
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function sub_f8530f82(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if roleAdmin[roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500].field_256][address(msg.sender)].field_0:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500, 1)
            if roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = sha3(0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500, 1)
                roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 0
                emit RoleRevoked(0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
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
        mem[192] = 66
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500].field_256
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
        if roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        mem[352] = 'AccessControl: account '
        idx = 0
        while idx < 42:
            mem[idx + 375] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[417] = ' is missing role '
        idx = 0
        while idx < 66:
            mem[idx + 434] = mem[idx + 224]
            idx = idx + 32
            continue 
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = mem[320]
        idx = 0
        while idx < mem[320]:
            mem[idx + 568] = mem[idx + 352]
            idx = idx + 32
            continue 
        if ceil32(mem[320]) > mem[320]:
            mem[mem[320] + 568] = 0
        revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function sub_9ae4050c(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if roleAdmin[roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500].field_256][address(msg.sender)].field_0:
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = sha3(0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500, 1)
            if not roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500][address(cd[((32 * idx) + cd[4] + 36)])].field_0:
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = sha3(0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500, 1)
                roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500][address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 1
                emit RoleGranted(0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500, address(cd[((32 * idx) + cd[4] + 36)]), msg.sender);
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[128 len 42] = call.data[calldata.size len 42]
        mem[128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
        mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
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
        mem[192] = 66
        mem[224 len 66] = call.data[calldata.size len 66]
        mem[224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'0'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'0'"), 0) - 256
        mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
        idx = 65
        s = roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500].field_256
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
        if roleAdmin[0xaf0c3ebe77999ca20698e1ff25f812bf82409a59d21ca15a41f39e0ce9f2500].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        mem[352] = 'AccessControl: account '
        idx = 0
        while idx < 42:
            mem[idx + 375] = mem[idx + 128]
            idx = idx + 32
            continue 
        mem[417] = ' is missing role '
        idx = 0
        while idx < 66:
            mem[idx + 434] = mem[idx + 224]
            idx = idx + 32
            continue 
        mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[504] = 32
        mem[536] = mem[320]
        idx = 0
        while idx < mem[320]:
            mem[idx + 568] = mem[idx + 352]
            idx = idx + 32
            continue 
        if ceil32(mem[320]) > mem[320]:
            mem[mem[320] + 568] = 0
        revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function snapshot() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 >= stor5.length.field_1:
                    mem[128] = 256 * stor5.length.field_8
                else:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 >= stor5.length.field_1:
                    mem[128] = 256 * stor5.length.field_8
                else:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor5.length.field_1) + 256 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 256 len 64] = 0xfe3a2073656e646572206973206e6f7420616c6c6f77656420746f2074616b6520736e617073686f74, mem[ceil32(stor5.length.field_1) + 201 len 23]
        if roleAdmin[0xa3548cb41722f35dc925d06d6a7fb44dc6b34b70c8f0e9d134b50f42698c822f][address(msg.sender)].field_0:
            uint256(stor10)++
            emit Snapshot(uint256(stor10));
            return uint16(stor10)
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 297] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 301] = 32
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 333] = mem[ceil32(stor5.length.field_1) + 224]
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 365 len ceil32(mem[ceil32(stor5.length.field_1) + 224])] = mem[ceil32(stor5.length.field_1) + 256 len ceil32(mem[ceil32(stor5.length.field_1) + 224])]
        if ceil32(mem[ceil32(stor5.length.field_1) + 224]) <= mem[ceil32(stor5.length.field_1) + 224]:
            revert with 0, 
                        32,
                        mem[ceil32(stor5.length.field_1) + 224],
                        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 365 len ceil32(mem[ceil32(stor5.length.field_1) + 224])]
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + mem[ceil32(stor5.length.field_1) + 224] + 365] = 0
        revert with 0, 
                    32,
                    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 333 len ceil32(mem[ceil32(stor5.length.field_1) + 224]) + 32]
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 >= stor5.length.field_1:
                mem[128] = 256 * stor5.length.field_8
            else:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 >= stor5.length.field_1:
                mem[128] = 256 * stor5.length.field_8
            else:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[ceil32(stor5.length.field_1) + 256 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 256 len 64] = 0xfe3a2073656e646572206973206e6f7420616c6c6f77656420746f2074616b6520736e617073686f74, mem[ceil32(stor5.length.field_1) + 201 len 23]
    if roleAdmin[0xa3548cb41722f35dc925d06d6a7fb44dc6b34b70c8f0e9d134b50f42698c822f][address(msg.sender)].field_0:
        uint256(stor10)++
        emit Snapshot(uint256(stor10));
        return uint16(stor10)
    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 297] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 301] = 32
    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 333] = mem[ceil32(stor5.length.field_1) + 224]
    mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 365 len ceil32(mem[ceil32(stor5.length.field_1) + 224])] = mem[ceil32(stor5.length.field_1) + 256 len ceil32(mem[ceil32(stor5.length.field_1) + 224])]
    if ceil32(mem[ceil32(stor5.length.field_1) + 224]) > mem[ceil32(stor5.length.field_1) + 224]:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + mem[ceil32(stor5.length.field_1) + 224] + 365] = 0
    revert with 0, 
                32,
                mem[ceil32(stor5.length.field_1) + 224],
                mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 365 len ceil32(mem[ceil32(stor5.length.field_1) + 224])]
}



}
