contract main {




// =====================  Runtime code  =====================


const sub_280a1931(?) = 0x275e91c232bd23ca279c3a520270f257f78763ceafeaab6f52a7518cf5e39a78

const ROLE_ADMIN = 0


mapping of struct roleAdmin;
array of struct roleMember;
mapping of uint8 sub_96e66443;
mapping of uint256 currentNonce;
address beneficiaryAddress;
mapping of uint256 sub_bf416265;
mapping of uint256 stor99;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function currentNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return currentNonce[arg1]
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

function sub_96e66443(?) payable {
    require calldata.size - 4 >= 32
    if sub_96e66443[arg1] >= 4:
        revert with 0, 33
    return sub_96e66443[arg1]
}

function sub_bf416265(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_bf416265[address(arg1)][arg2]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function beneficiaryAddress() payable {
    return beneficiaryAddress
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

function updateBeneficiaryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(roleAdmin[address(msg.sender)].field_0):
        beneficiaryAddress = arg1
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

function sub_0912227e(?) payable {
    require calldata.size - 4 >= 32
    if not uint8(roleAdmin[0x275e91c232bd23ca279c3a520270f257f78763ceafeaab6f52a7518cf5e39a78][address(msg.sender)].field_0):
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
            s = 0x275e91c232bd23ca279c3a520270f257f78763ceafeaab6f52a7518cf5e39a78
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
    if sub_96e66443[arg1] > 3:
        revert with 0, 33
    if sub_96e66443[arg1] >= 2:
        revert with 0, 'CCB: Already approved'
    sub_96e66443[arg1] = 2
    emit 0x676f23fe: arg1
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
    if not uint8(roleAdmin[address(msg.sender)].field_0):
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
    if not uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_5c906ac8(?) payable {
    require calldata.size - 4 >= 192
    require arg5 == address(arg5)
    if sub_96e66443[arg6] > 3:
        revert with 0, 33
    if sub_96e66443[arg6] != 2:
        revert with 0, 'CCB: Transaction is not approved or already executed'
    if sha3(msg.sender, address(arg5), arg1, arg2, arg3, chainid, arg4) != arg6:
        revert with 0, 'CCB: Provided hash is invalid'
    if not sub_bf416265[address(arg5)][arg3]:
        revert with 0, 'CCB: Destination is forbidden (mint)'
    staticcall address(arg5).getUtilsContractAtPos(uint256 arg1) with:
            gas gas_remaining wei
           args 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).isBotAddress(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'CCB: Minting is temporary disabled!'
    sub_96e66443[arg6] = 3
    if arg1 < arg2:
        revert with 0, 17
    require ext_code.size(address(arg5))
    call address(arg5).mintByBridge(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1 - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5f94eab6: msg.sender, address(arg5), arg2, arg1 - arg2, sha3(msg.sender, address(arg5), arg1, arg2, arg3, chainid, arg4)
}

function sub_6a74d8f4(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if uint8(roleAdmin[0x275e91c232bd23ca279c3a520270f257f78763ceafeaab6f52a7518cf5e39a78][address(msg.sender)].field_0):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 2
            if sub_96e66443[mem[(32 * idx) + 128]] > 3:
                revert with 0, 33
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if sub_96e66443[mem[(32 * idx) + 128]] >= 2:
                mem[(32 * idx) + 128] = 0
            else:
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 2
                sub_96e66443[mem[(32 * idx) + 128]] = 2
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * ('cd', 4).length) + 97] = 32
        emit 0x87b1f23c: Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(32 * ('cd', 4).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x275e91c232bd23ca279c3a520270f257f78763ceafeaab6f52a7518cf5e39a78
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(32 * ('cd', 4).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function sub_6629b55c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'CCB: Amount must not exceed available balance. Try reducing the amount.'
    if chainid == arg3:
        revert with 0, 'CCB: Destination chain must be different from current chain'
    if not sub_bf416265[address(arg1)][arg3]:
        revert with 0, 'CCB: Destination is forbidden (burn)'
    if arg2 <= sub_bf416265[address(arg1)][arg3]:
        revert with 0, 'CCB: Amount is lower than the minimum permitted amount'
    staticcall address(arg1).getUtilsContractAtPos(uint256 arg1) with:
            gas gas_remaining wei
           args 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).isBotAddress(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'CCB: Burning is temporary disabled!'
    sub_96e66443[msg.sender][address(arg1)][arg2][stor7[address(arg1)][arg3]][chainid][arg3][stor5[address(arg1)]] = 1
    require ext_code.size(address(arg1))
    call address(arg1).burnByBridge(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).mintHumanAddress(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_bf416265[address(arg1)][arg3]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2b929fa3: msg.sender, address(arg1), arg2, sub_bf416265[address(arg1)][arg3], currentNonce[address(arg1)], chainid, arg3, sha3(msg.sender, address(arg1), arg2, sub_bf416265[address(arg1)][arg3], chainid, arg3, currentNonce[address(arg1)])
    if currentNonce[address(arg1)] == -1:
        revert with 0, 17
    currentNonce[address(arg1)]++
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

function grantRolesBulk(bytes32 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    if uint8(roleAdmin[address(msg.sender)].field_0):
        idx = 0
        while idx < arg1.length:
            require cd[((64 * idx) + arg1 + 68)] == address(cd[((64 * idx) + arg1 + 68)])
            if not uint8(roleAdmin[cd[((64 * idx) + arg1 + 36)]][address(cd[((64 * idx) + arg1 + 68)])].field_0):
                uint8(roleAdmin[cd[((64 * idx) + arg1 + 36)]][address(cd[((64 * idx) + arg1 + 68)])].field_0) = 1
                emit RoleGranted(cd[((64 * idx) + arg1 + 36)], address(cd[((64 * idx) + arg1 + 68)]), msg.sender);
            mem[0] = address(cd[((64 * idx) + arg1 + 68)])
            mem[32] = sha3(cd[((64 * idx) + arg1 + 36)], 1) + 1
            if not roleMember[cd[((64 * idx) + arg1 + 36)]][1][address(cd[((64 * idx) + arg1 + 68)])].field_0:
                roleMember[cd[((64 * idx) + arg1 + 36)]].field_0++
                address(roleMember[cd[((64 * idx) + arg1 + 36)]][roleMember[cd[((64 * idx) + arg1 + 36)]].field_0].field_0) = address(cd[((64 * idx) + arg1 + 68)])
                Mask(96, 0, roleMember[cd[((64 * idx) + arg1 + 36)]][roleMember[cd[((64 * idx) + arg1 + 36)]].field_0].field_160) = 0
                mem[0] = address(cd[((64 * idx) + arg1 + 68)])
                mem[32] = sha3(cd[((64 * idx) + arg1 + 36)], 1) + 1
                roleMember[cd[((64 * idx) + arg1 + 36)]][1][address(cd[((64 * idx) + arg1 + 68)])].field_0 = roleMember[cd[((64 * idx) + arg1 + 36)]].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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

function sub_a52570ed(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (96 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 96
        _21 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_21] = cd[idx]
        mem[_21 + 32] = cd[(idx + 32)]
        mem[_21 + 64] = cd[(idx + 64)]
        mem[s] = _21
        s = s + 32
        idx = idx + 96
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0)
    if uint8(roleAdmin[address(msg.sender)].field_0):
        idx = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 0, 50
            _43 = mem[mem[(32 * idx) + 128] + 64]
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[32] = 7
            _49 = sha3(mem[0], 7)
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[mem[(32 * idx) + 128] + 32]
            mem[32] = _49
            stor[_49][mem[0]] = _43
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    _36 = mem[64]
    mem[mem[64]] = 42
    mem[64] = mem[64] + 96
    mem[_36 + 32 len 42] = call.data[calldata.size len 42]
    if 0 >= mem[_36]:
        revert with 0, 50
    mem[_36 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= mem[_36]:
        revert with 0, 50
    mem[_36 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= mem[_36]:
            revert with 0, 50
        mem[idx + _36 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    _55 = mem[64]
    mem[mem[64]] = 66
    mem[64] = mem[64] + 128
    mem[_55 + 32 len 66] = call.data[calldata.size len 66]
    if 0 >= mem[_55]:
        revert with 0, 50
    mem[_55 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= mem[_55]:
        revert with 0, 50
    mem[_55 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 65
    while idx > 1:
        if idx >= mem[_55]:
            revert with 0, 50
        mem[idx + _55 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    _60 = mem[64]
    mem[mem[64] + 32] = 'AccessControl: account '
    _61 = mem[_36]
    mem[mem[64] + 55 len ceil32(mem[_36])] = mem[_36 + 32 len ceil32(mem[_36])]
    mem[mem[64] + _61 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
    if ceil32(_61) <= _61:
        _88 = mem[_55]
        mem[mem[64] + _61 + 72 len ceil32(mem[_55])] = mem[_55 + 32 len ceil32(mem[_55])]
        if ceil32(_88) <= _88:
            _114 = mem[64]
            mem[mem[64]] = _88 + _61 + 40
            mem[64] = _88 + mem[64] + _61 + 72
            mem[_88 + _60 + _61 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_88 + _60 + _61 + 76] = 32
            _118 = mem[_114]
            mem[_88 + _60 + _61 + 108] = mem[_114]
            mem[_88 + _60 + _61 + 140 len ceil32(_118)] = mem[_114 + 32 len ceil32(_118)]
            if ceil32(_118) > _118:
                mem[_118 + _88 + _60 + _61 + 140] = 0
            revert with 0, 32, mem[_88 + _60 + _61 + 108 len ceil32(_118) + 32]
        mem[_88 + mem[64] + _61 + 72] = 0
        _115 = mem[64]
        mem[mem[64]] = _88 + _60 + _61 + -mem[64] + 40
        mem[64] = _88 + _60 + _61 + 72
        mem[_88 + _60 + _61 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_88 + _60 + _61 + 76] = 32
        _119 = mem[_115]
        mem[_88 + _60 + _61 + 108] = mem[_115]
        mem[_88 + _60 + _61 + 140 len ceil32(_119)] = mem[_115 + 32 len ceil32(_119)]
        if ceil32(_119) > _119:
            mem[_119 + _88 + _60 + _61 + 140] = 0
        revert with 0, 32, mem[_88 + _60 + _61 + 108 len ceil32(_119) + 32]
    _89 = mem[_55]
    mem[mem[64] + _61 + 72 len ceil32(mem[_55])] = mem[_55 + 32 len ceil32(mem[_55])]
    if ceil32(_89) <= _89:
        _116 = mem[64]
        mem[mem[64]] = _89 + _61 + 40
        mem[64] = _89 + mem[64] + _61 + 72
        mem[_89 + _60 + _61 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_89 + _60 + _61 + 76] = 32
        _120 = mem[_116]
        mem[_89 + _60 + _61 + 108] = mem[_116]
        mem[_89 + _60 + _61 + 140 len ceil32(_120)] = mem[_116 + 32 len ceil32(_120)]
        if ceil32(_120) > _120:
            mem[_120 + _89 + _60 + _61 + 140] = 0
        revert with 0, 32, mem[_89 + _60 + _61 + 108 len ceil32(_120) + 32]
    mem[_89 + mem[64] + _61 + 72] = 0
    _117 = mem[64]
    mem[mem[64]] = _89 + _61 + 40
    mem[64] = _89 + mem[64] + _61 + 72
    mem[_89 + _60 + _61 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_89 + _60 + _61 + 76] = 32
    _121 = mem[_117]
    mem[_89 + _60 + _61 + 108] = mem[_117]
    mem[_89 + _60 + _61 + 140 len ceil32(_121)] = mem[_117 + 32 len ceil32(_121)]
    if ceil32(_121) > _121:
        mem[_121 + _89 + _60 + _61 + 140] = 0
    revert with 0, 32, mem[_89 + _60 + _61 + 108 len ceil32(_121) + 32]
}



}
