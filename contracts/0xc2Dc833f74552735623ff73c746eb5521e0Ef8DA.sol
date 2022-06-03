contract main {




// =====================  Runtime code  =====================


#
#  - transferOwnership(address arg1)
#
const _ADMIN = 0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint8 stor1;
uint8 stor1; offset 8
uint8 stor1; offset 16
uint16 stor1;
address sub_fa11fd5aAddress; offset 24
uint256 stor1; offset 24
uint256 stor1; offset 16
mapping of struct sub_282c8ebd;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_282c8ebd(?) {
    require calldata.size - 4 >= 32
    return sub_282c8ebd[arg1].field_0, 
           sub_282c8ebd[arg1].field_256,
           sub_282c8ebd[arg1].field_512,
           sub_282c8ebd[arg1].field_768,
           sub_282c8ebd[arg1].field_1024
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function queryPaused() {
    return bool(uint8(stor1.field_16))
}

function sub_fa11fd5a(?) {
    return sub_fa11fd5aAddress
}

function _fallback() payable {
    revert
}

function calculateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 / 10000 and sub_282c8ebd[arg1].field_1024 > -1 / arg2 / 10000:
        revert with 0, 17
    return (arg2 / 10000 * sub_282c8ebd[arg1].field_1024)
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

function withdrawEth(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_fa11fd5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not owner - Permission denied'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if arg1 != bool(uint8(stor1.field_16)):
        Mask(240, 0, stor1.field_16) = Mask(240, 0, arg1)
        if not arg1:
            emit ContractUnpaused(block.number, msg.sender);
        else:
            emit ContractPaused(block.number, msg.sender);
}

function sub_7fdffe10(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    sub_282c8ebd[arg1].field_0 = arg1
    sub_282c8ebd[arg1].field_256 = address(arg2)
    sub_282c8ebd[arg1].field_512 = address(arg3)
    sub_282c8ebd[arg1].field_768 = address(arg4)
    sub_282c8ebd[arg1].field_1024 = arg5
}

function init() {
    if not uint8(stor1.field_8):
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_8):
            uint16(stor1.field_0) = 257
    if not roleAdmin[address(msg.sender)].field_0:
        roleAdmin[address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230, msg.sender, msg.sender);
    uint8(stor1.field_16) = 1
    Mask(232, 0, stor1.field_24) = Mask(232, 0, msg.sender)
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function initialize() {
    if not uint8(stor1.field_8):
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor1.field_8):
            uint16(stor1.field_0) = 257
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor1.field_8):
                uint16(stor1.field_0) = 257
    if not roleAdmin[address(msg.sender)].field_0:
        roleAdmin[address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0 = 1
        emit RoleGranted(0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230, msg.sender, msg.sender);
    uint8(stor1.field_16) = 1
    Mask(232, 0, stor1.field_24) = Mask(232, 0, msg.sender)
    if uint8(stor1.field_8):
        emit Initialized()
    else:
        uint8(stor1.field_8) = 0
        emit Initialized()
        uint8(stor1.field_8) = 0
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

function withdrawToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_fa11fd5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not owner - Permission denied'
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg2 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
}

function swapExactETHForTokens(uint256 arg1, uint256 arg2, address[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    mem[96] = sub_282c8ebd[arg1].field_0
    mem[128] = sub_282c8ebd[arg1].field_256
    mem[160] = sub_282c8ebd[arg1].field_512
    mem[192] = sub_282c8ebd[arg1].field_768
    mem[224] = sub_282c8ebd[arg1].field_1024
    mem[0] = arg1
    mem[32] = 2
    if msg.value / 10000 and sub_282c8ebd[arg1].field_1024 > -1 / msg.value / 10000:
        revert with 0, 17
    if msg.value < msg.value / 10000 * sub_282c8ebd[arg1].field_1024:
        revert with 0, 17
    mem[256] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[260] = arg2
    mem[292] = 128
    mem[388] = arg3.length
    idx = 0
    s = arg3 + 36
    t = 420
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[324] = msg.sender
    mem[356] = arg4
    require ext_code.size(sub_282c8ebd[arg1].field_512)
    call sub_282c8ebd[arg1].field_512.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value - (msg.value / 10000 * sub_282c8ebd[arg1].field_1024) wei
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=mem[420 len 32 * arg3.length]), msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _20 = mem[256 len 4], Mask(224, 32, arg2) >> 32
    require mem[256 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[256 len 4], Mask(224, 32, arg2) >> 32 + 287 < return_data.size + 256
    _21 = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
    if mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]) + 257
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, arg2) >> 32 + 256]
    require (32 * _21) + _20 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288 len ceil32(32 * _21)] = mem[_20 + 288 len ceil32(32 * _21)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len 32 * _21] = mem[ceil32(return_data.size) + 288 len 32 * _21]
    return Array(len=_21, data=mem[mem[64] + 64 len 32 * _21])
}

function sub_b67b1220(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    mem[96] = sub_282c8ebd[cd[4]].field_0
    mem[128] = sub_282c8ebd[cd[4]].field_256
    mem[160] = sub_282c8ebd[cd[4]].field_512
    mem[192] = sub_282c8ebd[cd[4]].field_768
    mem[224] = sub_282c8ebd[cd[4]].field_1024
    mem[0] = cd[4]
    mem[32] = 2
    if cd[36] / 10000 and sub_282c8ebd[cd[4]].field_1024 > -1 / cd[36] / 10000:
        revert with 0, 17
    if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
        revert with 0, 17
    mem[256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[260] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
    mem[292] = 64
    mem[324] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 356
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(sub_282c8ebd[cd[4]].field_512)
    staticcall sub_282c8ebd[cd[4]].field_512.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), Array(len=('cd', 68).length, data=mem[356 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 256
    require return_data.size >= 32
    _20 = mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
    require mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
    require mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 287 < return_data.size + 256
    _21 = mem[mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 256]
    if mem[mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 256] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 256]) + 257 > test266151307() or ceil32(32 * mem[mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 256]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 256]) + 257
    mem[ceil32(return_data.size) + 256] = mem[mem[256 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 256]
    require (32 * _21) + _20 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288 len ceil32(32 * _21)] = mem[_20 + 288 len ceil32(32 * _21)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _21
    mem[mem[64] + 64 len 32 * _21] = mem[ceil32(return_data.size) + 288 len 32 * _21]
    return Array(len=_21, data=mem[mem[64] + 64 len 32 * _21])
}

function sub_73169978(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    mem[96] = sub_282c8ebd[cd[4]].field_0
    mem[128] = sub_282c8ebd[cd[4]].field_256
    mem[160] = sub_282c8ebd[cd[4]].field_512
    mem[192] = sub_282c8ebd[cd[4]].field_768
    mem[224] = sub_282c8ebd[cd[4]].field_1024
    mem[0] = cd[4]
    mem[32] = 2
    if cd[36] / 10000 and sub_282c8ebd[cd[4]].field_1024 > -1 / cd[36] / 10000:
        revert with 0, 17
    if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
        revert with 0, 17
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[260] = this.address
    mem[292] = sub_282c8ebd[cd[4]].field_512
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_282c8ebd[cd[4]].field_512
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[36] <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 292] = msg.sender
        mem[ceil32(return_data.size) + 324] = this.address
        mem[ceil32(return_data.size) + 356] = cd[36]
        mem[ceil32(return_data.size) + 256] = 100
        mem[ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 288 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 388] = 32
        mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(('cd', 100)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 452 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
        mem[ceil32(return_data.size) + 552] = 0
        call address(('cd', 100)[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_282c8ebd[cd[4]].field_0:
                    revert with memory
                      from 128
                       len sub_282c8ebd[cd[4]].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if not sub_282c8ebd[cd[4]].field_0:
                mem[ceil32(return_data.size) + 452] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
                mem[ceil32(return_data.size) + 488] = cd[68]
                mem[ceil32(return_data.size) + 520] = 160
                mem[ceil32(return_data.size) + 616] = ('cd', 100).length
                idx = 0
                s = cd[100] + 36
                t = ceil32(return_data.size) + 648
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 552] = msg.sender
                mem[ceil32(return_data.size) + 584] = cd[132]
                require ext_code.size(sub_282c8ebd[cd[4]].field_512)
                call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 452
                require return_data.size >= 32
                _691 = mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
                require mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < ceil32(return_data.size) + return_data.size + 452
                _707 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
                mem[(2 * ceil32(return_data.size)) + 452] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
                require (32 * _707) + _691 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 484 len ceil32(32 * _707)] = mem[ceil32(return_data.size) + _691 + 484 len ceil32(32 * _707)]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _707
                mem[mem[64] + 64 len 32 * _707] = mem[(2 * ceil32(return_data.size)) + 484 len 32 * _707]
                return Array(len=_707, data=mem[mem[64] + 64 len 32 * _707])
            require sub_282c8ebd[cd[4]].field_0 >= 32
            require sub_282c8ebd[cd[4]].field_256 == bool(sub_282c8ebd[cd[4]].field_256)
            if not sub_282c8ebd[cd[4]].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 452] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
            mem[ceil32(return_data.size) + 488] = cd[68]
            mem[ceil32(return_data.size) + 520] = 160
            mem[ceil32(return_data.size) + 616] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = ceil32(return_data.size) + 648
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 552] = msg.sender
            mem[ceil32(return_data.size) + 584] = cd[132]
            require ext_code.size(sub_282c8ebd[cd[4]].field_512)
            call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 452
            require return_data.size >= 32
            _692 = mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
            require mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < ceil32(return_data.size) + return_data.size + 452
            _708 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
            mem[(2 * ceil32(return_data.size)) + 452] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
            require (32 * _708) + _692 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 484 len ceil32(32 * _708)] = mem[ceil32(return_data.size) + _692 + 484 len ceil32(32 * _708)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _708
            mem[mem[64] + 64 len 32 * _708] = mem[(2 * ceil32(return_data.size)) + 484 len 32 * _708]
            return Array(len=_708, data=mem[mem[64] + 64 len 32 * _708])
        mem[ceil32(return_data.size) + 452] = return_data.size
        mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = cd[68]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = 160
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = ceil32(return_data.size) + ceil32(return_data.size) + 649
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = msg.sender
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = cd[132]
            require ext_code.size(sub_282c8ebd[cd[4]].field_512)
            call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
            require return_data.size >= 32
            _693 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 453
            _709 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _709
            require (32 * _709) + _693 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _709)] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _693 + 485 len ceil32(32 * _709)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _709
            mem[mem[64] + 64 len 32 * _709] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _709]
            return Array(len=_709, data=mem[mem[64] + 64 len 32 * _709])
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
        if not mem[ceil32(return_data.size) + 484]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = cd[68]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = 160
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = ceil32(return_data.size) + ceil32(return_data.size) + 649
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = msg.sender
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = cd[132]
        require ext_code.size(sub_282c8ebd[cd[4]].field_512)
        call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
        require return_data.size >= 32
        _694 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
        require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 453
        _710 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _710
        require (32 * _710) + _694 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _710)] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _694 + 485 len ceil32(32 * _710)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _710
        mem[mem[64] + 64 len 32 * _710] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _710]
        return Array(len=_710, data=mem[mem[64] + 64 len 32 * _710])
    mem[ceil32(return_data.size) + 260] = sub_282c8ebd[cd[4]].field_512
    mem[ceil32(return_data.size) + 292] = -1
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_282c8ebd[cd[4]].field_512, -1
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = cd[36]
    mem[(2 * ceil32(return_data.size)) + 256] = 100
    mem[(2 * ceil32(return_data.size)) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 288 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 388] = 32
    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 100)[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 452 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
    mem[(2 * ceil32(return_data.size)) + 552] = 0
    call address(('cd', 100)[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if sub_282c8ebd[cd[4]].field_0:
                revert with memory
                  from 128
                   len sub_282c8ebd[cd[4]].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if not sub_282c8ebd[cd[4]].field_0:
            mem[(2 * ceil32(return_data.size)) + 452] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
            mem[(2 * ceil32(return_data.size)) + 488] = cd[68]
            mem[(2 * ceil32(return_data.size)) + 520] = 160
            mem[(2 * ceil32(return_data.size)) + 616] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = (2 * ceil32(return_data.size)) + 648
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 552] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 584] = cd[132]
            require ext_code.size(sub_282c8ebd[cd[4]].field_512)
            call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 452
            require return_data.size >= 32
            _699 = mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
            require mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < (2 * ceil32(return_data.size)) + return_data.size + 452
            _715 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
            mem[(4 * ceil32(return_data.size)) + 452] = _715
            require (32 * _715) + _699 + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 484 len ceil32(32 * _715)] = mem[(2 * ceil32(return_data.size)) + _699 + 484 len ceil32(32 * _715)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _715
            mem[mem[64] + 64 len 32 * _715] = mem[(4 * ceil32(return_data.size)) + 484 len 32 * _715]
            return Array(len=_715, data=mem[mem[64] + 64 len 32 * _715])
        require sub_282c8ebd[cd[4]].field_0 >= 32
        require sub_282c8ebd[cd[4]].field_256 == bool(sub_282c8ebd[cd[4]].field_256)
        if not sub_282c8ebd[cd[4]].field_256:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 452] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
        mem[(2 * ceil32(return_data.size)) + 488] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 520] = 160
        mem[(2 * ceil32(return_data.size)) + 616] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = (2 * ceil32(return_data.size)) + 648
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 552] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 584] = cd[132]
        require ext_code.size(sub_282c8ebd[cd[4]].field_512)
        call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 452
        require return_data.size >= 32
        _700 = mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
        require mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < (2 * ceil32(return_data.size)) + return_data.size + 452
        _716 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
        mem[(4 * ceil32(return_data.size)) + 452] = _716
        require (32 * _716) + _700 + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 484 len ceil32(32 * _716)] = mem[(2 * ceil32(return_data.size)) + _700 + 484 len ceil32(32 * _716)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _716
        mem[mem[64] + 64 len 32 * _716] = mem[(4 * ceil32(return_data.size)) + 484 len 32 * _716]
        return Array(len=_716, data=mem[mem[64] + 64 len 32 * _716])
    mem[(2 * ceil32(return_data.size)) + 452] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = cd[68]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 160
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = msg.sender
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = cd[132]
        require ext_code.size(sub_282c8ebd[cd[4]].field_512)
        call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
        require return_data.size >= 32
        _701 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 453
        _717 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _717
        require (32 * _717) + _701 + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _717)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _701 + 485 len ceil32(32 * _717)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _717
        mem[mem[64] + 64 len 32 * _717] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _717]
        return Array(len=_717, data=mem[mem[64] + 64 len 32 * _717])
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
    if not mem[(2 * ceil32(return_data.size)) + 484]:
        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = cd[68]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 160
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = cd[132]
    require ext_code.size(sub_282c8ebd[cd[4]].field_512)
    call sub_282c8ebd[cd[4]].field_512.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
    require return_data.size >= 32
    _702 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 453
    _718 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _718
    require (32 * _718) + _702 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _718)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _702 + 485 len ceil32(32 * _718)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _718
    mem[mem[64] + 64 len 32 * _718] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _718]
    return Array(len=_718, data=mem[mem[64] + 64 len 32 * _718])
}

function sub_6993e676(?) {
    require calldata.size - 4 >= 160
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    mem[96] = sub_282c8ebd[cd[4]].field_0
    mem[128] = sub_282c8ebd[cd[4]].field_256
    mem[160] = sub_282c8ebd[cd[4]].field_512
    mem[192] = sub_282c8ebd[cd[4]].field_768
    mem[224] = sub_282c8ebd[cd[4]].field_1024
    mem[0] = cd[4]
    mem[32] = 2
    if cd[36] / 10000 and sub_282c8ebd[cd[4]].field_1024 > -1 / cd[36] / 10000:
        revert with 0, 17
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[260] = this.address
    mem[292] = sub_282c8ebd[cd[4]].field_512
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), sub_282c8ebd[cd[4]].field_512
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if cd[36] <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 292] = msg.sender
        mem[ceil32(return_data.size) + 324] = this.address
        mem[ceil32(return_data.size) + 356] = cd[36]
        mem[ceil32(return_data.size) + 256] = 100
        mem[ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 288 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 388] = 32
        mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(('cd', 100)[0])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 452 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
        mem[ceil32(return_data.size) + 552] = 0
        call address(('cd', 100)[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if sub_282c8ebd[cd[4]].field_0:
                    revert with memory
                      from 128
                       len sub_282c8ebd[cd[4]].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if not sub_282c8ebd[cd[4]].field_0:
                if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
                mem[ceil32(return_data.size) + 488] = cd[68]
                mem[ceil32(return_data.size) + 520] = 160
                mem[ceil32(return_data.size) + 616] = ('cd', 100).length
                idx = 0
                s = cd[100] + 36
                t = ceil32(return_data.size) + 648
                while idx < ('cd', 100).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(return_data.size) + 552] = msg.sender
                mem[ceil32(return_data.size) + 584] = cd[132]
                require ext_code.size(sub_282c8ebd[cd[4]].field_512)
                call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 452
                require return_data.size >= 32
                _691 = mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
                require mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < ceil32(return_data.size) + return_data.size + 452
                _707 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
                mem[(2 * ceil32(return_data.size)) + 452] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
                require (32 * _707) + _691 + 32 <= return_data.size
                mem[(2 * ceil32(return_data.size)) + 484 len ceil32(32 * _707)] = mem[ceil32(return_data.size) + _691 + 484 len ceil32(32 * _707)]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _707
                mem[mem[64] + 64 len 32 * _707] = mem[(2 * ceil32(return_data.size)) + 484 len 32 * _707]
                return Array(len=_707, data=mem[mem[64] + 64 len 32 * _707])
            require sub_282c8ebd[cd[4]].field_0 >= 32
            require sub_282c8ebd[cd[4]].field_256 == bool(sub_282c8ebd[cd[4]].field_256)
            if not sub_282c8ebd[cd[4]].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
                revert with 0, 17
            mem[ceil32(return_data.size) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
            mem[ceil32(return_data.size) + 488] = cd[68]
            mem[ceil32(return_data.size) + 520] = 160
            mem[ceil32(return_data.size) + 616] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = ceil32(return_data.size) + 648
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 552] = msg.sender
            mem[ceil32(return_data.size) + 584] = cd[132]
            require ext_code.size(sub_282c8ebd[cd[4]].field_512)
            call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 452
            require return_data.size >= 32
            _692 = mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
            require mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < ceil32(return_data.size) + return_data.size + 452
            _708 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
            mem[(2 * ceil32(return_data.size)) + 452] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
            require (32 * _708) + _692 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 484 len ceil32(32 * _708)] = mem[ceil32(return_data.size) + _692 + 484 len ceil32(32 * _708)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _708
            mem[mem[64] + 64 len 32 * _708] = mem[(2 * ceil32(return_data.size)) + 484 len 32 * _708]
            return Array(len=_708, data=mem[mem[64] + 64 len 32 * _708])
        mem[ceil32(return_data.size) + 452] = return_data.size
        mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
                revert with 0, 17
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = cd[68]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = 160
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = ceil32(return_data.size) + ceil32(return_data.size) + 649
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = msg.sender
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = cd[132]
            require ext_code.size(sub_282c8ebd[cd[4]].field_512)
            call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
            require return_data.size >= 32
            _693 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
            require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 453
            _709 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
            if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _709
            require (32 * _709) + _693 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _709)] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _693 + 485 len ceil32(32 * _709)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _709
            mem[mem[64] + 64 len 32 * _709] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _709]
            return Array(len=_709, data=mem[mem[64] + 64 len 32 * _709])
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
        if not mem[ceil32(return_data.size) + 484]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
            revert with 0, 17
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = cd[68]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = 160
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = ceil32(return_data.size) + ceil32(return_data.size) + 649
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = msg.sender
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = cd[132]
        require ext_code.size(sub_282c8ebd[cd[4]].field_512)
        call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
        require return_data.size >= 32
        _694 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
        require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 453
        _710 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _710
        require (32 * _710) + _694 + 32 <= return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _710)] = mem[ceil32(return_data.size) + ceil32(return_data.size) + _694 + 485 len ceil32(32 * _710)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _710
        mem[mem[64] + 64 len 32 * _710] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _710]
        return Array(len=_710, data=mem[mem[64] + 64 len 32 * _710])
    mem[ceil32(return_data.size) + 260] = sub_282c8ebd[cd[4]].field_512
    mem[ceil32(return_data.size) + 292] = -1
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_282c8ebd[cd[4]].field_512, -1
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 292] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = cd[36]
    mem[(2 * ceil32(return_data.size)) + 256] = 100
    mem[(2 * ceil32(return_data.size)) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 288 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 388] = 32
    mem[(2 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 100)[0])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 452 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
    mem[(2 * ceil32(return_data.size)) + 552] = 0
    call address(('cd', 100)[0]) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if sub_282c8ebd[cd[4]].field_0:
                revert with memory
                  from 128
                   len sub_282c8ebd[cd[4]].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if not sub_282c8ebd[cd[4]].field_0:
            if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
            mem[(2 * ceil32(return_data.size)) + 488] = cd[68]
            mem[(2 * ceil32(return_data.size)) + 520] = 160
            mem[(2 * ceil32(return_data.size)) + 616] = ('cd', 100).length
            idx = 0
            s = cd[100] + 36
            t = (2 * ceil32(return_data.size)) + 648
            while idx < ('cd', 100).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 552] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 584] = cd[132]
            require ext_code.size(sub_282c8ebd[cd[4]].field_512)
            call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 452
            require return_data.size >= 32
            _699 = mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
            require mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < (2 * ceil32(return_data.size)) + return_data.size + 452
            _715 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
            mem[(4 * ceil32(return_data.size)) + 452] = _715
            require (32 * _715) + _699 + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 484 len ceil32(32 * _715)] = mem[(2 * ceil32(return_data.size)) + _699 + 484 len ceil32(32 * _715)]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _715
            mem[mem[64] + 64 len 32 * _715] = mem[(4 * ceil32(return_data.size)) + 484 len 32 * _715]
            return Array(len=_715, data=mem[mem[64] + 64 len 32 * _715])
        require sub_282c8ebd[cd[4]].field_0 >= 32
        require sub_282c8ebd[cd[4]].field_256 == bool(sub_282c8ebd[cd[4]].field_256)
        if not sub_282c8ebd[cd[4]].field_256:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 452] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 456] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
        mem[(2 * ceil32(return_data.size)) + 488] = cd[68]
        mem[(2 * ceil32(return_data.size)) + 520] = 160
        mem[(2 * ceil32(return_data.size)) + 616] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = (2 * ceil32(return_data.size)) + 648
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 552] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 584] = cd[132]
        require ext_code.size(sub_282c8ebd[cd[4]].field_512)
        call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 648 len 32 * ('cd', 100).length]), msg.sender, cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 452
        require return_data.size >= 32
        _700 = mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
        require mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 483 < (2 * ceil32(return_data.size)) + return_data.size + 452
        _716 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 452 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 452]) + 453
        mem[(4 * ceil32(return_data.size)) + 452] = _716
        require (32 * _716) + _700 + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 484 len ceil32(32 * _716)] = mem[(2 * ceil32(return_data.size)) + _700 + 484 len ceil32(32 * _716)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _716
        mem[mem[64] + 64 len 32 * _716] = mem[(4 * ceil32(return_data.size)) + 484 len 32 * _716]
        return Array(len=_716, data=mem[mem[64] + 64 len 32 * _716])
    mem[(2 * ceil32(return_data.size)) + 452] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = cd[68]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 160
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = msg.sender
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = cd[132]
        require ext_code.size(sub_282c8ebd[cd[4]].field_512)
        call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
        require return_data.size >= 32
        _701 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 453
        _717 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _717
        require (32 * _717) + _701 + 32 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _717)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _701 + 485 len ceil32(32 * _717)]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _717
        mem[mem[64] + 64 len 32 * _717] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _717]
        return Array(len=_717, data=mem[mem[64] + 64 len 32 * _717])
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 484] == bool(mem[(2 * ceil32(return_data.size)) + 484])
    if not mem[(2 * ceil32(return_data.size)) + 484]:
        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if cd[36] < cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = cd[68]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 160
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = cd[132]
    require ext_code.size(sub_282c8ebd[cd[4]].field_512)
    call sub_282c8ebd[cd[4]].field_512.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024), cd[68], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 649 len 32 * ('cd', 100).length]), msg.sender, cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453
    require return_data.size >= 32
    _702 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 484 < (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 453
    _718 = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 453 len 4], Mask(224, 32, cd[36] - (cd[36] / 10000 * sub_282c8ebd[cd[4]].field_1024)) >> 32 + 453]) + 454
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = _718
    require (32 * _718) + _702 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len ceil32(32 * _718)] = mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + _702 + 485 len ceil32(32 * _718)]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _718
    mem[mem[64] + 64 len 32 * _718] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485 len 32 * _718]
    return Array(len=_718, data=mem[mem[64] + 64 len 32 * _718])
}



}
