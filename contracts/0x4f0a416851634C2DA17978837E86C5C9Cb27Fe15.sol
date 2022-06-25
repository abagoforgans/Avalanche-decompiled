contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
address sub_6edb7a3eAddress;
mapping of struct fee;
mapping of uint8 stor153;
array of struct stor154;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_6edb7a3e(?) payable {
    return sub_6edb7a3eAddress
}

function getFee(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not fee[arg1 << 248][address(arg2)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FeeManager: fees not set for this token'
    return fee[arg1 << 248][address(arg2)].field_0, fee[arg1 << 248][address(arg2)].field_256
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_cc480e8e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    return fee[arg1 << 248][address(arg2)].field_0, 
           fee[arg1 << 248][address(arg2)].field_256,
           bool(fee[arg1 << 248][address(arg2)].field_512)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
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
}

function withdrawFee(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if sub_6edb7a3eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee Manager : Only Router Handlers can set Fees'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7d42bfa8(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    require arg5 == bool(arg5)
    if sub_6edb7a3eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee Manager : Only Router Handlers can set Fees'
    if not address(arg2):
        revert with 0, 'setFee: address can't be null'
    fee[arg1 << 248][address(arg2)].field_0 = arg3
    fee[arg1 << 248][address(arg2)].field_256 = arg4
    fee[arg1 << 248][address(arg2)].field_512 = uint8(bool(arg5))
    if not stor153[arg1 << 248][address(arg2)]:
        stor153[arg1 << 248][address(arg2)] = 1
        stor154[arg1 << 248].field_0++
        stor154[arg1 << 248][stor154[arg1 << 248].field_0].field_0 = address(arg2)
    emit 0xea9e9baa: arg1 << 248, address(arg2), fee[arg1 << 248][address(arg2)].field_0, fee[arg1 << 248][address(arg2)].field_256, bool(fee[arg1 << 248][address(arg2)].field_512)
}

function setHandler(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_6edb7a3eAddress = arg1
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

function sub_b0b5da73(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    mem[64] = (32 * stor154[arg1 << 248].field_0) + 128
    mem[96] = stor154[arg1 << 248].field_0
    if not stor154[arg1 << 248].field_0:
        mem[(32 * stor154[arg1 << 248].field_0) + 128] = 32
        mem[(32 * stor154[arg1 << 248].field_0) + 160] = stor154[arg1 << 248].field_0
        idx = 0
        s = (32 * stor154[arg1 << 248].field_0) + 192
        t = 128
        while idx < stor154[arg1 << 248].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor154[arg1 << 248].field_0) + 128
           len (96 * stor154[arg1 << 248].field_0) + 64
    mem[128] = stor154[arg1 << 248].field_0
    idx = 128
    s = 0
    while (32 * stor154[arg1 << 248].field_0) + 96 > idx:
        mem[idx + 32] = stor154[arg1 << 248][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor154[arg1 << 248].field_0) + 128] = 32
    mem[(32 * stor154[arg1 << 248].field_0) + 160] = stor154[arg1 << 248].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor154[arg1 << 248].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor154[arg1 << 248].field_0) + -mem[64] + 192
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    sub_6edb7a3eAddress = arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}



}
