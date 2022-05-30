contract main {




// =====================  Runtime code  =====================


#
#  - transferOwnership(address arg1)
#
const sub_d82bad68(?) = 0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada

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
array of uint256 stor2;
mapping of struct sub_ed533951;
mapping of uint8 stor99;
address storD336; offset 16

function sub_16a3bc66(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_ed533951[arg1].field_2560), 
           uint256(sub_ed533951[arg1].field_2304),
           uint256(sub_ed533951[arg1].field_1536),
           uint256(sub_ed533951[arg1].field_1792)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(roleAdmin[arg1].field_256)
}

function queryToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_ed533951[arg1].field_0), 
           bool(sub_ed533951[arg1].field_256),
           uint256(sub_ed533951[arg1].field_512),
           bool(sub_ed533951[arg1].field_768),
           bool(sub_ed533951[arg1].field_776),
           address(sub_ed533951[arg1].field_784)
}

function sub_8fe28b77(?) payable {
    require calldata.size - 4 >= 64
    return bool(sub_ed533951[arg1][5][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_abcb8780(?) payable {
    return stor2.length
}

function sub_ae414726(?) payable {
    require calldata.size - 4 >= 64
    return bool(sub_ed533951[arg1][4][arg2].field_0)
}

function queryPaused() payable {
    return bool(uint8(stor1.field_16))
}

function sub_ed533951(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_ed533951[arg1].field_2048), uint256(sub_ed533951[arg1].field_2816)
}

function sub_fa11fd5a(?) payable {
    return sub_fa11fd5aAddress
}

function _fallback() payable {
    revert
}

function calculateDepositFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 / 10000 and uint256(sub_ed533951[arg1].field_1792) > -1 / arg2 / 10000:
        revert with 0, 17
    return (arg2 / 10000 * uint256(sub_ed533951[arg1].field_1792))
}

function calculateWithdrawFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 / 10000 and uint256(sub_ed533951[arg1].field_1536) > -1 / arg2 / 10000:
        revert with 0, 17
    return (arg2 / 10000 * uint256(sub_ed533951[arg1].field_1536))
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

function sub_53be7fd9(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if arg2 == uint256(sub_ed533951[arg1].field_2560):
        revert with 0, 'Bridge: No action required'
    uint256(sub_ed533951[arg1].field_2560) = arg2
}

function sub_eec4fe97(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if arg2 == uint256(sub_ed533951[arg1].field_2304):
        revert with 0, 'Bridge: No action required'
    uint256(sub_ed533951[arg1].field_2304) = arg2
}

function sub_5e0ccb79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97] = uint32(mem[168]) >> 224
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function setPaused(bool arg1) payable {
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

function sub_1efd88d6(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if arg2 == uint256(sub_ed533951[arg1].field_512):
        revert with 0, 'Bridge: No action required'
    uint256(sub_ed533951[arg1].field_512) = arg2
    emit 0x8d90eb32: msg.sender, arg1, arg2
}

function sub_74f21c12(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if bool(arg2) == bool(sub_ed533951[arg1].field_768):
        revert with 0, 'Bridge: No action required'
    sub_ed533951[arg1].field_768 = uint8(bool(arg2))
    emit 0x2e477611: msg.sender, arg1, bool(arg2)
}

function setDepositFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if arg2 > 10000:
        revert with 0, 'Bridge: Fee exceeds 100%'
    if arg2 == uint256(sub_ed533951[arg1].field_1792):
        revert with 0, 'Bridge: No action required'
    uint256(sub_ed533951[arg1].field_1792) = arg2
}

function setWithdrawFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if arg2 > 10000:
        revert with 0, 'Bridge: Fee exceeds 100%'
    if arg2 == uint256(sub_ed533951[arg1].field_1536):
        revert with 0, 'Bridge: No action required'
    uint256(sub_ed533951[arg1].field_1536) = arg2
}

function sub_81bfdf91(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token not registered'
    if bool(arg2) == bool(sub_ed533951[arg1].field_776):
        revert with 0, 'Bridge: No action required'
    Mask(248, 0, sub_ed533951[arg1].field_776) = Mask(248, 0, bool(arg2))
    emit 0x61b8f626: msg.sender, arg1, bool(arg2)
}

function sub_cbf917d9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not uint256(sub_ed533951[arg1].field_2048):
        revert with 0, 'Bridge: Accumulated fee = 0'
    require ext_code.size(address(sub_ed533951[arg1].field_784))
    call address(sub_ed533951[arg1].field_784).mintTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), uint256(sub_ed533951[arg1].field_2048)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint256(sub_ed533951[arg1].field_2048) = 0
    emit 0x5c170c56: arg1, uint256(sub_ed533951[arg1].field_2048), address(arg2)
}

function init() payable {
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

function sub_9e216482(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == bool(arg2)
    require arg4 == address(arg4)
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(arg4):
        revert with 0, 'Bridge: Token may not be empty'
    if address(sub_ed533951[arg1].field_784):
        revert with 0, 'Bridge: Token already registered'
    uint256(sub_ed533951[arg1].field_0) = arg1
    sub_ed533951[arg1].field_256 = uint8(bool(arg2))
    uint256(sub_ed533951[arg1].field_512) = arg3
    sub_ed533951[arg1].field_768 = 0
    sub_ed533951[arg1].field_776 = 0
    address(sub_ed533951[arg1].field_784) = address(arg4)
    Mask(80, 0, sub_ed533951[arg1].field_944) = 0
    Mask(80, 0, sub_ed533951[arg1].field_944) = 0
    uint256(sub_ed533951[arg1].field_1536) = 0
    uint256(sub_ed533951[arg1].field_1792) = 0
    uint256(sub_ed533951[arg1].field_2048) = 0
    uint256(sub_ed533951[arg1].field_2304) = 0
    uint256(sub_ed533951[arg1].field_2560) = 0
    uint256(sub_ed533951[arg1].field_2816) = 0
    emit 0x7f80ded2: msg.sender, arg1, bool(arg2), arg3, address(arg4)
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[uint256(roleAdmin[arg1].field_256)][address(msg.sender)].field_0:
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
    s = uint256(roleAdmin[arg1].field_256)
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
    if uint256(roleAdmin[arg1].field_256) + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function initialize() payable {
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
        uint256(roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada].field_256) = 0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230
        emit RoleAdminChanged(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, uint256(roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada].field_256), 0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230);
        stor2.length = chainid
        emit Initialized()
    else:
        uint8(stor1.field_8) = 0
        uint256(roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada].field_256) = 0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230
        emit RoleAdminChanged(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, uint256(roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada].field_256), 0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230);
        stor2.length = chainid
        emit Initialized()
        uint8(stor1.field_8) = 0
}

function sub_5463948d(?) payable {
    require calldata.size - 4 >= 160
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not address(sub_ed533951[arg4].field_784):
        revert with 0, 'Bridge: Token not registered'
    if not sub_ed533951[arg4].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: Withdrawals disabled for this token'
    if arg2 != stor2.length:
        revert with 0, 'Bridge: Incorrect network'
    if sub_ed533951[arg4][4][arg1].field_0:
        revert with 0, 'Bridge: Nonce already used'
    if not sub_ed533951[arg4].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: Token is not a wrapped token'
    if arg5 / 10000 and uint256(sub_ed533951[arg4].field_1536) > -1 / arg5 / 10000:
        revert with 0, 17
    if uint256(sub_ed533951[arg4].field_2560) != 0:
        require ext_code.size(storD336)
        staticcall storD336.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < uint256(sub_ed533951[arg4].field_2560):
            revert with 0, 'Bridge: Insufficient FMTA amount to pay fee'
        require ext_code.size(storD336)
        call storD336.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, uint256(sub_ed533951[arg4].field_2560)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_ed533951[arg4].field_2816) > !uint256(sub_ed533951[arg4].field_2304):
            revert with 0, 17
        uint256(sub_ed533951[arg4].field_2816) += uint256(sub_ed533951[arg4].field_2304)
    sub_ed533951[arg4][4][arg1].field_0 = 1
    require ext_code.size(address(sub_ed533951[arg4].field_784))
    call address(sub_ed533951[arg4].field_784).0x93097828 with:
         gas gas_remaining wei
        args msg.sender, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg5 / 10000 * uint256(sub_ed533951[arg4].field_1536):
        revert with 0, 17
    emit 0xc1a6280e: msg.sender, arg2, ext_call.return_data[0] - (arg5 / 10000 * uint256(sub_ed533951[arg4].field_1536)), uint256(sub_ed533951[arg4].field_2560), arg5 / 10000 * uint256(sub_ed533951[arg4].field_1536), arg1, arg3, arg4
    return (ext_call.return_data[0] - (arg5 / 10000 * uint256(sub_ed533951[arg4].field_1536)))
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor1.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not address(sub_ed533951[arg3].field_784):
        revert with 0, 'Bridge: Token not registered'
    if not sub_ed533951[arg3].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bridge: Withdrawals disabled for this token'
    if sub_ed533951[arg3][4][arg1].field_0:
        revert with 0, 'Bridge: Nonce already used'
    require ext_code.size(address(sub_ed533951[arg3].field_784))
    staticcall address(sub_ed533951[arg3].field_784).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg4:
        revert with 0, 'Bridge: Insufficient balance'
    if arg4 / 10000 and uint256(sub_ed533951[arg3].field_1536) > -1 / arg4 / 10000:
        revert with 0, 17
    if uint256(sub_ed533951[arg3].field_2560) != 0:
        require ext_code.size(storD336)
        staticcall storD336.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < uint256(sub_ed533951[arg3].field_2560):
            revert with 0, 'Bridge: Insufficient FMTA balance'
        require ext_code.size(storD336)
        call storD336.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, uint256(sub_ed533951[arg3].field_2560)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_ed533951[arg3].field_2816) > !uint256(sub_ed533951[arg3].field_2560):
            revert with 0, 17
        uint256(sub_ed533951[arg3].field_2816) += uint256(sub_ed533951[arg3].field_2560)
    sub_ed533951[arg3][4][arg1].field_0 = 1
    require ext_code.size(address(sub_ed533951[arg3].field_784))
    call address(sub_ed533951[arg3].field_784).0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint256(sub_ed533951[arg3].field_2048) > !(arg4 / 10000 * uint256(sub_ed533951[arg3].field_1536)):
        revert with 0, 17
    uint256(sub_ed533951[arg3].field_2048) += arg4 / 10000 * uint256(sub_ed533951[arg3].field_1536)
    if arg4 < arg4 / 10000 * uint256(sub_ed533951[arg3].field_1536):
        revert with 0, 17
    emit 0xc1a6280e: msg.sender, stor2.length, arg4 - (arg4 / 10000 * uint256(sub_ed533951[arg3].field_1536)), uint256(sub_ed533951[arg3].field_2560), arg4 / 10000 * uint256(sub_ed533951[arg3].field_1536), arg1, arg2, arg3
    return (arg4 - (arg4 / 10000 * uint256(sub_ed533951[arg3].field_1536)))
}

function sub_3cfa844c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _81 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_81] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_81 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_81 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _81
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _80 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 36).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 36).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 36).length)) + 1
    mem[_80] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[_80 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[_80 + ('cd', 36).length + 32] = 0
    _84 = mem[_80 + 72]
    mem[0] = uint32(mem[_80 + 72]) >> 224
    mem[32] = 3
    _85 = sha3(mem[0], 3)
    if not address(sub_ed533951[mem[0]].field_784):
        revert with 0, 'Bridge: Token not registered'
    if not sub_ed533951[mem[0]].field_776:
        revert with 0, 'Bridge: Deposits disabled for this token'
    if mem[96] < uint256(sub_ed533951[mem[0]].field_512):
        revert with 0, 'Bridge: Not enough signatures'
    if uint256(sub_ed533951[mem[0]].field_512) > test266151307():
        revert with 0, 65
    _92 = mem[64]
    mem[mem[64]] = uint256(sub_ed533951[mem[0]].field_512)
    mem[64] = mem[64] + (32 * uint256(sub_ed533951[mem[0]].field_512)) + 32
    if not uint256(sub_ed533951[mem[0]].field_512):
        idx = 0
        s = 0
        while idx < stor2[_85]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] != 65:
                revert with 0, 'Bridge: Signature incorrect length'
            _179 = mem[mem[(32 * idx) + 128] + 32]
            _180 = mem[mem[(32 * idx) + 128] + 64]
            _181 = mem[mem[(32 * idx) + 128] + 96]
            _182 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_182 + 32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length])
            mem[_182 + 64] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_181')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_181')), 0) - 256
            mem[_182 + 96] = _179
            mem[_182 + 128] = _180
            signer = erecover(sha3(call.data[cd[36] + 36 len ('cd', 36).length]), 0, _179, _180) 
            mem[_182] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = sha3(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, 0)
            if not roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada][address(signer)].field_0:
                revert with 0, 'Bridge: Multisig signer not permitted'
            s = 0
            while s < mem[_92]:
                if s >= mem[_92]:
                    revert with 0, 50
                if mem[(32 * s) + _92 + 44 len 20] == address(signer):
                    revert with 0, 'Bridge: Duplicate multisig signer'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if mem[_92] >= mem[_92]:
                revert with 0, 50
            mem[(32 * mem[_92]) + _92 + 32] = address(signer)
            if mem[_92] == -1:
                revert with 0, 17
            s = mem[_92] + 1
            s = signer
            continue 
        _158 = mem[_80 + 32]
        _159 = mem[_80 + 68]
        _160 = mem[_80 + 108]
        if uint32(mem[_80 + 68]) >> 224 != stor2.length:
            revert with 0, 'Bridge: Incorrect network'
        mem[0] = mem[_80 + 108]
        if stor[_85 + 5][mem[0]]:
            revert with 0, 'Bridge: Nonce already used'
        return _160, Mask(256, -224, _159) << 224, Mask(256, -224, _84) << 224, _158
    mem[_92 + 32 len 32 * uint256(sub_ed533951[mem[0]].field_512)] = call.data[calldata.size len 32 * uint256(sub_ed533951[mem[0]].field_512)]
    idx = 0
    s = 0
    while idx < stor2[_85]:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128]] != 65:
            revert with 0, 'Bridge: Signature incorrect length'
        _186 = mem[mem[(32 * idx) + 128] + 32]
        _187 = mem[mem[(32 * idx) + 128] + 64]
        _188 = mem[mem[(32 * idx) + 128] + 96]
        _189 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_189 + 32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length])
        mem[_189 + 64] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_188')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_188')), 0) - 256
        mem[_189 + 96] = _186
        mem[_189 + 128] = _187
        signer = erecover(sha3(call.data[cd[36] + 36 len ('cd', 36).length]), 0, _186, _187) 
        mem[_189] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(signer)
        mem[32] = sha3(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, 0)
        if not roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada][address(signer)].field_0:
            revert with 0, 'Bridge: Multisig signer not permitted'
        s = 0
        while s < mem[_92]:
            if s >= mem[_92]:
                revert with 0, 50
            if mem[(32 * s) + _92 + 44 len 20] == address(signer):
                revert with 0, 'Bridge: Duplicate multisig signer'
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if mem[_92] >= mem[_92]:
            revert with 0, 50
        mem[(32 * mem[_92]) + _92 + 32] = address(signer)
        if mem[_92] == -1:
            revert with 0, 17
        s = mem[_92] + 1
        s = signer
        continue 
    _162 = mem[_80 + 32]
    _163 = mem[_80 + 68]
    _164 = mem[_80 + 108]
    if uint32(mem[_80 + 68]) >> 224 != stor2.length:
        revert with 0, 'Bridge: Incorrect network'
    mem[0] = mem[_80 + 108]
    if stor[_85 + 5][mem[0]]:
        revert with 0, 'Bridge: Nonce already used'
    return _164, Mask(256, -224, _163) << 224, Mask(256, -224, _84) << 224, _162
}

function sub_ba633d35(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _137 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_137] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_137 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_137 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _137
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _136 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 36).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 36).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 36).length)) + 1
    mem[_136] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[_136 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[_136 + ('cd', 36).length + 32] = 0
    if uint8(stor1.field_16):
        revert with 0, 'SecureContract: Contract is paused'
    _141 = mem[_136 + 72]
    mem[0] = uint32(mem[_136 + 72]) >> 224
    mem[32] = 3
    _142 = sha3(mem[0], 3)
    if not address(sub_ed533951[mem[0]].field_784):
        revert with 0, 'Bridge: Token not registered'
    if not sub_ed533951[mem[0]].field_776:
        revert with 0, 'Bridge: Deposits disabled for this token'
    if mem[96] < uint256(sub_ed533951[mem[0]].field_512):
        revert with 0, 'Bridge: Not enough signatures'
    if uint256(sub_ed533951[mem[0]].field_512) > test266151307():
        revert with 0, 65
    _150 = mem[64]
    mem[mem[64]] = uint256(sub_ed533951[mem[0]].field_512)
    mem[64] = mem[64] + (32 * uint256(sub_ed533951[mem[0]].field_512)) + 32
    if not uint256(sub_ed533951[mem[0]].field_512):
        idx = 0
        s = 0
        while idx < stor2[_142]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] != 65:
                revert with 0, 'Bridge: Signature incorrect length'
            _291 = mem[mem[(32 * idx) + 128] + 32]
            _292 = mem[mem[(32 * idx) + 128] + 64]
            _293 = mem[mem[(32 * idx) + 128] + 96]
            _294 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_294 + 32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length])
            mem[_294 + 64] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_293')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_293')), 0) - 256
            mem[_294 + 96] = _291
            mem[_294 + 128] = _292
            signer = erecover(sha3(call.data[cd[36] + 36 len ('cd', 36).length]), 0, _291, _292) 
            mem[_294] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = sha3(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, 0)
            if not roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada][address(signer)].field_0:
                revert with 0, 'Bridge: Multisig signer not permitted'
            s = 0
            while s < mem[_150]:
                if s >= mem[_150]:
                    revert with 0, 50
                if mem[(32 * s) + _150 + 44 len 20] == address(signer):
                    revert with 0, 'Bridge: Duplicate multisig signer'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if mem[_150] >= mem[_150]:
                revert with 0, 50
            mem[(32 * mem[_150]) + _150 + 32] = address(signer)
            if mem[_150] == -1:
                revert with 0, 17
            s = mem[_150] + 1
            s = signer
            continue 
        _270 = mem[_136 + 32]
        _271 = mem[_136 + 68]
        _272 = mem[_136 + 108]
        if uint32(mem[_136 + 68]) >> 224 != stor2.length:
            revert with 0, 'Bridge: Incorrect network'
        mem[0] = mem[_136 + 108]
        if stor[_142 + 5][mem[0]]:
            revert with 0, 'Bridge: Nonce already used'
        if not uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304):
            _304 = mem[_136 + 76]
            if _270 / 10000 and uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792) > -1 / _270 / 10000:
                revert with 0, 17
            if _270 < _270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _141) << 224][5][_272].field_0 = 1
            mem[mem[64]] = 0x449a52f800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_304)
            mem[mem[64] + 36] = _270 - (_270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _141) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _141) << 224].field_784).mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_304), _270 - (_270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
        else:
            mem[32] = 3
            mem[0] = 0
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(storD336)
            staticcall storD336.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_324] < uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304):
                revert with 0, 'Bridge: Insufficient FMTA balance'
            mem[mem[64]] = 0x79cc679000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304)
            require ext_code.size(storD336)
            call storD336.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2816) > !uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304):
                revert with 0, 17
            uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2816) += uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304)
            _361 = mem[_136 + 76]
            if _270 / 10000 and uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792) > -1 / _270 / 10000:
                revert with 0, 17
            if _270 < _270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _141) << 224][5][_272].field_0 = 1
            mem[mem[64]] = 0x449a52f800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_361)
            mem[mem[64] + 36] = _270 - (_270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _141) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _141) << 224].field_784).mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_361), _270 - (_270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2048) > !(_270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792)):
            revert with 0, 17
        uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2048) += _270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792)
        emit 0xacfebf18: msg.sender, Mask(256, -224, _271) << 224, _270 - (_270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792)), uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304), _270 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792), _272, uint32(mem[_136 + 64]) >> 224, uint32(_141) >> 224
    else:
        mem[_150 + 32 len 32 * uint256(sub_ed533951[mem[0]].field_512)] = call.data[calldata.size len 32 * uint256(sub_ed533951[mem[0]].field_512)]
        idx = 0
        s = 0
        while idx < stor2[_142]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] != 65:
                revert with 0, 'Bridge: Signature incorrect length'
            _298 = mem[mem[(32 * idx) + 128] + 32]
            _299 = mem[mem[(32 * idx) + 128] + 64]
            _300 = mem[mem[(32 * idx) + 128] + 96]
            _301 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_301 + 32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length])
            mem[_301 + 64] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_300')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_300')), 0) - 256
            mem[_301 + 96] = _298
            mem[_301 + 128] = _299
            signer = erecover(sha3(call.data[cd[36] + 36 len ('cd', 36).length]), 0, _298, _299) 
            mem[_301] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = sha3(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, 0)
            if not roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada][address(signer)].field_0:
                revert with 0, 'Bridge: Multisig signer not permitted'
            s = 0
            while s < mem[_150]:
                if s >= mem[_150]:
                    revert with 0, 50
                if mem[(32 * s) + _150 + 44 len 20] == address(signer):
                    revert with 0, 'Bridge: Duplicate multisig signer'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if mem[_150] >= mem[_150]:
                revert with 0, 50
            mem[(32 * mem[_150]) + _150 + 32] = address(signer)
            if mem[_150] == -1:
                revert with 0, 17
            s = mem[_150] + 1
            s = signer
            continue 
        _274 = mem[_136 + 32]
        _275 = mem[_136 + 68]
        _276 = mem[_136 + 108]
        if uint32(mem[_136 + 68]) >> 224 != stor2.length:
            revert with 0, 'Bridge: Incorrect network'
        mem[0] = mem[_136 + 108]
        if stor[_142 + 5][mem[0]]:
            revert with 0, 'Bridge: Nonce already used'
        if not uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304):
            _313 = mem[_136 + 76]
            if _274 / 10000 and uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792) > -1 / _274 / 10000:
                revert with 0, 17
            if _274 < _274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _141) << 224][5][_276].field_0 = 1
            mem[mem[64]] = 0x449a52f800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_313)
            mem[mem[64] + 36] = _274 - (_274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _141) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _141) << 224].field_784).mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_313), _274 - (_274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
        else:
            mem[32] = 3
            mem[0] = 0
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(storD336)
            staticcall storD336.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _327 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_327] < uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304):
                revert with 0, 'Bridge: Insufficient FMTA balance'
            mem[mem[64]] = 0x79cc679000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304)
            require ext_code.size(storD336)
            call storD336.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2816) > !uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304):
                revert with 0, 17
            uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2816) += uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304)
            _364 = mem[_136 + 76]
            if _274 / 10000 and uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792) > -1 / _274 / 10000:
                revert with 0, 17
            if _274 < _274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _141) << 224][5][_276].field_0 = 1
            mem[mem[64]] = 0x449a52f800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_364)
            mem[mem[64] + 36] = _274 - (_274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _141) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _141) << 224].field_784).mintTo(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(_364), _274 - (_274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2048) > !(_274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792)):
            revert with 0, 17
        uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2048) += _274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792)
        emit 0xacfebf18: msg.sender, Mask(256, -224, _275) << 224, _274 - (_274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792)), uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_2304), _274 / 10000 * uint256(sub_ed533951[Mask(256, -224, _141) << 224].field_1792), _276, uint32(mem[_136 + 64]) >> 224, uint32(_141) >> 224
}

function sub_835ba7f2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _141 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_141] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_141 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_141 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _141
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    _140 = mem[64]
    if mem[64] + ceil32(ceil32(('cd', 36).length)) + 1 < mem[64] or mem[64] + ceil32(ceil32(('cd', 36).length)) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(('cd', 36).length)) + 1
    mem[_140] = ('cd', 36).length
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[_140 + 32 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[_140 + ('cd', 36).length + 32] = 0
    if uint8(stor1.field_16):
        revert with 0, 'SecureContract: Contract is paused'
    _145 = mem[_140 + 72]
    mem[0] = uint32(mem[_140 + 72]) >> 224
    mem[32] = 3
    _146 = sha3(mem[0], 3)
    if not address(sub_ed533951[mem[0]].field_784):
        revert with 0, 'Bridge: Token not registered'
    if not sub_ed533951[mem[0]].field_776:
        revert with 0, 'Bridge: Deposits disabled for this token'
    if mem[96] < uint256(sub_ed533951[mem[0]].field_512):
        revert with 0, 'Bridge: Not enough signatures'
    if uint256(sub_ed533951[mem[0]].field_512) > test266151307():
        revert with 0, 65
    _154 = mem[64]
    mem[mem[64]] = uint256(sub_ed533951[mem[0]].field_512)
    mem[64] = mem[64] + (32 * uint256(sub_ed533951[mem[0]].field_512)) + 32
    if not uint256(sub_ed533951[mem[0]].field_512):
        idx = 0
        s = 0
        while idx < stor2[_146]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] != 65:
                revert with 0, 'Bridge: Signature incorrect length'
            _299 = mem[mem[(32 * idx) + 128] + 32]
            _300 = mem[mem[(32 * idx) + 128] + 64]
            _301 = mem[mem[(32 * idx) + 128] + 96]
            _302 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_302 + 32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length])
            mem[_302 + 64] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_301')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_301')), 0) - 256
            mem[_302 + 96] = _299
            mem[_302 + 128] = _300
            signer = erecover(sha3(call.data[cd[36] + 36 len ('cd', 36).length]), 0, _299, _300) 
            mem[_302] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = sha3(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, 0)
            if not roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada][address(signer)].field_0:
                revert with 0, 'Bridge: Multisig signer not permitted'
            s = 0
            while s < mem[_154]:
                if s >= mem[_154]:
                    revert with 0, 50
                if mem[(32 * s) + _154 + 44 len 20] == address(signer):
                    revert with 0, 'Bridge: Duplicate multisig signer'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if mem[_154] >= mem[_154]:
                revert with 0, 50
            mem[(32 * mem[_154]) + _154 + 32] = address(signer)
            if mem[_154] == -1:
                revert with 0, 17
            s = mem[_154] + 1
            s = signer
            continue 
        _278 = mem[_140 + 32]
        _279 = mem[_140 + 68]
        _280 = mem[_140 + 108]
        if uint32(mem[_140 + 68]) >> 224 != stor2.length:
            revert with 0, 'Bridge: Incorrect network'
        mem[0] = mem[_140 + 108]
        if stor[_146 + 5][mem[0]]:
            revert with 0, 'Bridge: Nonce already used'
        if not sub_ed533951[Mask(256, -224, _145) << 224].field_256:
            revert with 0, 'Bridge: Token is not a wrapped token'
        if not uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304):
            _322 = mem[_140 + 76]
            if _278 / 10000 and uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792) > -1 / _278 / 10000:
                revert with 0, 17
            if _278 < _278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _145) << 224][5][_280].field_0 = 1
            mem[mem[64]] = 0x6e41f4b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_322)
            mem[mem[64] + 36] = _278 - (_278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _145) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _145) << 224].field_784).0x6e41f4b3 with:
                 gas gas_remaining wei
                args address(_322), _278 - (_278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
        else:
            mem[32] = 3
            mem[0] = 0
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(storD336)
            staticcall storD336.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_340] < uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304):
                revert with 0, 'Bridge: Insufficient FMTA balance'
            mem[mem[64]] = 0x79cc679000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304)
            require ext_code.size(storD336)
            call storD336.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2816) > !uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304):
                revert with 0, 17
            uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2816) += uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304)
            _375 = mem[_140 + 76]
            if _278 / 10000 and uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792) > -1 / _278 / 10000:
                revert with 0, 17
            if _278 < _278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _145) << 224][5][_280].field_0 = 1
            mem[mem[64]] = 0x6e41f4b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_375)
            mem[mem[64] + 36] = _278 - (_278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _145) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _145) << 224].field_784).0x6e41f4b3 with:
                 gas gas_remaining wei
                args address(_375), _278 - (_278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2048) > !(_278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792)):
            revert with 0, 17
        uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2048) += _278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792)
        emit 0xacfebf18: msg.sender, Mask(256, -224, _279) << 224, _278 - (_278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792)), uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304), _278 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792), _280, uint32(mem[_140 + 64]) >> 224, uint32(_145) >> 224
    else:
        mem[_154 + 32 len 32 * uint256(sub_ed533951[mem[0]].field_512)] = call.data[calldata.size len 32 * uint256(sub_ed533951[mem[0]].field_512)]
        idx = 0
        s = 0
        while idx < stor2[_146]:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[mem[(32 * idx) + 128]] != 65:
                revert with 0, 'Bridge: Signature incorrect length'
            _306 = mem[mem[(32 * idx) + 128] + 32]
            _307 = mem[mem[(32 * idx) + 128] + 64]
            _308 = mem[mem[(32 * idx) + 128] + 96]
            _309 = mem[64]
            mem[mem[64]] = 0
            mem[64] = mem[64] + 32
            mem[_309 + 32] = sha3(call.data[cd[36] + 36 len ('cd', 36).length])
            mem[_309 + 64] = Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_308')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_308')), 0) - 256
            mem[_309 + 96] = _306
            mem[_309 + 128] = _307
            signer = erecover(sha3(call.data[cd[36] + 36 len ('cd', 36).length]), 0, _306, _307) 
            mem[_309] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = address(signer)
            mem[32] = sha3(0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada, 0)
            if not roleAdmin[0x587067af7acf278357651084bc3b5223d9fae81a768c4f25238b853ff2756ada][address(signer)].field_0:
                revert with 0, 'Bridge: Multisig signer not permitted'
            s = 0
            while s < mem[_154]:
                if s >= mem[_154]:
                    revert with 0, 50
                if mem[(32 * s) + _154 + 44 len 20] == address(signer):
                    revert with 0, 'Bridge: Duplicate multisig signer'
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if mem[_154] >= mem[_154]:
                revert with 0, 50
            mem[(32 * mem[_154]) + _154 + 32] = address(signer)
            if mem[_154] == -1:
                revert with 0, 17
            s = mem[_154] + 1
            s = signer
            continue 
        _282 = mem[_140 + 32]
        _283 = mem[_140 + 68]
        _284 = mem[_140 + 108]
        if uint32(mem[_140 + 68]) >> 224 != stor2.length:
            revert with 0, 'Bridge: Incorrect network'
        mem[0] = mem[_140 + 108]
        if stor[_146 + 5][mem[0]]:
            revert with 0, 'Bridge: Nonce already used'
        if not sub_ed533951[Mask(256, -224, _145) << 224].field_256:
            revert with 0, 'Bridge: Token is not a wrapped token'
        if not uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304):
            _327 = mem[_140 + 76]
            if _282 / 10000 and uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792) > -1 / _282 / 10000:
                revert with 0, 17
            if _282 < _282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _145) << 224][5][_284].field_0 = 1
            mem[mem[64]] = 0x6e41f4b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_327)
            mem[mem[64] + 36] = _282 - (_282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _145) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _145) << 224].field_784).0x6e41f4b3 with:
                 gas gas_remaining wei
                args address(_327), _282 - (_282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
        else:
            mem[32] = 3
            mem[0] = 0
            mem[mem[64] + 4] = msg.sender
            require ext_code.size(storD336)
            staticcall storD336.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_341] < uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304):
                revert with 0, 'Bridge: Insufficient FMTA balance'
            mem[mem[64]] = 0x79cc679000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304)
            require ext_code.size(storD336)
            call storD336.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2816) > !uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304):
                revert with 0, 17
            uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2816) += uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304)
            _378 = mem[_140 + 76]
            if _282 / 10000 and uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792) > -1 / _282 / 10000:
                revert with 0, 17
            if _282 < _282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792):
                revert with 0, 17
            sub_ed533951[Mask(256, -224, _145) << 224][5][_284].field_0 = 1
            mem[mem[64]] = 0x6e41f4b300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_378)
            mem[mem[64] + 36] = _282 - (_282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
            require ext_code.size(address(sub_ed533951[Mask(256, -224, _145) << 224].field_784))
            call address(sub_ed533951[Mask(256, -224, _145) << 224].field_784).0x6e41f4b3 with:
                 gas gas_remaining wei
                args address(_378), _282 - (_282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2048) > !(_282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792)):
            revert with 0, 17
        uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2048) += _282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792)
        emit 0xacfebf18: msg.sender, Mask(256, -224, _283) << 224, _282 - (_282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792)), uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_2304), _282 / 10000 * uint256(sub_ed533951[Mask(256, -224, _145) << 224].field_1792), _284, uint32(mem[_140 + 64]) >> 224, uint32(_145) >> 224
}



}
