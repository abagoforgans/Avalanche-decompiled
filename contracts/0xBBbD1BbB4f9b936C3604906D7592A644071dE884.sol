contract main {




// =====================  Runtime code  =====================


#
#  - unlock(uint128 arg1, address arg2, uint256 arg3, bytes4 arg4, bytes4 arg5, bytes32 arg6, bytes arg7)
#  - lock(uint128 arg1, address arg2, bytes32 arg3, bytes4 arg4, uint256 arg5)
#
const BRIDGE_MANAGER = 0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d

const DEFAULT_ADMIN_ROLE = 0

const TOKEN_MANAGER = 0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0

const STOP_MANAGER = 0x55ca0725c70a9ecebe86dd2b8b3a414983f6cb638e1a0fa17c64bbdd59b4d4c1


mapping of struct roleAdmin;
uint8 stor1;
address validatorAddress; offset 8
address feeCollectorAddress;
address feeOracleAddress;
address unlockSignerAddress;
mapping of struct tokenInfos;
mapping of address tokenSourceMap;

function unlockSigner() {
    return unlockSignerAddress
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function validator() {
    return validatorAddress
}

function feeOracle() {
    return feeOracleAddress
}

function tokenSourceMap(bytes4 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    return tokenSourceMap[arg1][arg2]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function tokenInfos(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenInfos[arg1].field_520 >= 4:
        revert with 'NH{q', 33
    if tokenInfos[arg1].field_528 >= 2:
        revert with 'NH{q', 33
    return Mask(32, 224, tokenInfos[arg1].field_0), 
           tokenInfos[arg1].field_256,
           tokenInfos[arg1].field_512,
           tokenInfos[arg1].field_512,
           tokenInfos[arg1].field_528
}

function feeCollector() {
    return feeCollectorAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function stopBridge() {
    if roleAdmin[0x55ca0725c70a9ecebe86dd2b8b3a414983f6cb638e1a0fa17c64bbdd59b4d4c1][address(msg.sender)].field_0:
        stor1 = 0
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x55ca0725c70a9ecebe86dd2b8b3a414983f6cb638e1a0fa17c64bbdd59b4d4c1
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function startBridge() {
    if roleAdmin[0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d][address(msg.sender)].field_0:
        stor1 = 1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setValidator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d][address(msg.sender)].field_0:
        validatorAddress = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setFeeOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0][address(msg.sender)].field_0:
        feeOracleAddress = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0][address(msg.sender)].field_0:
        feeCollectorAddress = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setUnlockSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d][address(msg.sender)].field_0:
        unlockSignerAddress = arg1
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x77eacfcb6207f26b72edc4f15c48e5518843e7e98ccfd7e0d6c16f92ed1fef8d
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function setTokenStatus(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 2
    if roleAdmin[0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0][address(msg.sender)].field_0:
        if not tokenInfos[address(arg1)].field_256:
            revert with 0, 'Bridge: unsupported token'
        if arg2 > 1:
            revert with 'NH{q', 33
        tokenInfos[address(arg1)].field_528 = Mask(240, 0, arg2)
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if not msg.sender + 10240:
        idx = 65
        s = 0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
    revert with 0, 'Strings: hex length insufficient'
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function addToken(bytes4 arg1, bytes32 arg2, address arg3, uint8 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 < 4
    if not roleAdmin[0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if tokenInfos[address(arg3)].field_256:
        revert with 0, 'Bridge: exists'
    if tokenSourceMap[Mask(32, 224, arg1)][arg2]:
        revert with 0, 'Bridge: exists'
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    tokenSourceMap[Mask(32, 224, arg1)][arg2] = arg3
    if arg4 > 3:
        revert with 'NH{q', 33
    tokenInfos[address(arg3)].field_0 = 0
    tokenInfos[address(arg3)].field_256 = 0
    tokenInfos[address(arg3)].field_256 = arg2
    tokenInfos[address(arg3)].field_512 = uint8(ext_call.return_data[0])
    if arg4 > 3:
        revert with 'NH{q', 33
    tokenInfos[address(arg3)].field_520 = Mask(248, 0, arg4)
    tokenInfos[address(arg3)].field_528 = 1
}

function removeToken(bytes4 arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == Mask(32, 224, arg1)
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x593fb413ec9f9ad9f53f309300b515310ff474591268ca3cbe9752fd88eb76a0
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if not arg3:
        revert with 0, 'Bridge: zero address authority'
    if not tokenSourceMap[Mask(32, 224, arg1)][arg2]:
        revert with 0, 'Bridge: token not found'
    mem[128] = tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_256
    mem[160] = tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_512
    if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 > 3:
        revert with 'NH{q', 33
    mem[192] = tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520
    if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_528 > 1:
        revert with 'NH{q', 33
    mem[224] = tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_528
    if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 > 3:
        revert with 'NH{q', 33
    if not tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520:
        if eth.balance(this.address) > 0:
            call arg3 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    mem[260] = this.address
    require ext_code.size(tokenSourceMap[Mask(32, 224, arg1)][arg2])
    staticcall tokenSourceMap[Mask(32, 224, arg1)][arg2].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        mem[ceil32(return_data.size) + 292] = arg3
        mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256] = 68
        mem[ceil32(return_data.size) + 292 len 28] = address(arg3) << 64
        mem[ceil32(return_data.size) + 288 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 356] = 32
        mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(tokenSourceMap[Mask(32, 224, arg1)][arg2]) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 420 len 96] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 488] = 0
        call tokenSourceMap[Mask(32, 224, arg1)][arg2] with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg3) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if Mask(32, 224, tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_0) > 0:
                    revert with memory
                      from 128
                       len Mask(32, 224, tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_0)
                revert with 0, 'SafeERC20: low-level call failed'
            if Mask(32, 224, tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_0) > 0:
                require Mask(32, 224, tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_0) >= 32
                require tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_256 == bool(tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_256)
                if not tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                if not mem[ceil32(return_data.size) + 452]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 > 3:
        revert with 'NH{q', 33
    if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 == 3:
        require ext_code.size(tokenSourceMap[Mask(32, 224, arg1)][arg2])
        call tokenSourceMap[Mask(32, 224, arg1)][arg2].0xf2fde38b with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 > 3:
            revert with 'NH{q', 33
        if tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 == 2:
            require ext_code.size(tokenSourceMap[Mask(32, 224, arg1)][arg2])
            call tokenSourceMap[Mask(32, 224, arg1)][arg2].0x116877cc with:
                 gas gas_remaining wei
                args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_0 = 0
    tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_256 = 0
    tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_512 = 0
    tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_520 = 0
    tokenInfos[stor6[Mask(32, 224, arg1)][arg2]].field_528 = 0
    tokenSourceMap[Mask(32, 224, arg1)][arg2] = 0
}

function lockBase(uint128 arg1, address arg2, bytes32 arg3, bytes4 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == Mask(32, 224, arg4)
    if not stor1:
        revert with 0, 'Bridge: is not active'
    if msg.value <= 0:
        revert with 0, 'Bridge: amount is 0'
    if tokenInfos[address(arg2)].field_520 > 3:
        revert with 'NH{q', 33
    if tokenInfos[address(arg2)].field_528 > 1:
        revert with 'NH{q', 33
    if not tokenInfos[address(arg2)].field_256:
        revert with 0, 'Bridge: unsupported token'
    require ext_code.size(feeOracleAddress)
    staticcall feeOracleAddress.0x16b6ecb0 with:
            gas gas_remaining wei
           args address(arg2), msg.sender, msg.value, Mask(32, 224, arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if msg.value <= ext_call.return_data[0]:
        revert with 0, 'Bridge: amount too small'
    if msg.value < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if tokenInfos[address(arg2)].field_512 > 9:
        if tokenInfos[address(arg2)].field_512 < 9:
            revert with 'NH{q', 17
        if not tokenInfos[address(arg2)].field_512 - 9:
            require ext_code.size(validatorAddress)
            call validatorAddress.0x7a6a5e3c with:
                 gas gas_remaining wei
                args arg1 << 128, msg.sender, arg3, msg.value - ext_call.return_data[0], Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
        else:
            if bool(bool(tokenInfos[address(arg2)].field_512 - 9 < 78)) or bool(bool(tokenInfos[address(arg2)].field_512 - 9 < 32)):
                if 10^(tokenInfos[address(arg2)].field_512 - 9) > -1:
                    revert with 'NH{q', 17
                if not 10^(tokenInfos[address(arg2)].field_512 - 9):
                    revert with 'NH{q', 18
                require ext_code.size(validatorAddress)
                call validatorAddress.0x7a6a5e3c with:
                     gas gas_remaining wei
                    args arg1 << 128, msg.sender, arg3, msg.value - ext_call.return_data[0] / 10^(tokenInfos[address(arg2)].field_512 - 9), Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
            else:
                s = 10
                t = 1
                idx = tokenInfos[address(arg2)].field_512 - 9
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                require ext_code.size(validatorAddress)
                call validatorAddress.0x7a6a5e3c with:
                     gas gas_remaining wei
                    args arg1 << 128, msg.sender, arg3, msg.value - ext_call.return_data[0] / t * s, Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
    else:
        if tokenInfos[address(arg2)].field_512 >= 9:
            require ext_code.size(validatorAddress)
            call validatorAddress.0x7a6a5e3c with:
                 gas gas_remaining wei
                args arg1 << 128, msg.sender, arg3, msg.value - ext_call.return_data[0], Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
        else:
            if 9 < tokenInfos[address(arg2)].field_512:
                revert with 'NH{q', 17
            if not -tokenInfos[address(arg2)].field_512 + 9:
                if msg.value - ext_call.return_data[0] and 1 > -1 / msg.value - ext_call.return_data[0]:
                    revert with 'NH{q', 17
                require ext_code.size(validatorAddress)
                call validatorAddress.0x7a6a5e3c with:
                     gas gas_remaining wei
                    args arg1 << 128, msg.sender, arg3, msg.value - ext_call.return_data[0], Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
            else:
                if bool(bool(-tokenInfos[address(arg2)].field_512 + 9 < 78)) or bool(bool(-tokenInfos[address(arg2)].field_512 + 9 < 32)):
                    if 10^(-tokenInfos[address(arg2)].field_512 + 9) > -1:
                        revert with 'NH{q', 17
                    if msg.value - ext_call.return_data[0] and 10^(-tokenInfos[address(arg2)].field_512 + 9) > -1 / msg.value - ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(validatorAddress)
                    call validatorAddress.0x7a6a5e3c with:
                         gas gas_remaining wei
                        args arg1 << 128, msg.sender, arg3, (msg.value * 10^(-tokenInfos[address(arg2)].field_512 + 9)) - (ext_call.return_data[0] * 10^(-tokenInfos[address(arg2)].field_512 + 9)), Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
                else:
                    s = 10
                    t = 1
                    idx = -tokenInfos[address(arg2)].field_512 + 9
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if msg.value - ext_call.return_data[0] and t * s > -1 / msg.value - ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    require ext_code.size(validatorAddress)
                    call validatorAddress.0x7a6a5e3c with:
                         gas gas_remaining wei
                        args arg1 << 128, msg.sender, arg3, (msg.value * t * s) - (ext_call.return_data[0] * t * s), Mask(32, 224, arg4), Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sent(Mask(32, 224, tokenInfos[address(arg2)].field_0), tokenInfos[address(arg2)].field_256, msg.sender, msg.value - ext_call.return_data[0], Mask(32, 224, arg4), arg3, arg1);
    if tokenInfos[address(arg2)].field_528 > 1:
        revert with 'NH{q', 33
    if tokenInfos[address(arg2)].field_528 != 1:
        revert with 0, 'Bridge: disabled token'
    if tokenInfos[address(arg2)].field_520 > 3:
        revert with 'NH{q', 33
    if tokenInfos[address(arg2)].field_520:
        revert with 0, 'Bridge: invalid token type'
    if ext_call.return_data[0] > 0:
        call feeCollectorAddress with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
