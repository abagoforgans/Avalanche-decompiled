contract main {




// =====================  Runtime code  =====================


const sub_42f1e879(?) = 0xc2979137d1774e40fe2638d355bf7a7b092be4c67f242aad1655e1e27f9df9cc

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_ca282cb3(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(arg3.length) + 128 < 96 or ceil32(arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3.length + arg3 + 36
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if not roleAdmin[0xc2979137d1774e40fe2638d355bf7a7b092be4c67f242aad1655e1e27f9df9cc][address(msg.sender)].field_0:
        revert with 0, 'invalid registry'
    mem[ceil32(arg3.length) + 160 len 7849] = code.data[3404 len 7849]
    mem[ceil32(arg3.length) + 128] = 7849
    mem[floor32(ceil32(arg3.length) + 8040) + 32] = msg.sender
    mem[floor32(ceil32(arg3.length) + 8040) + 64] = address(arg2)
    mem[floor32(ceil32(arg3.length) + 8040) + 96] = 96
    mem[floor32(ceil32(arg3.length) + 8040) + 128] = arg3.length
    mem[floor32(ceil32(arg3.length) + 8040) + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) <= arg3.length:
        mem[floor32(ceil32(arg3.length) + 8040)] = ceil32(arg3.length) + 128
        mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) > 7849:
            mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 8041] = 0
        mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 8041 len ceil32(ceil32(arg3.length)) + 4] = mem[floor32(ceil32(arg3.length) + 8040) + 32 len ceil32(ceil32(arg3.length)) + 4]
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8201] = address(msg.sender)
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8221] = address(arg2)
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8241] = arg1
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8169] = ceil32(arg3.length) + 72
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        if not mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 160]:
            revert with 0, 'Create2: bytecode length is zero'
        create2 contract with 0 wei
                        salt: sha3(mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8201 len ceil32(arg3.length) + 72])
                        code: mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 192 len mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 160]]
    else:
        mem[floor32(ceil32(arg3.length) + 8040) + arg3.length + 160] = 0
        mem[floor32(ceil32(arg3.length) + 8040)] = ceil32(arg3.length) + 128
        mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) > 7849:
            mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 8041] = 0
        mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 8041 len ceil32(ceil32(arg3.length)) + 4] = mem[floor32(ceil32(arg3.length) + 8040) + 32 len ceil32(ceil32(arg3.length)) + 4]
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8201] = address(msg.sender)
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8221] = address(arg2)
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8241] = arg1
        mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8169] = ceil32(arg3.length) + 72
        if eth.balance(this.address) < 0:
            revert with 0, 'Create2: insufficient balance'
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[floor32(ceil32(arg3.length) + 8040) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]:
            revert with 0, 'Create2: bytecode length is zero'
        create2 contract with 0 wei
                        salt: sha3(mem[(2 * ceil32(arg3.length)) + floor32(ceil32(arg3.length) + 8040) + 8201 len ceil32(arg3.length) + 72])
                        code: mem[ceil32(arg3.length) + floor32(ceil32(arg3.length) + 8040) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[floor32(ceil32(arg3.length) + 8040) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]
    if not address(create2.new_address):
        revert with 0, 'Create2: Failed on deploy'
    emit DeployedControl(msg.sender, address(arg2), address(create2.new_address));
    return address(create2.new_address)
}



}
