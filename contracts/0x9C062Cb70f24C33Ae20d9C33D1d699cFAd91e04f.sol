contract main {




// =====================  Runtime code  =====================


#
#  - mintAndSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint8 arg7, uint256 arg8, uint256 arg9, bytes32 arg10)
#  - withdraw(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5)
#  - mint(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5)
#  - sub_55f04724(?)
#  - deposit(address arg1, uint256 arg2, address arg3, uint256 arg4)
#  - sub_9de3eff0(?)
#  - depositAndSwap(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint8 arg6, uint256 arg7, uint256 arg8)
#  - withdrawFees(address arg1, address arg2)
#
const bridgeVersion = 6

const DEFAULT_ADMIN_ROLE = 0

const GOVERNANCE_ROLE = 0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1

const NODEGROUP_ROLE = 0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 stor101;
uint8 paused;
mapping of uint256 feeBalance;
uint256 startBlockNumber;
uint256 chainGasAmount;
address WETH_ADDRESS;
address ROUTERAddress;
mapping of uint8 stor206;

function WETH_ADDRESS() {
    return WETH_ADDRESS
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function kappaExists(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor206[arg1])
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

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getFeeBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return feeBalance[address(arg1)]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function chainGasAmount() {
    return chainGasAmount
}

function _fallback() payable {
    revert
}

function setWethAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    WETH_ADDRESS = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    ROUTERAddress = arg1
}

function setChainGasAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1][1][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    chainGasAmount = arg1
}

function pause() {
    if not roleAdmin[0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1][1][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1][1][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function redeem(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0xdc5bad46: arg2, address(arg3), arg4, arg1
    require ext_code.size(arg3)
    call arg3.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function addKappas(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not roleAdmin[0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1][1][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 206
        stor206[cd[((32 * idx) + arg1 + 36)]] = 1
        idx = idx + 1
        continue 
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function redeemAndRemove(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg3 == arg3
    require arg5 == arg5
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0x9a7024cd: arg2, address(arg3), arg4, arg5 << 248, arg6, arg7, arg1
    require ext_code.size(arg3)
    call arg3.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function redeemAndSwap(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint8 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg3 == arg3
    require arg5 == arg5
    require arg6 == arg6
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0x91f25e9b: arg2, address(arg3), arg4, arg5 << 248, arg6, arg7, arg8, arg1
    require ext_code.size(arg3)
    call arg3.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_bcaeea5e(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(arg3))
    staticcall address(arg3).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdc5bad46: arg2, address(arg3), ext_call.return_data[0], address(arg1)
    require ext_code.size(address(arg3))
    call address(arg3).0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    startBlockNumber = block.number
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function sub_da5f90ff(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require calldata.size + -cd[100] - 4 >= 128
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 100)[1] < calldata.size + -cd[100] - 35
    require cd[(cd[100] + ('cd', 100)[1] + 4)] <= test266151307()
    require cd[100] + 4 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[1] + 4)])
    idx = 0
    s = cd[100] + ('cd', 100)[1] + 36
    t = (2 * ceil32(return_data.size)) + 384
    while idx < cd[(cd[100] + ('cd', 100)[1] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[2] < calldata.size + -cd[100] - 35
    require cd[(cd[100] + ('cd', 100)[2] + 4)] <= test266151307()
    require cd[100] + 4 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[2] + 4)])
    mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + 384] = cd[(cd[100] + ('cd', 100)[2] + 4)]
    idx = 0
    s = cd[100] + ('cd', 100)[2] + 36
    t = (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + 416
    while idx < cd[(cd[100] + ('cd', 100)[2] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0xf218d871: cd[36], address(cd[68]), ext_call.return_data[0], 128, ('cd', 100).length, ('cd', 100)[0], 128, (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + 160, cd[(cd[100] + ('cd', 100)[1] + 4)], mem[(2 * ceil32(return_data.size)) + 384 len (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 4)]) + 32], address(cd[4])
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function sub_5198c366(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(arg3))
    staticcall address(arg3).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(arg3))
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
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
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
            require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
            if not uint32(msg.sender), address(this.address) << 64:
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
    stor101 = 1
}

function sub_ef87c2f9(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require calldata.size + -cd[100] - 4 >= 128
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 100)[1] < calldata.size + -cd[100] - 35
    require cd[(cd[100] + ('cd', 100)[1] + 4)] <= test266151307()
    require cd[100] + 4 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[1] + 4)])
    idx = 0
    s = cd[100] + ('cd', 100)[1] + 36
    t = (2 * ceil32(return_data.size)) + 384
    while idx < cd[(cd[100] + ('cd', 100)[1] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 100)[2] < calldata.size + -cd[100] - 35
    require cd[(cd[100] + ('cd', 100)[2] + 4)] <= test266151307()
    require cd[100] + 4 <= calldata.size - (32 * cd[(cd[100] + ('cd', 100)[2] + 4)])
    mem[(2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + 384] = cd[(cd[100] + ('cd', 100)[2] + 4)]
    idx = 0
    s = cd[100] + ('cd', 100)[2] + 36
    t = (2 * ceil32(return_data.size)) + (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + 416
    while idx < cd[(cd[100] + ('cd', 100)[2] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x26714be2: cd[36], address(cd[68]), ext_call.return_data[0], 128, ('cd', 100).length, ('cd', 100)[0], 128, (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + 160, cd[(cd[100] + ('cd', 100)[1] + 4)], mem[(2 * ceil32(return_data.size)) + 384 len (32 * cd[(cd[100] + ('cd', 100)[1] + 4)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 4)]) + 32], address(cd[4])
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
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
            require uint32(msg.sender), address(this.address) << 64 == bool(uint32(msg.sender), address(this.address) << 64)
            if not uint32(msg.sender), address(this.address) << 64:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324 len 28], Mask(32, 224, cd[(cd[100] + ('cd', 100)[1] + 4)]) >> 224 == bool(mem[(2 * ceil32(return_data.size)) + 324 len 28], Mask(32, 224, cd[(cd[100] + ('cd', 100)[1] + 4)]) >> 224)
            if not mem[(2 * ceil32(return_data.size)) + 324 len 28], Mask(32, 224, cd[(cd[100] + ('cd', 100)[1] + 4)]) >> 224:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor101 = 1
}

function withdrawAndRemove(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint256 arg7, uint256 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    require arg6 == arg6
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if stor206[arg9]:
        revert with 0, 'Kappa is already present'
    stor206[arg9] = 1
    if arg4 + feeBalance[address(arg2)] < feeBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)] += arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[100] = arg3 - arg4
    mem[132] = arg6
    require ext_code.size(arg5)
    staticcall arg5.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args arg3 - arg4, arg6
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < arg7:
        mem[ceil32(return_data.size) + 132] = arg1
        mem[ceil32(return_data.size) + 164] = arg3 - arg4
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
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
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
    else:
        mem[ceil32(return_data.size) + 100] = this.address
        mem[ceil32(return_data.size) + 132] = arg5
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg5
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 - arg4 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(2 * ceil32(return_data.size)) + 132] = arg5
        mem[(2 * ceil32(return_data.size)) + 164] = arg3 - arg4 + ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg5) << 64
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0], 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call arg2 with:
           funct Mask(32, 224, approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0], 0) << 288)
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
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + 264] = arg3 - arg4
            mem[(2 * ceil32(return_data.size)) + 296] = arg6
            mem[(2 * ceil32(return_data.size)) + 328] = arg7
            mem[(2 * ceil32(return_data.size)) + 360] = arg8
            require ext_code.size(arg5)
            call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args arg3 - arg4, arg6 << 248, arg7, arg8
            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[(2 * ceil32(return_data.size)) + 296] = arg1
                mem[(2 * ceil32(return_data.size)) + 328] = arg3 - arg4
                mem[(2 * ceil32(return_data.size)) + 260] = 68
                mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 360] = 32
                mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
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
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
            else:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 264] = arg6
                require ext_code.size(arg5)
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
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
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
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg3 - arg4
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg6
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg7
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg8
            require ext_code.size(arg5)
            call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args arg3 - arg4, arg6 << 248, arg7, arg8
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = arg6
                require ext_code.size(arg5)
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
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
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
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg3 - arg4
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
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
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
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
                            mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 426
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if arg4 > arg3:
                        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 430] = 32
                        mem[(4 * ceil32(return_data.size)) + 462] = 30
                        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeMath: subtraction overflow'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 426
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    mem[(4 * ceil32(return_data.size)) + 426] = arg2
                    mem[(4 * ceil32(return_data.size)) + 458] = arg3 - arg4
                    mem[(4 * ceil32(return_data.size)) + 490] = arg4
                    mem[(4 * ceil32(return_data.size)) + 522] = arg6
                    mem[(4 * ceil32(return_data.size)) + 554] = arg7
                    mem[(4 * ceil32(return_data.size)) + 586] = arg8
                    mem[(4 * ceil32(return_data.size)) + 618] = 0
                    emit 0xc1a608d0: mem[(4 * ceil32(return_data.size)) + 426 len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 224], arg1, arg9
    stor101 = 1
}



}
