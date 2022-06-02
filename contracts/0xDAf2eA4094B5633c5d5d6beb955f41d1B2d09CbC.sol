contract main {




// =====================  Runtime code  =====================


#
#  - mintAndSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint8 arg7, uint256 arg8, uint256 arg9, bytes32 arg10)
#  - sub_5198c366(?)
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
mapping of struct feeBalance;
uint256 startBlockNumber;
uint256 chainGasAmount;
address WETH_ADDRESS;
uint32 stor205;
address ROUTERAddress;
uint256 stor205;
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
    return address(ROUTERAddress)
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getFeeBalance(address arg1) {
    require calldata.size - 4 >= 32
    return feeBalance[address(arg1)].field_0
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
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    WETH_ADDRESS = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    address(ROUTERAddress) = arg1
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
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
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

function redeemAndRemove(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
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

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_bcaeea5e(?) {
    require calldata.size - 4 >= 96
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdc5bad46: arg2, address(arg3), ext_call.return_data[0], arg1
    require ext_code.size(arg3)
    call arg3.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
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
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
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

function sub_618495b0(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x6e51ed05: arg2, address(arg3), ext_call.return_data[0], Array(len=arg4.length, data=arg4[all]), arg1
    require ext_code.size(arg3)
    call arg3.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
}

function deposit(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit TokenDeposit(arg2, address(arg3), arg4, arg1);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg3):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    call arg3 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    stor101 = 1
}

function withdrawFees(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1][1][address(msg.sender)].field_0:
        revert with 0, 'Not governance'
    if not arg2:
        revert with 0, 'Address is 0x000'
    if feeBalance[address(arg1)].field_0:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, feeBalance[address(arg1)].field_32
        mem[324 len 0] = 0
        call arg1 with:
             gas gas_remaining wei
            args feeBalance[address(arg1)].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, feeBalance[address(arg1)].field_0
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        feeBalance[address(arg1)].field_0 = 0
}

function depositAndSwap(address arg1, uint256 arg2, address arg3, uint256 arg4, uint8 arg5, uint8 arg6, uint256 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    emit 0x79c15604: arg2, address(arg3), arg4, arg5 << 248, arg6, arg7, arg8, arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg3):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[416 len 4] = 0
    call arg3 with:
       funct uint32(arg8)
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg4
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    stor101 = 1
}

function sub_ca2c8908(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(arg3)
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256 len arg4.length] = arg4[all]
    mem[arg4.length + 256] = 0
    emit 0x638eeca9: arg2, address(arg3), ext_call.return_data[0], Array(len=arg4.length, data=arg4[all]), arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg3):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0 len 28]
    mem[416 len 4] = 0
    call arg3 with:
         gas gas_remaining wei
        args Mask(736, -512, ext_call.return_data[0 len 28]) << 512, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    stor101 = 1
}

function mint(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if stor206[arg5]:
        revert with 0, 'Kappa is already present'
    stor206[arg5] = 1
    if arg4 + feeBalance[address(arg2)].field_0 < feeBalance[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)].field_0 += arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0xbf14b9fd: address(arg2), arg3 - arg4, arg4, arg1, arg5
    require ext_code.size(arg2)
    call arg2.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if chainGasAmount:
        if eth.balance(this.address) > chainGasAmount:
            call arg1 with:
               value chainGasAmount wei
                 gas gas_remaining wei
    stor101 = 1
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
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
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
}

function withdraw(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if stor206[arg5]:
        revert with 0, 'Kappa is already present'
    stor206[arg5] = 1
    if arg4 + feeBalance[address(arg2)].field_0 < feeBalance[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)].field_0 += arg4
    if WETH_ADDRESS != arg2:
        emit 0x8b0afdc7: address(arg2), arg3, arg4, arg1, arg5
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if WETH_ADDRESS:
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(WETH_ADDRESS)
            call WETH_ADDRESS.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (arg3 - arg4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            call arg1 with:
               value arg3 - arg4 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'ETH_TRANSFER_FAILED'
            emit 0x8b0afdc7: address(arg2), arg3, arg4, arg1, arg5
        else:
            emit 0x8b0afdc7: address(arg2), arg3, arg4, arg1, arg5
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
            call arg2 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    stor101 = 1
}

function withdrawAndRemove(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint256 arg7, uint256 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
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
    if arg4 + feeBalance[address(arg2)].field_0 < feeBalance[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)].field_0 += arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg5)
    staticcall arg5.calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) with:
            gas gas_remaining wei
           args arg3 - arg4, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < arg7:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
    else:
        require ext_code.size(arg2)
        staticcall arg2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 - arg4 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg5) << 64, 0, Mask(224, 32, arg3 - arg4 + ext_call.return_data[0]) >> 32
        mem[324 len 0] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3 - arg4 + ext_call.return_data[0]) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
            if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg5)
            call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args arg3 - arg4, arg6 << 248, arg7, arg8
            if not ext_call.success:
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                call arg2 with:
                     gas gas_remaining wei
                    args arg3 - arg4, mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
                    if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
            else:
                require return_data.size >= 32
                require ext_code.size(arg5)
                staticcall arg5.getToken(uint8 arg1) with:
                        gas gas_remaining wei
                       args arg6
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, address(arg1), ext_call.return_data[0 len 28]
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
                    if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg1, arg9
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg5)
                call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args arg3 - arg4, arg6 << 248, arg7, arg8
                if not ext_call.success:
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    call arg2 with:
                         gas gas_remaining wei
                        args arg3 - arg4, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg4 > arg3:
                            revert with 0, 
                                        'SafeMath: subtraction overflow',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, mem[(2 * ceil32(return_data.size)) + 650 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1, arg9
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint8 arg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg1), ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg1, arg9
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg5)
                call arg5.removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args arg3 - arg4, arg6 << 248, arg7, arg8
                if not ext_call.success:
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    call arg2 with:
                         gas gas_remaining wei
                        args arg3 - arg4, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg1, arg9
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint8 arg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 531 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, address(arg1), ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address arg1, uint256 arg2), address(arg5) << 64, 0, arg3 - arg4 + ext_call.return_data[0]
                        if not approve(address arg1, uint256 arg2), address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg1, arg9
    stor101 = 1
}

function sub_f4fdfe4a(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if stor206[arg6]:
        revert with 0, 'Kappa is already present'
    stor206[arg6] = 1
    if arg4 + feeBalance[address(arg2)].field_0 < feeBalance[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)].field_0 += arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), Mask(224, 32, arg3 - arg4) >> 32
    mem[324 len 0] = 0
    call arg2 with:
       funct uint32(stor205)
         gas gas_remaining wei
        args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        mem[260 len arg5.length] = arg5[all]
        call address(ROUTERAddress) with:
             gas gas_remaining wei
            args arg5[all]
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not return_data.size:
            if ext_call.success:
                mem[452 len arg5.length] = arg5[all]
                mem[arg5.length + 452] = 0
                emit 0x7b9a2613: address(arg2), arg3 - arg4, 0, arg4, 160, 1, arg5.length, arg5[all], mem[arg5.length + 452 len ceil32(arg5.length) - arg5.length], arg1, arg6
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 96] = 0, address(ROUTERAddress), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                mem[580 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args arg3 - arg4, mem[392 len 60], mem[552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[566 len 14],
                                    0,
                                    mem[584 len 4]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[648 len arg5.length] = arg5[all]
                    mem[arg5.length + 648] = 0
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[arg5.length + 648 len ceil32(arg5.length) - arg5.length], arg1, arg6
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 649 len arg5.length] = arg5[all]
                    mem[arg5.length + ceil32(return_data.size) + 649] = 0
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 649 len ceil32(arg5.length) - arg5.length], arg1, arg6
        else:
            if ext_call.success:
                emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 96] = 0, address(ROUTERAddress), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                mem[ceil32(return_data.size) + 581 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args arg3 - arg4, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 14],
                                    0,
                                    mem[ceil32(return_data.size) + 585 len 4]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 649 len arg5.length] = arg5[all]
                    mem[arg5.length + ceil32(return_data.size) + 649] = 0
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 649 len ceil32(arg5.length) - arg5.length], arg1, arg6
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[(2 * ceil32(return_data.size)) + 650 len arg5.length] = arg5[all]
                    mem[arg5.length + (2 * ceil32(return_data.size)) + 650] = 0
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + arg5.length + 650 len ceil32(arg5.length) - arg5.length], arg1, arg6
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            mem[ceil32(return_data.size) + 261 len arg5.length] = arg5[all]
            call address(ROUTERAddress) with:
                 gas gas_remaining wei
                args arg5[all]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not return_data.size:
                if ext_call.success:
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 96] = 0, address(ROUTERAddress), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    mem[ceil32(return_data.size) + 581 len 4] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args arg3 - arg4, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 585 len 4]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 649 len arg5.length] = arg5[all]
                        mem[arg5.length + ceil32(return_data.size) + 649] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 649 len ceil32(arg5.length) - arg5.length], arg1, arg6
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg4 > arg3:
                            revert with 0, 
                                        'SafeMath: subtraction overflow',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[(2 * ceil32(return_data.size)) + 650 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + 650] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, mem[(2 * ceil32(return_data.size)) + 650 len (2 * ceil32(return_data.size)) + ceil32(arg5.length) - (2 * ceil32(return_data.size))], arg1, arg6
            else:
                if ext_call.success:
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 564 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 458 len 96] = 0, address(ROUTERAddress), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    mem[(2 * ceil32(return_data.size)) + 582 len 4] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args arg3 - arg4, mem[(2 * ceil32(return_data.size)) + 394 len 60], mem[(2 * ceil32(return_data.size)) + 554 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 14],
                                        0,
                                        mem[(2 * ceil32(return_data.size)) + 586 len 4]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 650 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + 650] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + arg5.length + 650 len ceil32(arg5.length) - arg5.length], arg1, arg6
                    else:
                        mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 490]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 569 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 651 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 651] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + arg5.length + 651 len ceil32(arg5.length) - arg5.length], arg1, arg6
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            mem[ceil32(return_data.size) + 261 len arg5.length] = arg5[all]
            call address(ROUTERAddress) with:
                 gas gas_remaining wei
                args arg5[all]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not return_data.size:
                if ext_call.success:
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 96] = 0, address(ROUTERAddress), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    mem[ceil32(return_data.size) + 581 len 4] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args arg3 - arg4, mem[ceil32(return_data.size) + 393 len 60], mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 585 len 4]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 649 len arg5.length] = arg5[all]
                        mem[arg5.length + ceil32(return_data.size) + 649] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 649 len ceil32(arg5.length) - arg5.length], arg1, arg6
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 650 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + 650] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + arg5.length + 650 len ceil32(arg5.length) - arg5.length], arg1, arg6
            else:
                if ext_call.success:
                    emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(2 * ceil32(return_data.size)) + 564 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 458 len 96] = 0, address(ROUTERAddress), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    mem[(2 * ceil32(return_data.size)) + 582 len 4] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args arg3 - arg4, mem[(2 * ceil32(return_data.size)) + 394 len 60], mem[(2 * ceil32(return_data.size)) + 554 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor205), uint32(stor205), arg3 - arg4
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor205):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 14],
                                        0,
                                        mem[(2 * ceil32(return_data.size)) + 586 len 4]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + 650 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + 650] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + arg5.length + 650 len ceil32(arg5.length) - arg5.length], arg1, arg6
                    else:
                        mem[(2 * ceil32(return_data.size)) + 490 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 490]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 569 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 651 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 651] = 0
                        emit 0x7b9a2613: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + arg5.length + 651 len ceil32(arg5.length) - arg5.length], arg1, arg6
    stor101 = 1
}

function sub_1bcec027(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if stor206[arg6]:
        revert with 0, 'Kappa is already present'
    stor206[arg6] = 1
    if arg4 + feeBalance[address(arg2)].field_0 < feeBalance[address(arg2)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)].field_0 += arg4
    if not chainGasAmount:
        mem[100] = address(ROUTERAddress)
        require ext_code.size(arg2)
        call arg2.0x40c10f19 with:
             gas gas_remaining wei
            args address(ROUTERAddress), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len arg5.length] = arg5[all]
        call address(ROUTERAddress) with:
             gas gas_remaining wei
            args arg5[all]
        if not return_data.size:
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.success:
                emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg3 - arg4) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), arg3 - arg4
                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor205):
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[484 len arg5.length] = arg5[all]
                    mem[arg5.length + 484] = 0
                    emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[arg5.length + 484 len ceil32(arg5.length) - arg5.length], arg1, arg6
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                    mem[arg5.length + ceil32(return_data.size) + 485] = 0
                    emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
        else:
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.success:
                emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
            else:
                mem[ceil32(return_data.size) + 97] = 100
                mem[ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 399 len 26]
                if not ext_code.size(arg2):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 293 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                mem[ceil32(return_data.size) + 417 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg3 - arg4) << 480, mem[ceil32(return_data.size) + 389 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[128 len 4], Mask(224, 32, arg3) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 14],
                                        0,
                                        mem[ceil32(return_data.size) + 421 len 4]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                    mem[arg5.length + ceil32(return_data.size) + 485] = 0
                    emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
                else:
                    mem[ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 325]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 404 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if arg4 > arg3:
                        revert with 0, 
                                    'SafeMath: subtraction overflow',
                                    mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    mem[(2 * ceil32(return_data.size)) + 486 len arg5.length] = arg5[all]
                    mem[arg5.length + (2 * ceil32(return_data.size)) + 486] = 0
                    emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, mem[(2 * ceil32(return_data.size)) + 486 len (2 * ceil32(return_data.size)) + ceil32(arg5.length) - (2 * ceil32(return_data.size))], arg1, arg6
    else:
        if eth.balance(this.address) <= chainGasAmount:
            mem[100] = address(ROUTERAddress)
            require ext_code.size(arg2)
            call arg2.0x40c10f19 with:
                 gas gas_remaining wei
                args address(ROUTERAddress), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len arg5.length] = arg5[all]
            call address(ROUTERAddress) with:
                 gas gas_remaining wei
                args arg5[all]
            if not return_data.size:
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.success:
                    emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                else:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    mem[416 len 4] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3 - arg4) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), arg3 - arg4
                        if not unknown_0x23b872dd(?????), Mask(224, 0, stor205):
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[484 len arg5.length] = arg5[all]
                        mem[arg5.length + 484] = 0
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[arg5.length + 484 len ceil32(arg5.length) - arg5.length], arg1, arg6
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                        mem[arg5.length + ceil32(return_data.size) + 485] = 0
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
            else:
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.success:
                    emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                else:
                    mem[ceil32(return_data.size) + 97] = 100
                    mem[ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 399 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 293 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                    mem[ceil32(return_data.size) + 417 len 4] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3 - arg4) << 480, mem[ceil32(return_data.size) + 389 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[128 len 4], Mask(224, 32, arg3) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 14],
                                            0,
                                            mem[ceil32(return_data.size) + 421 len 4]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                        mem[arg5.length + ceil32(return_data.size) + 485] = 0
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
                    else:
                        mem[ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 325]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 404 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg4 > arg3:
                            revert with 0, 
                                        'SafeMath: subtraction overflow',
                                        mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        mem[(2 * ceil32(return_data.size)) + 486 len arg5.length] = arg5[all]
                        mem[arg5.length + (2 * ceil32(return_data.size)) + 486] = 0
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, mem[(2 * ceil32(return_data.size)) + 486 len (2 * ceil32(return_data.size)) + ceil32(arg5.length) - (2 * ceil32(return_data.size))], arg1, arg6
        else:
            call arg1 with:
               value chainGasAmount wei
                 gas gas_remaining wei
            if not return_data.size:
                mem[100] = address(ROUTERAddress)
                require ext_code.size(arg2)
                call arg2.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ROUTERAddress), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len arg5.length] = arg5[all]
                call address(ROUTERAddress) with:
                     gas gas_remaining wei
                    args arg5[all]
                if not return_data.size:
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.success:
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                    else:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                        mem[416 len 4] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - arg4) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), arg3 - arg4
                            if not unknown_0x23b872dd(?????), Mask(224, 0, stor205):
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[484 len arg5.length] = arg5[all]
                            mem[arg5.length + 484] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[arg5.length + 484 len ceil32(arg5.length) - arg5.length], arg1, arg6
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                            mem[arg5.length + ceil32(return_data.size) + 485] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
                else:
                    mem[96] = return_data.size
                    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.success:
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                    else:
                        mem[ceil32(return_data.size) + 97] = 100
                        mem[ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 399 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 293 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                        mem[ceil32(return_data.size) + 417 len 4] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - arg4) << 480, mem[ceil32(return_data.size) + 389 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[128 len 4], Mask(224, 32, arg3) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 421 len 4]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                            mem[arg5.length + ceil32(return_data.size) + 485] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
                        else:
                            mem[ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 325]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 404 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg4 > arg3:
                                revert with 0, 
                                            'SafeMath: subtraction overflow',
                                            mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(2 * ceil32(return_data.size)) + 486 len arg5.length] = arg5[all]
                            mem[arg5.length + (2 * ceil32(return_data.size)) + 486] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, mem[(2 * ceil32(return_data.size)) + 486 len (2 * ceil32(return_data.size)) + ceil32(arg5.length) - (2 * ceil32(return_data.size))], arg1, arg6
            else:
                mem[96] = return_data.size
                mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 101] = address(ROUTERAddress)
                mem[ceil32(return_data.size) + 133] = arg3
                require ext_code.size(arg2)
                call arg2.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ROUTERAddress), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 97 len arg5.length] = arg5[all]
                call address(ROUTERAddress) with:
                     gas gas_remaining wei
                    args arg5[all]
                if not return_data.size:
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.success:
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                    else:
                        mem[ceil32(return_data.size) + 97] = 100
                        mem[ceil32(return_data.size) + 133 len 28] = Mask(224, 0, stor205)
                        mem[ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 399 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 293 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                        mem[ceil32(return_data.size) + 417 len 4] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - arg4) << 480, mem[ceil32(return_data.size) + 389 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 14],
                                                0,
                                                mem[ceil32(return_data.size) + 421 len 4]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[ceil32(return_data.size) + 485 len arg5.length] = arg5[all]
                            mem[arg5.length + ceil32(return_data.size) + 485] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 485 len ceil32(arg5.length) - arg5.length], arg1, arg6
                        else:
                            mem[ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 325]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 404 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg4 > arg3:
                                revert with 0, 
                                            'SafeMath: subtraction overflow',
                                            mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            mem[(2 * ceil32(return_data.size)) + 486 len arg5.length] = arg5[all]
                            mem[arg5.length + (2 * ceil32(return_data.size)) + 486] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, mem[(2 * ceil32(return_data.size)) + 486 len (2 * ceil32(return_data.size)) + ceil32(arg5.length) - (2 * ceil32(return_data.size))], arg1, arg6
                else:
                    mem[ceil32(return_data.size) + 97] = return_data.size
                    mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_call.success:
                        emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, Array(len=arg5.length, data=arg5[all]), 1, arg1, arg6
                    else:
                        mem[(2 * ceil32(return_data.size)) + 98] = 100
                        mem[(2 * ceil32(return_data.size)) + 134 len 28] = Mask(224, 0, stor205)
                        mem[(2 * ceil32(return_data.size)) + 130 len 4] = unknown_0x23b872dd(?????)
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[(2 * ceil32(return_data.size)) + 400 len 26]
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 294 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor205), uint32(stor205), address(arg1), Mask(224, 32, arg3 - arg4) >> 32
                        mem[(2 * ceil32(return_data.size)) + 418 len 4] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - arg4) << 480, mem[(2 * ceil32(return_data.size)) + 390 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[128]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 404 len 14],
                                                0,
                                                mem[(2 * ceil32(return_data.size)) + 422 len 4]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[(2 * ceil32(return_data.size)) + 486 len arg5.length] = arg5[all]
                            mem[arg5.length + (2 * ceil32(return_data.size)) + 486] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + arg5.length + 486 len ceil32(arg5.length) - arg5.length], arg1, arg6
                        else:
                            mem[(2 * ceil32(return_data.size)) + 326 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(2 * ceil32(return_data.size)) + 326]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 405 len 22]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 487 len arg5.length] = arg5[all]
                            mem[arg5.length + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 487] = 0
                            emit 0xe0f1d935: address(arg2), arg3 - arg4, arg4, 160, 0, arg5.length, arg5[all], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + arg5.length + 487 len ceil32(arg5.length) - arg5.length], arg1, arg6
    stor101 = 1
}



}
