contract main {




// =====================  Runtime code  =====================


const sub_333bedb2(?) = 0x47c79a7fa3e5bccca174df5f0c6d1406f325af6829f7bbcb89bdd933ddb695a7

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address settingsAddress;
uint8 enabled; offset 160
uint128 stor152; offset 160
address whitelistAddress;
uint256 startTime;
uint256 interval;
mapping of uint256 redeems;
uint256 tranche;
mapping of uint8 stor12817932149318626821994316933086190814951051148562904147087806379582389662744;
mapping of uint8 stor115735116308211264584378798639139061516686732922554905406890050695344091519515;

function enabled() payable {
    return bool(enabled)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function redeems(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return redeems[arg1]
}

function tranche() payable {
    return tranche
}

function startTime() payable {
    return startTime
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function whitelist() payable {
    return whitelistAddress
}

function interval() payable {
    return interval
}

function settings() payable {
    return settingsAddress
}

function _fallback() payable {
    revert
}

function getInterval() payable {
    if not enabled:
        return 0
    if block.timestamp <= startTime:
        return 0
    if block.timestamp < startTime:
        revert with 0, 17
    if not interval:
        revert with 0, 18
    return (block.timestamp - startTime / interval)
}

function enable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not storFFDF[msg.sender]:
        revert with 0, 'Incorrect role!'
    stor152 = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not startTime:
            startTime = block.timestamp
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

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    settingsAddress = arg1
    whitelistAddress = arg2
    tranche = arg3
    interval = arg4
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
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

function unlockedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.usdc() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.tokenRate() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.deposited(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not enabled:
            if ext_call.return_data[0] * ext_call.return_data[0] and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] * tranche:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] * tranche / 10000)
        if block.timestamp <= startTime:
            if ext_call.return_data[0] * ext_call.return_data[0] and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] * tranche:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] * tranche / 10000)
        if block.timestamp < startTime:
            revert with 0, 17
        if not interval:
            revert with 0, 18
        if 1 > !(block.timestamp - startTime / interval):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * tranche and (block.timestamp - startTime / interval) + 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] * tranche:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] * tranche) + (block.timestamp - startTime / interval * ext_call.return_data[0] * ext_call.return_data[0] * tranche) / 10000)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.tokenRate() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.deposited(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        if not enabled:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche / 10000)
        if block.timestamp <= startTime:
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche / 10000)
        if block.timestamp < startTime:
            revert with 0, 17
        if not interval:
            revert with 0, 18
        if 1 > !(block.timestamp - startTime / interval):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche and (block.timestamp - startTime / interval) + 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche) + (block.timestamp - startTime / interval * ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche) / 10000)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.tokenRate() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(whitelistAddress)
    staticcall whitelistAddress.deposited(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if not enabled:
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche / 10000)
    if block.timestamp <= startTime:
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche / 10000)
    if block.timestamp < startTime:
        revert with 0, 17
    if not interval:
        revert with 0, 18
    if 1 > !(block.timestamp - startTime / interval):
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche and (block.timestamp - startTime / interval) + 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche) + (block.timestamp - startTime / interval * ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche) / 10000)
}

function redeem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not enabled:
        revert with 0, 'Redeems are disabled'
    if stor1C56[msg.sender]:
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0x9885fdfa with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = arg1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x1e9a6950 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0x45a7858f with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 196] = arg1
        mem[(4 * ceil32(return_data.size)) + 96] = 100
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(4 * ceil32(return_data.size)) + 228] = 32
        mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(ext_call.return_data[0]) << 64, 0, msg.sender, arg1, 0
        mem[(4 * ceil32(return_data.size)) + 392] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), address(ext_call.return_data[0]) << 64, 0, msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), address(ext_call.return_data[0]) << 64, 0, msg.sender, arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                if not mem[(4 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        require ext_code.size(whitelistAddress)
        staticcall whitelistAddress.usdc() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(whitelistAddress)
            staticcall whitelistAddress.tokenRate() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
            require ext_code.size(whitelistAddress)
            staticcall whitelistAddress.deposited(address arg1) with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not enabled:
                if ext_call.return_data[0] * ext_call.return_data[0] and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] * tranche:
                    revert with 0, 17
                if redeems[msg.sender] > !arg1:
                    revert with 0, 17
                if redeems[msg.sender] + arg1 > ext_call.return_data[0] * ext_call.return_data[0] * tranche / 10000:
                    revert with 0, 'You cant redeem more than your allowance'
            else:
                if block.timestamp <= startTime:
                    if ext_call.return_data[0] * ext_call.return_data[0] and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] * tranche:
                        revert with 0, 17
                    if redeems[msg.sender] > !arg1:
                        revert with 0, 17
                    if redeems[msg.sender] + arg1 > ext_call.return_data[0] * ext_call.return_data[0] * tranche / 10000:
                        revert with 0, 'You cant redeem more than your allowance'
                else:
                    if block.timestamp < startTime:
                        revert with 0, 17
                    if not interval:
                        revert with 0, 18
                    if 1 > !(block.timestamp - startTime / interval):
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] * tranche and (block.timestamp - startTime / interval) + 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] * tranche:
                        revert with 0, 17
                    if redeems[msg.sender] > !arg1:
                        revert with 0, 17
                    if redeems[msg.sender] + arg1 > (ext_call.return_data[0] * ext_call.return_data[0] * tranche) + (block.timestamp - startTime / interval * ext_call.return_data[0] * ext_call.return_data[0] * tranche) / 10000:
                        revert with 0, 'You cant redeem more than your allowance'
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(whitelistAddress)
                staticcall whitelistAddress.tokenRate() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                require ext_code.size(whitelistAddress)
                staticcall whitelistAddress.deposited(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                if not enabled:
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche:
                        revert with 0, 17
                    if redeems[msg.sender] > !arg1:
                        revert with 0, 17
                    if redeems[msg.sender] + arg1 > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche / 10000:
                        revert with 0, 'You cant redeem more than your allowance'
                else:
                    if block.timestamp <= startTime:
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche:
                            revert with 0, 17
                        if redeems[msg.sender] > !arg1:
                            revert with 0, 17
                        if redeems[msg.sender] + arg1 > ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche / 10000:
                            revert with 0, 'You cant redeem more than your allowance'
                    else:
                        if block.timestamp < startTime:
                            revert with 0, 17
                        if not interval:
                            revert with 0, 18
                        if 1 > !(block.timestamp - startTime / interval):
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche and (block.timestamp - startTime / interval) + 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche:
                            revert with 0, 17
                        if redeems[msg.sender] > !arg1:
                            revert with 0, 17
                        if redeems[msg.sender] + arg1 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche) + (block.timestamp - startTime / interval * ext_call.return_data[0] * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) * tranche) / 10000:
                            revert with 0, 'You cant redeem more than your allowance'
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(whitelistAddress)
                staticcall whitelistAddress.tokenRate() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                require ext_code.size(whitelistAddress)
                staticcall whitelistAddress.deposited(address arg1) with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if not enabled:
                    if ext_call.return_data[0] * ext_call.return_data[0] / s * t and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                        revert with 0, 17
                    if ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche:
                        revert with 0, 17
                    if redeems[msg.sender] > !arg1:
                        revert with 0, 17
                    if redeems[msg.sender] + arg1 > ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche / 10000:
                        revert with 0, 'You cant redeem more than your allowance'
                else:
                    if block.timestamp <= startTime:
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche and 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche:
                            revert with 0, 17
                        if redeems[msg.sender] > !arg1:
                            revert with 0, 17
                        if redeems[msg.sender] + arg1 > ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche / 10000:
                            revert with 0, 'You cant redeem more than your allowance'
                    else:
                        if block.timestamp < startTime:
                            revert with 0, 17
                        if not interval:
                            revert with 0, 18
                        if 1 > !(block.timestamp - startTime / interval):
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t and tranche > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t:
                            revert with 0, 17
                        if ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche and (block.timestamp - startTime / interval) + 1 > -1 / ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche:
                            revert with 0, 17
                        if redeems[msg.sender] > !arg1:
                            revert with 0, 17
                        if redeems[msg.sender] + arg1 > (ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche) + (block.timestamp - startTime / interval * ext_call.return_data[0] * ext_call.return_data[0] / s * t * tranche) / 10000:
                            revert with 0, 'You cant redeem more than your allowance'
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0x9885fdfa with:
                gas gas_remaining wei
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(7 * ceil32(return_data.size)) + 132] = arg1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x1e9a6950 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0x45a7858f with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(settingsAddress)
        staticcall settingsAddress.0xb8746e73 with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 164] = msg.sender
        mem[(10 * ceil32(return_data.size)) + 196] = arg1
        mem[(10 * ceil32(return_data.size)) + 96] = 100
        mem[(10 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
        mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(10 * ceil32(return_data.size)) + 228] = 32
        mem[(10 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[(10 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), address(ext_call.return_data[0]) << 64, 0, msg.sender, arg1, 0
        mem[(10 * ceil32(return_data.size)) + 392] = 0
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), address(ext_call.return_data[0]) << 64, 0, msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), address(ext_call.return_data[0]) << 64, 0, msg.sender, arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(10 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(10 * ceil32(return_data.size)) + 324] == bool(mem[(10 * ceil32(return_data.size)) + 324])
                if not mem[(10 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if redeems[msg.sender] > !arg1:
        revert with 0, 17
    redeems[msg.sender] += arg1
}



}
