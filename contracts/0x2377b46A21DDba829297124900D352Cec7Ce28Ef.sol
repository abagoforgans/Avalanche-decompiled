contract main {




// =====================  Runtime code  =====================


#
#  - sub_04a1d7f9(?)
#  - sub_3826c402(?)
#  - lockERC20(address arg1, address arg2, address arg3, uint256 arg4)
#  - releaseERC20(address arg1, address arg2, uint256 arg3)
#  - fundERC20(address arg1, address arg2, uint256 arg3)
#  - stake(address arg1, address arg2, uint256 arg3)
#
const sub_34de0af4(?) = code.data[19929 len 32]

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
mapping of address sub_aa50ec12;
mapping of address sub_5fae9245;
address stor153;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_5fae9245(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5fae9245[arg1]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_aa50ec12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_aa50ec12[arg1]
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_ad527b21(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_5fae9245[address(arg2)]:
        return 0
    require ext_code.size(sub_5fae9245[address(arg2)])
    staticcall sub_5fae9245[address(arg2)].0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6f8d52d3(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0][address(msg.sender)].field_0:
        stor153 = address(arg1)
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

function sub_f1945725(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if roleAdmin[0][address(msg.sender)].field_0:
        sub_aa50ec12[address(arg2)] = 0
        sub_5fae9245[address(arg1)] = 0
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

function revokeRole(bytes32 arg1, address arg2) {
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

function grantRole(bytes32 arg1, address arg2) {
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

function safeTransferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'safeTransferETH: transfer to address 0'
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'safeTransferETH: ETH transfer failed'
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
    s = code.data[19929 len 32]
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
    if code.data[19929 len 32] + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function mintERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        require ext_code.size(arg1)
        call arg1.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    s = code.data[19929 len 32]
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
    if code.data[19929 len 32] + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function burnERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        require ext_code.size(arg1)
        call arg1.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    s = code.data[19929 len 32]
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
    if code.data[19929 len 32] + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_494082ff(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg2)
    mem[132] = address(arg3)
    mem[164] = arg4
    mem[196] = arg5
    mem[228] = arg6
    require ext_code.size(address(arg1))
    staticcall address(arg1).getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
            gas gas_remaining wei
           args 0, 0, address(arg3), arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], address(arg2) << 64
    require 0, address(arg3) << 64 <= test266151307()
    require 0, address(arg3) << 64 + 127 < return_data.size + 96
    _6 = mem[0, address(arg3) << 64 + 96]
    if mem[0, address(arg3) << 64 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[0, address(arg3) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[0, address(arg3) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[0, address(arg3) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _6
    require return_data.size >= 0, address(arg3) << 64 + (32 * _6) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _6] = mem[0, address(arg3) << 64 + 128 len 32 * _6]
    mem[mem[64]] = _4
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _6
    mem[mem[64] + 96 len 32 * _6] = mem[ceil32(return_data.size) + 128 len 32 * _6]
    return _4, Array(len=_6, data=mem[mem[64] + 96 len 32 * _6])
}

function sub_4ab81254(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 0x8373f26500000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg2)
    mem[132] = address(arg3)
    mem[164] = arg4
    mem[196] = arg5
    mem[228] = arg6
    mem[260] = arg7
    require ext_code.size(address(arg1))
    staticcall address(arg1).getExpectedReturnWithGas(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) with:
            gas gas_remaining wei
           args 0, 0, address(arg3), arg4, arg5, arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 96
    _4 = mem[96 len 4], address(arg2) << 64
    require 0, Mask(224, 32, arg4) >> 32 <= test266151307()
    require 0, Mask(224, 32, arg4) >> 32 + 127 < return_data.size + 96
    _7 = mem[0, Mask(224, 32, arg4) >> 32 + 96]
    if mem[0, Mask(224, 32, arg4) >> 32 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[0, Mask(224, 32, arg4) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[0, Mask(224, 32, arg4) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[0, Mask(224, 32, arg4) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= 0, Mask(224, 32, arg4) >> 32 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[0, Mask(224, 32, arg4) >> 32 + 128 len 32 * _7]
    mem[mem[64]] = _4
    mem[mem[64] + 32] = 0, address(arg3) << 64
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = _7
    mem[mem[64] + 128 len 32 * _7] = mem[ceil32(return_data.size) + 128 len 32 * _7]
    return _4, 0, address(arg3) << 64, 96, _7, mem[mem[64] + 128 len 32 * _7]
}

function sub_93113b5c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor153, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor153)
    call stor153.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) {
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
    if ext_code.size(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[code.data[19929 len 32]][address(arg1)].field_0:
        roleAdmin[code.data[19929 len 32]][address(arg1)].field_0 = 1
        emit RoleGranted(code.data[19929 len 32], arg1, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function sub_2dd35dae(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: new owner cannot be null'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: tokenAddress cannot be null'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: lpAddress cannot be null'
    sub_aa50ec12[address(arg3)] = address(arg2)
    sub_5fae9245[address(arg2)] = address(arg3)
    require ext_code.size(address(arg3))
    call address(arg3).0x2f2ff15d with:
         gas gas_remaining wei
        args 0, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5739ac7a(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
    else:
        if not sub_5fae9245[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: Liquidity pool not found'
        if roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
            require ext_code.size(sub_5fae9245[address(arg1)])
            call sub_5fae9245[address(arg1)].0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg2), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        s = code.data[19929 len 32]
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
    if code.data[19929 len 32] + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function stakeETH(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
    else:
        if not sub_5fae9245[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: Liquidity pool not created'
        if roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
            require ext_code.size(sub_5fae9245[address(arg2)])
            call sub_5fae9245[address(arg2)].0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        s = code.data[19929 len 32]
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
    if code.data[19929 len 32] + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_951db637(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 164).length) + 97 < 96 or floor32(('cd', 164).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        mem[floor32(('cd', 164).length) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + floor32(('cd', 164).length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[floor32(('cd', 164).length) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = code.data[19929 len 32]
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + floor32(('cd', 164).length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[floor32(('cd', 164).length) + 161 len 42], 8297, mem[floor32(('cd', 164).length) + 289 len 66], 0, 0 >> 928,
                    0
    mem[floor32(('cd', 164).length) + 97] = 0xc216019c00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 164).length) + 101] = address(cd[36])
    mem[floor32(('cd', 164).length) + 133] = address(cd[68])
    mem[floor32(('cd', 164).length) + 165] = cd[100]
    mem[floor32(('cd', 164).length) + 197] = cd[132]
    mem[floor32(('cd', 164).length) + 229] = 224
    mem[floor32(('cd', 164).length) + 325] = ('cd', 164).length
    mem[floor32(('cd', 164).length) + 357 len 32 * ('cd', 164).length] = mem[128 len 32 * ('cd', 164).length]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0xc216019c with:
         gas gas_remaining wei
        args address(cd[36]), address(cd[68]), cd[100], cd[132], Array(len=('cd', 164).length, data=mem[floor32(('cd', 164).length) + 357 len 32 * ('cd', 164).length]), cd[196], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3c94d19e(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == uint8(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = code.data[19929 len 32]
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 226 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 290 len 66], 0, 0 >> 928,
                    0
    if sub_5fae9245[address(arg4)]:
        revert with 0, 'ERC20Handler: pool already deployed'
    if address(arg5):
        sub_aa50ec12[address(arg5)] = address(arg4)
        sub_5fae9245[address(arg4)] = address(arg5)
        return address(arg5)
    if ceil32(arg1.length) <= arg1.length:
        create contract with 0 wei
                        code: code.data[12328 len 7601], Array(len=uint8(arg3), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 12359 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 128
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 7827] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 7859 len ceil32(arg2.length)] = arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 12359 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[arg2.length + ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 7859] = 0
        create contract with 0 wei
                        code: code.data[12328 len 7601], Array(len=uint8(arg3), data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 7859 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 128
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_aa50ec12[address(create.new_address)] = address(arg4)
    sub_5fae9245[address(arg4)] = address(create.new_address)
    return address(create.new_address)
}

function sub_dc965582(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not sub_5fae9245[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: Liquidity pool not created'
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    require ext_code.size(sub_5fae9245[address(arg2)])
    call sub_5fae9245[address(arg2)].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(address(arg4))
    call address(arg4).0xa9059cbb with:
         gas gas_remaining wei
        args stor153, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor153)
    call stor153.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        if not address(arg1):
            revert with 0, 'safeTransferETH: transfer to address 0'
        call address(arg1) with:
           value arg3 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'safeTransferETH: ETH transfer failed'
    mem[(2 * ceil32(return_data.size)) + 128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + (2 * ceil32(return_data.size)) + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[(2 * ceil32(return_data.size)) + 224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = code.data[19929 len 32]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + (2 * ceil32(return_data.size)) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if code.data[19929 len 32] + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[(2 * ceil32(return_data.size)) + 160 len 42], 8297, mem[(2 * ceil32(return_data.size)) + 288 len 66], 0, 0 >> 928,
                0
}

function sub_8da61307(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 97 < 96 or floor32(('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 132).length) + 98 < 97 or floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 164).length) + 99 < 98 or floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    idx = 0
    s = cd[164] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
    while idx < ('cd', 164).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(code.data[19929 len 32], 101)
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 131 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 227 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = code.data[19929 len 32]
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 163 len 42], 8297, mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 291 len 66], 0, 0 >> 928,
                    0
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 99] = 0x31fa4a1b00000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 103] = 192
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 295] = ('cd', 36).length
    idx = 0
    s = 128
    t = mem[64] + 228
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 135] = cd[68]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 167] = cd[100]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 199] = (32 * ('cd', 36).length) + 224
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + (32 * ('cd', 36).length) + 327] = mem[floor32(('cd', 36).length) + 97]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + (32 * ('cd', 36).length) + 359 len 32 * mem[floor32(('cd', 36).length) + 97]] = mem[floor32(('cd', 36).length) + 129 len 32 * mem[floor32(('cd', 36).length) + 97]]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 231] = (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 256
    _107 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 359] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + 391 len 32 * _107] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130 len 32 * _107]
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + 263] = 1
    require ext_code.size(address(cd[4]))
    call address(cd[4]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + floor32(('cd', 164).length) + (32 * ('cd', 36).length) + (32 * mem[floor32(('cd', 36).length) + 97]) + (32 * _107) + -mem[64] + 387]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _147 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_147]
    return memory
      from mem[64]
       len 32
}

function unstake(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not sub_5fae9245[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Handler: Liquidity pool not created'
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
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
        s = code.data[19929 len 32]
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
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    mem[100] = arg1
    mem[132] = arg3
    require ext_code.size(sub_5fae9245[address(arg2)])
    call sub_5fae9245[address(arg2)].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not roleAdmin[code.data[19929 len 32]][address(msg.sender)].field_0:
        mem[ceil32(return_data.size) + 128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(return_data.size) + 224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = code.data[19929 len 32]
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(return_data.size) + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if code.data[19929 len 32] + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(return_data.size) + 160 len 42], 8297, mem[ceil32(return_data.size) + 288 len 66], 0, 0 >> 928,
                    0
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg2 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, Mask(224, 32, arg3) >> 32 == bool(0, Mask(224, 32, arg3) >> 32)
            if not 0, Mask(224, 32, arg3) >> 32:
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
}



}
