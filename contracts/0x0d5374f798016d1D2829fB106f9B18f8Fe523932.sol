contract main {




// =====================  Runtime code  =====================


const ADMIN_ROLE = 0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217

const DEFAULT_ADMIN_ROLE = 0

const MANAGER_ROLE = 0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address sub_09a351a5Address;
address sub_6d841ac9Address;
mapping of uint256 sub_89e08631;
mapping of uint256 sub_bf443710;
uint256 sub_0efc1b9c;
uint256 sub_d70ea764;
uint256 sub_38ffa30d;

function sub_09a351a5(?) payable {
    return sub_09a351a5Address
}

function sub_0efc1b9c(?) payable {
    return sub_0efc1b9c
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_38ffa30d(?) payable {
    return sub_38ffa30d
}

function sub_6d841ac9(?) payable {
    return sub_6d841ac9Address
}

function sub_89e08631(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_89e08631[arg1][arg2]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_bf443710(?) payable {
    require calldata.size - 4 >= 32
    return sub_bf443710[arg1]
}

function sub_d70ea764(?) payable {
    return sub_d70ea764
}

function _fallback() payable {
    revert
}

function sub_07e7928b(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        revert with 0, 'AccessControl:only manager'
    sub_38ffa30d = arg1
}

function sub_695e75cc(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        revert with 0, 'AccessControl:only manager'
    sub_d70ea764 = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_87e5023e(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        revert with 0, 'AccessControl:only manager'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RuleEngine: stakePerTrade cannot be 0'
    sub_0efc1b9c = arg1
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_d550dda2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        revert with 0, 'AccessControl:only admin'
    require ext_code.size(0x9379ac51a27db740968d59da1ec0a97ad07181a)
    delegate 0x9379ac51a27db740968d59da1ec0a97ad07181a.isContract(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'RuleEngine: The dex manager needs to be a contract'
    sub_6d841ac9Address = address(arg1)
}

function sub_35cdb1f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_09a351a5Address)
    staticcall sub_09a351a5Address.getTotalStakedFor(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_0efc1b9c:
        revert with 0, 18
    require ext_code.size(0x9379ac51a27db740968d59da1ec0a97ad07181a)
    delegate 0x9379ac51a27db740968d59da1ec0a97ad07181a.today() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / sub_0efc1b9c >= sub_89e08631[address(arg1)][delegate.return_data[0]]:
        return ((ext_call.return_data[0] / sub_0efc1b9c) - sub_89e08631[address(arg1)][delegate.return_data[0]])
    else:
        return 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
}

function sub_5f2df38f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_6d841ac9Address != msg.sender:
        revert with 0, 'RuleEngine: only DexManager'
    require ext_code.size(0x9379ac51a27db740968d59da1ec0a97ad07181a)
    delegate 0x9379ac51a27db740968d59da1ec0a97ad07181a.today() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d70ea764 <= sub_bf443710[delegate.return_data[0]]:
        revert with 0, 'RuleEngine: Daily trade cap exceeded'
    require ext_code.size(sub_09a351a5Address)
    staticcall sub_09a351a5Address.getTotalStakedFor(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_0efc1b9c:
        revert with 0, 18
    require ext_code.size(0x9379ac51a27db740968d59da1ec0a97ad07181a)
    delegate 0x9379ac51a27db740968d59da1ec0a97ad07181a.today() with:
         gas gas_remaining wei
        args 
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / sub_0efc1b9c < sub_89e08631[address(arg1)][delegate.return_data[0]]:
        revert with 0, 'RuleEngine: Not enough trades left'
    if (ext_call.return_data[0] / sub_0efc1b9c) - sub_89e08631[address(arg1)][delegate.return_data[0]] <= 0:
        revert with 0, 'RuleEngine: Not enough trades left'
    if sub_89e08631[address(arg1)][delegate.return_data[0]] > -2:
        revert with 0, 17
    sub_89e08631[address(arg1)][delegate.return_data[0]]++
    if sub_bf443710[delegate.return_data[0]] > -2:
        revert with 0, 17
    sub_bf443710[delegate.return_data[0]]++
}

function sub_f7187c61(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not roleAdmin[0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        roleAdmin[0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0 = 1
        emit RoleGranted(0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, msg.sender, msg.sender);
    roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256 = 0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
    emit RoleAdminChanged(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256, 0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217);
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, msg.sender, msg.sender);
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
        if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
            roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function initialize(address arg1, uint256 arg2, uint256 arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 97 > test266151307() or ceil32(32 * arg4.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    idx = 0
    t = 128
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    mem[ceil32(32 * arg4.length) + 101] = arg1
    require ext_code.size(0x9379ac51a27db740968d59da1ec0a97ad07181a)
    delegate 0x9379ac51a27db740968d59da1ec0a97ad07181a.isContract(address arg1) with:
         gas gas_remaining wei
        args arg1
    mem[ceil32(32 * arg4.length) + 97] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == bool(delegate.return_data[0])
    if not delegate.return_data[0]:
        revert with 0, 'RuleEngine: The stake contract must be a contract'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not roleAdmin[0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0:
        roleAdmin[0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217][address(msg.sender)].field_0 = 1
        emit RoleGranted(0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217, msg.sender, msg.sender);
    roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256 = 0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217
    emit RoleAdminChanged(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b].field_256, 0x8a49807205ce4d355092ef5a8a18f56e8913cf4a201fbe287825b095693c217);
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, msg.sender, msg.sender);
    idx = 0
    while idx < arg4.length:
        if idx >= arg4.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
        if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, 101)
            roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(mem[(32 * idx) + 128])].field_0 = 1
            emit RoleGranted(0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b, mem[(32 * idx) + 140 len 20], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint8(stor0.field_8):
        sub_09a351a5Address = arg1
        sub_0efc1b9c = arg2
        sub_d70ea764 = arg3
    else:
        uint8(stor0.field_8) = 0
        sub_09a351a5Address = arg1
        sub_0efc1b9c = arg2
        sub_d70ea764 = arg3
        uint8(stor0.field_8) = 0
}



}
