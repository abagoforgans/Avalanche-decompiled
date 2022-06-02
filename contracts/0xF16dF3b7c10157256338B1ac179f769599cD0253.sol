contract main {




// =====================  Runtime code  =====================


const sub_aadde850(?) = 0x8c07325f686988417936836fa712928a5e8319c01e2032f132d3f5bc3de91a47

const _ADMIN = 0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230

const _BURNFROM = 0xc8a3befa5973ff6e159afc769978d92f26bae29c51a73d11c9112a05b68d25e6

const _MINTTO = 0x7d800f56a05adcb6245df540492a560d0e668aac15ee6c7dd40668064913da33

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint8 stor1;
uint8 stor1; offset 8
uint8 queryPaused; offset 16
uint16 stor1;
address stor1;
address sub_fa11fd5aAddress; offset 24
uint256 stor1; offset 24
uint256 stor1; offset 16
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
address queryBackingTokenAddress;
uint8 decimals; offset 160
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function queryBackingToken() payable {
    return queryBackingTokenAddress
}

function queryPaused() payable {
    return bool(queryPaused)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_fa11fd5a(?) payable {
    return sub_fa11fd5aAddress
}

function _fallback() payable {
    revert
}

function sub_01d73c17(?) payable {
    return stor11, stor14
}

function sub_cfcbafb6(?) payable {
    return stor12, stor13, stor9, stor10
}

function sub_26c8fa91(?) payable {
    require calldata.size - 4 >= 32
    if arg1 / 10000 and stor9 > -1 / arg1 / 10000:
        revert with 0, 17
    return (arg1 / 10000 * stor9)
}

function sub_322c1ad8(?) payable {
    require calldata.size - 4 >= 32
    if arg1 / 10000 and stor9 > -1 / arg1 / 10000:
        revert with 0, 17
    return (arg1 / 10000 * stor9)
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_ff158d28(?) payable {
    if sub_fa11fd5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not owner - Permission denied'
    if stor11 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Accumulated fee = 0'
    stor11 = 0
    emit 0xa43d0dc5 
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

function sub_846fb901(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if stor13 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: No action required'
    stor13 = arg1
}

function sub_9522d241(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if stor12 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: No action required'
    stor12 = arg1
}

function approve(address arg1, uint256 arg2) payable {
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

function sub_f92aaa21(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Backing token not configured'
    queryBackingTokenAddress = address(arg1)
}

function sub_c2c569b1(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if stor9 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: No action required'
    if arg1 > 10000:
        revert with 0, 'Wrapped Token: Fee exceeds 100%'
    stor9 = arg1
}

function setUnwrapFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if stor10 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: No action required'
    if arg1 > 10000:
        revert with 0, 'Wrapped Token: Fee exceeds 100%'
    stor10 = arg1
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not admin - Permission denied'
    if arg1 != bool(queryPaused):
        Mask(240, 0, stor1.field_16) = Mask(240, 0, arg1)
        if not arg1:
            emit ContractUnpaused(block.number, msg.sender);
        else:
            emit ContractPaused(block.number, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
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

function mintTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if queryPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not roleAdmin[0x7d800f56a05adcb6245df540492a560d0e668aac15ee6c7dd40668064913da33][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Wrapped Token: Permission denied. Missing MINTTO role'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, msg.sender, arg1);
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
    queryPaused = 1
    Mask(232, 0, stor1.field_24) = Mask(232, 0, msg.sender)
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if queryPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not roleAdmin[0xc8a3befa5973ff6e159afc769978d92f26bae29c51a73d11c9112a05b68d25e6][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Wrapped Token: Permission denied. Missing BURNFROM role'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
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

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[(uint255(stor6.length) * 0.5) + ceil32(uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
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
        mem[stor6.length.field_1 + ceil32(stor6.length.field_1) + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function sub_ca8b0620(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_fa11fd5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not owner - Permission denied'
    if stor11 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Accumulated fee = 0'
    if arg2 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Attempted fee withdrawal too high'
    mem[100] = this.address
    require ext_code.size(queryBackingTokenAddress)
    staticcall queryBackingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2:
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Wrapped Token: Insufficient backing token available'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = arg2
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
        mem[ceil32(return_data.size) + 328] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
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
        if stor11 < arg2:
            revert with 0, 17
        stor11 -= arg2
        emit FeeWithdraw(arg2, address(arg1));
    else:
        if ext_call.return_data[0] < stor11:
            revert with 0, 'Wrapped Token: Insufficient backing token available'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = stor11
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor11, 0
        mem[ceil32(return_data.size) + 328] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor11, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor11, 0) << 288)
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
        if stor11 < stor11:
            revert with 0, 17
        stor11 = 0
        emit FeeWithdraw(stor11, address(arg1));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_fa11fd5aAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not owner - Permission denied'
    if not roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
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
        s = uint256(roleAdmin.field_256)
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
        if uint256(roleAdmin.field_256) + 16384:
            revert with 0, 'Strings: hex length insufficient'
    else:
        if not roleAdmin[address(arg1)].field_0:
            roleAdmin[address(arg1)].field_0 = 1
            emit RoleGranted(0, arg1, msg.sender);
        if not roleAdmin[roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230].field_256][address(msg.sender)].field_0:
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
            s = roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230].field_256
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
            if roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230].field_256 + 16384:
                revert with 0, 'Strings: hex length insufficient'
        else:
            if not roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(arg1)].field_0:
                roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(arg1)].field_0 = 1
                emit RoleGranted(0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230, arg1, msg.sender);
            if not roleAdmin[roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230].field_256][address(msg.sender)].field_0:
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
                s = roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230].field_256
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
                if roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230].field_256 + 16384:
                    revert with 0, 'Strings: hex length insufficient'
            else:
                if roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(stor1.field_0)].field_0:
                    roleAdmin[0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230][address(stor1.field_0)].field_0 = 0
                    emit RoleRevoked(0xfeae6c2fc584631af4c9385b8a55683f1a75c813747e27efef5afece31c6b230, sub_fa11fd5aAddress, msg.sender);
                if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
                    if roleAdmin[address(stor1.field_0)].field_0:
                        roleAdmin[address(stor1.field_0)].field_0 = 0
                        emit RoleRevoked(0, sub_fa11fd5aAddress, msg.sender);
                    sub_fa11fd5aAddress = arg1
                    emit OwnershipTransferred(address(stor1.field_0), arg1);
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
                s = uint256(roleAdmin.field_256)
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
                if uint256(roleAdmin.field_256) + 16384:
                    revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_93097828(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0x8c07325f686988417936836fa712928a5e8319c01e2032f132d3f5bc3de91a47][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not Bridge - Permission denied'
    if queryPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not queryBackingTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Backing token is not configured'
    if not stor12:
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        mem[100] = address(arg1)
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Wrapped Token: Insufficient backing token balance'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg2, 0
        mem[ceil32(return_data.size) + 392] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = address(arg1)
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor12:
            revert with 0, 'Wrapped Token: Insufficient FMTA balance'
        mem[ceil32(return_data.size) + 132] = stor12
        require ext_code.size(stor8)
        call stor8.0x79cc6790 with:
             gas gas_remaining wei
            args address(arg1), stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor14 > !stor12:
            revert with 0, 17
        stor14 += stor12
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = address(arg1)
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Wrapped Token: Insufficient backing token balance'
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg2, 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor11 > !(arg2 / 10000 * stor9):
        revert with 0, 17
    stor11 += arg2 / 10000 * stor9
    emit Wrap(arg2, arg2 / 10000 * stor9, address(arg1));
    if arg2 < arg2 / 10000 * stor9:
        revert with 0, 17
    return (arg2 - (arg2 / 10000 * stor9))
}

function wrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if queryPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not queryBackingTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Backing token is not configured'
    if not stor12:
        if arg1 / 10000 and stor9 > -1 / arg1 / 10000:
            revert with 0, 17
        mem[100] = msg.sender
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 'Wrapped Token: Insufficient backing token balance'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[ceil32(return_data.size) + 392] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = msg.sender
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor12:
            revert with 0, 'Wrapped Token: Insufficient FMTA balance'
        mem[ceil32(return_data.size) + 132] = stor12
        require ext_code.size(stor8)
        call stor8.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, stor12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor14 > !stor12:
            revert with 0, 17
        stor14 += stor12
        if arg1 / 10000 and stor9 > -1 / arg1 / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = msg.sender
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 'Wrapped Token: Insufficient backing token balance'
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = this.address
        mem[(2 * ceil32(return_data.size)) + 196] = arg1
        mem[(2 * ceil32(return_data.size)) + 96] = 100
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(2 * ceil32(return_data.size)) + 228] = 32
        mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
        mem[(2 * ceil32(return_data.size)) + 392] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if arg1 < arg1 / 10000 * stor9:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(arg1 - (arg1 / 10000 * stor9)):
        revert with 0, 17
    totalSupply = totalSupply + arg1 - (arg1 / 10000 * stor9)
    if balanceOf[address(msg.sender)] > !(arg1 - (arg1 / 10000 * stor9)):
        revert with 0, 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + arg1 - (arg1 / 10000 * stor9)
    emit Transfer((arg1 - (arg1 / 10000 * stor9)), 0, msg.sender);
    if stor11 > !(arg1 / 10000 * stor9):
        revert with 0, 17
    stor11 += arg1 / 10000 * stor9
    emit Wrap(arg1, arg1 / 10000 * stor9, msg.sender);
}

function sub_6e41f4b3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[0x8c07325f686988417936836fa712928a5e8319c01e2032f132d3f5bc3de91a47][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Not Bridge - Permission denied'
    if queryPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not queryBackingTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Backing token is not configured'
    if not stor13:
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[100] = this.address
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 - (arg2 / 10000 * stor9):
            revert with 0, 'Wrapped Token: Insufficient backing token available'
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = arg2 - (arg2 / 10000 * stor9)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (arg2 / 10000 * stor9), 0
        mem[ceil32(return_data.size) + 328] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (arg2 / 10000 * stor9), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (arg2 / 10000 * stor9), 0) << 288)
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
    else:
        mem[100] = address(arg1)
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor13:
            revert with 0, 'Wrapped Token: Insufficient FMTA balance'
        mem[ceil32(return_data.size) + 132] = stor13
        require ext_code.size(stor8)
        call stor8.0x79cc6790 with:
             gas gas_remaining wei
            args address(arg1), stor13
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor14 > !stor13:
            revert with 0, 17
        stor14 += stor13
        if arg2 / 10000 and stor9 > -1 / arg2 / 10000:
            revert with 0, 17
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 - (arg2 / 10000 * stor9):
            revert with 0, 'Wrapped Token: Insufficient backing token available'
        if arg2 < arg2 / 10000 * stor9:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 132] = address(arg1)
        mem[(2 * ceil32(return_data.size)) + 164] = arg2 - (arg2 / 10000 * stor9)
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (arg2 / 10000 * stor9), 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (arg2 / 10000 * stor9), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 - (arg2 / 10000 * stor9), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor11 > !(arg2 / 10000 * stor9):
        revert with 0, 17
    stor11 += arg2 / 10000 * stor9
    emit Unwrap(arg2, arg2 / 10000 * stor9, address(arg1));
}

function unwrap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if queryPaused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SecureContract: Contract is paused'
    if not queryBackingTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Backing token is not configured'
    if not stor13:
        if arg1 / 10000 and stor9 > -1 / arg1 / 10000:
            revert with 0, 17
        if arg1 > balanceOf[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wrapped Token: Insufficient wrapped token balance'
        if arg1 < arg1 / 10000 * stor9:
            revert with 0, 17
        mem[100] = this.address
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1 - (arg1 / 10000 * stor9):
            revert with 0, 'Wrapped Token: Insufficient backing token available'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg1
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if arg1 < arg1 / 10000 * stor9:
            revert with 0, 17
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg1 - (arg1 / 10000 * stor9)
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1 - (arg1 / 10000 * stor9), 0
        mem[ceil32(return_data.size) + 328] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1 - (arg1 / 10000 * stor9), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1 - (arg1 / 10000 * stor9), 0) << 288)
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
    else:
        mem[100] = msg.sender
        require ext_code.size(stor8)
        staticcall stor8.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor13:
            revert with 0, 'Wrapped Token: Insufficient FMTA balance'
        mem[ceil32(return_data.size) + 132] = stor13
        require ext_code.size(stor8)
        call stor8.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, stor13
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor14 > !stor13:
            revert with 0, 17
        stor14 += stor13
        if arg1 / 10000 and stor9 > -1 / arg1 / 10000:
            revert with 0, 17
        if arg1 > balanceOf[msg.sender]:
            revert with 0, 'Wrapped Token: Insufficient wrapped token balance'
        if arg1 < arg1 / 10000 * stor9:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(queryBackingTokenAddress)
        staticcall queryBackingTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1 - (arg1 / 10000 * stor9):
            revert with 0, 'Wrapped Token: Insufficient backing token available'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg1
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if arg1 < arg1 / 10000 * stor9:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg1 - (arg1 / 10000 * stor9)
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(queryBackingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1 - (arg1 / 10000 * stor9), 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call queryBackingTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1 - (arg1 / 10000 * stor9), 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1 - (arg1 / 10000 * stor9), 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor11 > !(arg1 / 10000 * stor9):
        revert with 0, 17
    stor11 += arg1 / 10000 * stor9
    emit Unwrap(arg1, arg1 / 10000 * stor9, msg.sender);
}



}
