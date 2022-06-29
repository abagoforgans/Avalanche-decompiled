contract main {




// =====================  Runtime code  =====================


#
#  - sub_e234768a(?)
#
const sub_b20764c9(?) = 0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
mapping of struct stor2;
uint256 sub_b0379695;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
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

function sub_b0379695(?) payable {
    return sub_b0379695
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

function sub_ac89ffa1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not roleAdmin[0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7][address(msg.sender)].field_0:
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
        s = 0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if stor2[stor3].field_0:
        if stor2[stor3].field_0 == uint255(stor2[stor3].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[stor3][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor3].field_0 = 0
            idx = 0
            while (uint255(stor2[stor3].field_0) * 0.5) + 31 / 32 > idx:
                stor2[stor3][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor3].field_0 == stor2[stor3].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor2[stor3][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor3].field_0 = 0
            idx = 0
            while stor2[stor3].field_1 + 31 / 32 > idx:
                stor2[stor3][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2[stor3].field_256 = address(arg2)
    stor2[stor3].field_512 = address(arg3)
    if sub_b0379695 > -2:
        revert with 0, 17
    sub_b0379695++
}

function sub_6338a7c0(?) payable {
    require calldata.size - 4 >= 32
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2[arg1].field_0):
                if 31 >= uint255(stor2[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor2[arg1].field_8
                else:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 0, 34
            if stor2[arg1].field_1:
                if 31 >= stor2[arg1].field_1:
                    mem[128] = 256 * stor2[arg1].field_8
                else:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_0), data=mem[128 len ceil32(uint255(stor2[arg1].field_0) * 0.5)]), 
               stor2[arg1].field_256,
               stor2[arg1].field_512
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 0, 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == uint255(stor2[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2[arg1].field_0):
            if 31 >= uint255(stor2[arg1].field_0) * 0.5:
                mem[128] = 256 * stor2[arg1].field_8
            else:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor2[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 0, 34
        if stor2[arg1].field_1:
            if 31 >= stor2[arg1].field_1:
                mem[128] = 256 * stor2[arg1].field_8
            else:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)]), 
           stor2[arg1].field_256,
           stor2[arg1].field_512
}

function sub_214fa040(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7, 0)
    if not roleAdmin[0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7][address(msg.sender)].field_0:
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
        s = 0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if cd[36] < eth.balance(this.address):
        if cd[36] and cd[68] > -1 / cd[36]:
            revert with 0, 17
        if block.timestamp > !cd[132]:
            revert with 0, 17
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[36]
        mem[132] = cd[36] * cd[68] / 10000
        mem[164] = 160
        mem[260] = ('cd', 4).length
        idx = 0
        s = 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp + cd[132]
        call stor2[cd[100]].field_256.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[36] * cd[68] / 10000, Array(len=('cd', 4).length, data=mem[292 len 32 * ('cd', 4).length]), address(this.address), block.timestamp + cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
    else:
        if eth.balance(this.address) and cd[68] > -1 / eth.balance(this.address):
            revert with 0, 17
        if block.timestamp > !cd[132]:
            revert with 0, 17
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = eth.balance(this.address)
        mem[132] = eth.balance(this.address) * cd[68] / 10000
        mem[164] = 160
        mem[260] = ('cd', 4).length
        idx = 0
        s = 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp + cd[132]
        call stor2[cd[100]].field_256.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args eth.balance(this.address), eth.balance(this.address) * cd[68] / 10000, Array(len=('cd', 4).length, data=mem[292 len 32 * ('cd', 4).length]), address(this.address), block.timestamp + cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
}



}
