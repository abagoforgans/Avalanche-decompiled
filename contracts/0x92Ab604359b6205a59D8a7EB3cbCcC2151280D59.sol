contract main {




// =====================  Runtime code  =====================


#
#  - mintAndSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint8 arg7, uint256 arg8, uint256 arg9, bytes32 arg10)
#  - withdraw(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5)
#  - mint(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5)
#  - deposit(address arg1, uint256 arg2, address arg3, uint256 arg4)
#  - depositAndSwap(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint8 arg6, uint256 arg7, uint256 arg8)
#  - sub_b2e97f11(?)
#  - withdrawFees(address arg1, address arg2)
#  - sub_fb169ff0(?)
#  - _fallback()
#
const bridgeVersion = 6

const DEFAULT_ADMIN_ROLE = 0

const GOVERNANCE_ROLE = 0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce

const NODEGROUP_ROLE = 0x65b5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
uint256 stor151;
uint8 paused;
mapping of uint256 feeBalance;
uint256 startBlockNumber;
uint256 chainGasAmount;
address WETH_ADDRESS;
address ROUTERAddress;
mapping of uint8 stor256;

function WETH_ADDRESS() {
    return WETH_ADDRESS
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function kappaExists(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor256[arg1])
}

function ROUTER() {
    return ROUTERAddress
}

function startBlockNumber() {
    return startBlockNumber
}

function paused() {
    return bool(paused)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getFeeBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return feeBalance[address(arg1)]
}

function chainGasAmount() {
    return chainGasAmount
}

function setWethAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    WETH_ADDRESS = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    ROUTERAddress = arg1
}

function setChainGasAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    chainGasAmount = arg1
}

function pause() {
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function redeem(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0xdc5bad46: arg2, address(arg3), arg4, arg1
    require ext_code.size(arg3)
    call arg3.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}

function addKappas(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 256
        stor256[cd[((32 * idx) + arg1 + 36)]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function redeemAndRemove(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg3 == arg3
    require arg5 == arg5
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0x9a7024cd: arg2, address(arg3), arg4, arg5 << 248, arg6, arg7, arg1
    require ext_code.size(arg3)
    call arg3.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}

function redeemAndSwap(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint8 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg3 == arg3
    require arg5 == arg5
    require arg6 == arg6
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0x91f25e9b: arg2, address(arg3), arg4, arg5 << 248, arg6, arg7, arg8, arg1
    require ext_code.size(arg3)
    call arg3.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}

function initialize() {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    startBlockNumber = block.number
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
}

function sub_bcaeea5e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    staticcall address(arg3).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdc5bad46: arg2, address(arg3), ext_call.return_data[0], address(arg1)
    require ext_code.size(address(arg3))
    call address(arg3).burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
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

function sub_a06fec1b(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    staticcall address(cd[68]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + 320
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 320] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 352
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xca7b49b3: cd[36], address(cd[68]), ext_call.return_data[0], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 320 len (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 32]), (32 * ('cd', 100).length) + 224, cd[164], address(cd[4])
    require ext_code.size(address(cd[68]))
    call address(cd[68]).burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor151 = 1
}

function sub_5198c366(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    mem[132] = this.address
    staticcall address(arg3).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenDeposit(arg2, address(arg3), ext_call.return_data[0], address(arg1));
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(arg3)):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call address(arg3) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, this.address) >> 32 == bool(uint32(msg.sender), Mask(224, 32, this.address) >> 32)
            if not uint32(msg.sender), Mask(224, 32, this.address) >> 32:
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
    stor151 = 1
}

function sub_381d86e3(?) {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    mem[132] = this.address
    staticcall address(cd[68]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = cd[100] + 36
    t = (2 * ceil32(return_data.size)) + 320
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 320] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 352
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x451376d6: cd[36], address(cd[68]), ext_call.return_data[0], Array(len=('cd', 100).length, data=mem[(2 * ceil32(return_data.size)) + 320 len (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 32]), (32 * ('cd', 100).length) + 224, cd[164], address(cd[4])
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(cd[68])):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = 0, msg.sender, address(this.address), ext_call.return_data[0], 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call address(cd[68]) with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), Mask(224, 32, this.address) >> 32 == bool(uint32(msg.sender), Mask(224, 32, this.address) >> 32)
            if not uint32(msg.sender), Mask(224, 32, this.address) >> 32:
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
    stor151 = 1
}

function withdrawAndRemove(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint256 arg7, uint256 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0x65b5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if stor256[arg9]:
        revert with 0, 'Kappa is already present'
    stor256[arg9] = 1
    if feeBalance[address(arg2)] > !arg4:
        revert with 0, 17
    feeBalance[address(arg2)] += arg4
    if arg3 < arg4:
        revert with 0, 17
    mem[100] = arg3 - arg4
    mem[132] = arg6
    staticcall arg5.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args arg3 - arg4, arg6
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 < arg4:
        revert with 0, 17
    if ext_call.return_data[0] < arg7:
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = arg3 - arg4
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4, 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg3 - arg4), uint8(arg6) << 216 == bool(uint32(arg3 - arg4), uint8(arg6) << 216)
                if not uint32(arg3 - arg4), uint8(arg6) << 216:
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
        if arg3 < arg4:
            revert with 0, 17
        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = arg5
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg5
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !(arg3 - arg4):
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 132] = arg5
        mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] + arg3 - arg4
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg5) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg5) << 64, 0, ext_call.return_data[0] + arg3 - arg4, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg5) << 64, 0, ext_call.return_data[0] + arg3 - arg4, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg5) << 64, 0, ext_call.return_data[0] + arg3 - arg4, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(arg3 - arg4), uint8(arg6) << 216 == bool(uint32(arg3 - arg4), uint8(arg6) << 216)
                if not uint32(arg3 - arg4), uint8(arg6) << 216:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if arg3 < arg4:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 264] = arg3 - arg4
            mem[(2 * ceil32(return_data.size)) + 296] = arg6
            mem[(2 * ceil32(return_data.size)) + 328] = arg7
            mem[(2 * ceil32(return_data.size)) + 360] = arg8
            call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args arg3 - arg4, arg6 << 248, arg7, arg8
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                if arg3 < arg4:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 296] = arg1
                mem[(2 * ceil32(return_data.size)) + 328] = arg3 - arg4
                mem[(2 * ceil32(return_data.size)) + 260] = 68
                mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 360] = 32
                mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), arg3 - arg4, 0
                mem[(2 * ceil32(return_data.size)) + 492] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, address(arg1), arg3 - arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg1), arg3 - arg4, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(arg3 - arg4), uint8(arg6) << 216 == bool(uint32(arg3 - arg4), uint8(arg6) << 216)
                        if not uint32(arg3 - arg4), uint8(arg6) << 216:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                        if not mem[(2 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if arg3 < arg4:
                    revert with 0, 17
                emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
            else:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 264] = arg6
                staticcall arg5.getToken(uint8 arg1) with:
                        gas gas_remaining wei
                       args arg6
                mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + 296] = arg1
                mem[(6 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 260] = 68
                mem[(6 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 360] = 32
                mem[(6 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + 492] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(arg3 - arg4), uint8(arg6) << 216 == bool(uint32(arg3 - arg4), uint8(arg6) << 216)
                        if not uint32(arg3 - arg4), uint8(arg6) << 216:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 456] == bool(mem[(6 * ceil32(return_data.size)) + 456])
                        if not mem[(6 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg1, arg9
        else:
            mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
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
            if arg3 < arg4:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg3 - arg4
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg6
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg7
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg8
            call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args arg3 - arg4, arg6 << 248, arg7, arg8
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg6
                staticcall arg5.getToken(uint8 arg1) with:
                        gas gas_remaining wei
                       args arg6
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), ext_call.return_data[0], 0
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call address(ext_call.return_data[0]) with:
                   funct Mask(32, 224, 0, address(arg1), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg1), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(arg3 - arg4), uint8(arg6) << 216 == bool(uint32(arg3 - arg4), uint8(arg6) << 216)
                        if not uint32(arg3 - arg4), uint8(arg6) << 216:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg1, arg9
                else:
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(9 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        'SafeERC20: ERC20 operation did not succeed',
                                        mem[(9 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, mem[(9 * ceil32(return_data.size)) + 650 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, arg9
            else:
                if arg3 < arg4:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3 - arg4
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), arg3 - arg4, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
                call arg2 with:
                   funct Mask(32, 224, 0, address(arg1), arg3 - arg4, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, address(arg1), arg3 - arg4, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(arg3 - arg4), uint8(arg6) << 216 == bool(uint32(arg3 - arg4), uint8(arg6) << 216)
                        if not uint32(arg3 - arg4), uint8(arg6) << 216:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if arg3 < arg4:
                        revert with 0, 17
                    emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                        mem[(4 * ceil32(return_data.size)) + 462] = 32
                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 426
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 430] = 32
                            mem[(4 * ceil32(return_data.size)) + 462] = 42
                            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
                            mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 426
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if arg3 < arg4:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 426] = arg2
                    mem[(4 * ceil32(return_data.size)) + 458] = arg3 - arg4
                    mem[(4 * ceil32(return_data.size)) + 490] = arg4
                    mem[(4 * ceil32(return_data.size)) + 522] = arg6
                    mem[(4 * ceil32(return_data.size)) + 554] = arg7
                    mem[(4 * ceil32(return_data.size)) + 586] = arg8
                    mem[(4 * ceil32(return_data.size)) + 618] = 0
                    emit 0xc1a608d0: mem[(4 * ceil32(return_data.size)) + 426 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 224], arg1, arg9
    stor151 = 1
}



}
