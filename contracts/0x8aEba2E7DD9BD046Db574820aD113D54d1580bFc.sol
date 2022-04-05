contract main {




// =====================  Runtime code  =====================


const bridgeVersion = 2

const DEFAULT_ADMIN_ROLE = 0

const NODEGROUP_ROLE = 0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 stor101;
uint8 paused;
mapping of uint256 feeBalance;
uint256 startBlockNumber;
uint256 stor203;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
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
    return feeBalance[address(arg1)]
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function setChainGasAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Not admin'
    stor203 = arg1
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
    call arg3.burnFrom(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor101 = 1
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
    call arg3.burnFrom(address rg1, uint256 rg2) with:
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
    call arg3.burnFrom(address rg1, uint256 rg2) with:
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

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function withdrawFees(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    require roleAdmin[0][1][address(msg.sender)].field_0
    if not arg2:
        revert with 0, 'Address is 0x000'
    if feeBalance[address(arg1)]:
        feeBalance[address(arg1)] = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 0
        call arg1 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, 0
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
    if arg4 + feeBalance[address(arg2)] < feeBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)] += arg4
    emit 0x8b0afdc7: address(arg2), arg3, arg4, arg5, arg1
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
    if arg4 + feeBalance[address(arg2)] < feeBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)] += arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0xbf14b9fd: address(arg2), arg3 - arg4, arg4, arg5, arg1
    require ext_code.size(arg2)
    call arg2.mint(address rg1, uint256 rg2) with:
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
    if stor203:
        if eth.balance(this.address) > stor203:
            call arg1 with:
               value stor203 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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

function mintAndSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint8 arg6, uint8 arg7, uint256 arg8, uint256 arg9, bytes32 arg10) {
    require calldata.size - 4 >= 320
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not roleAdmin[0xb5c00e6706c3d213edd70ff33717fac657eacc5fe161f07180cf1fcab13cc4cd][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a node group'
    if arg3 <= arg4:
        revert with 0, 'Amount must be greater than fee'
    if arg4 + feeBalance[address(arg2)] < feeBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)] += arg4
    if not stor203:
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg5)
        staticcall arg5.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg6 << 248, arg7 << 248, arg3 - arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] < arg8:
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
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0x4f56ec39: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 0, arg10, arg1
        else:
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg5)
            call arg5.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, 0, arg7 << 248, arg3 - arg4, arg8, arg9
            if not ext_call.success:
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
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x4f56ec39: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 0, arg10, arg1
            else:
                require return_data.size >= 32
                require ext_code.size(arg5)
                staticcall arg5.getToken(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg7
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
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
                emit 0x4f56ec39: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7 << 248, arg8, arg9, 1, arg10, arg1
    else:
        if eth.balance(this.address) <= stor203:
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg5)
            staticcall arg5.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg6 << 248, arg7 << 248, arg3 - arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < arg8:
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
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x4f56ec39: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 0, arg10, arg1
            else:
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg5), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg5)
                call arg5.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, arg7 << 248, arg3 - arg4, arg8, arg9
                if not ext_call.success:
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
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x4f56ec39: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 0, arg10, arg1
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit 0x4f56ec39: address(arg2), ext_call.return_data[0], 0, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 1, arg10, arg1
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
                        emit 0x4f56ec39: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7 << 248, arg8, arg9, 1, arg10, arg1
        else:
            call arg1 with:
               value stor203 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(arg5)
            staticcall arg5.calculateSwap(uint8 rg1, uint8 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg6 << 248, arg7 << 248, arg3 - arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg2)
            call arg2.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < arg8:
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
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                emit 0x4f56ec39: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 0, arg10, arg1
            else:
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg5), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg5)
                call arg5.swap(uint8 rg1, uint8 rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, 0, arg7 << 248, arg3 - arg4, arg8, arg9
                if not ext_call.success:
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
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x4f56ec39: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7 << 248, arg8, arg9, 0, arg10, arg1
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint256 rg1) with:
                            gas gas_remaining wei
                           args arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0]
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
                    emit 0x4f56ec39: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7 << 248, arg8, arg9, 1, arg10, arg1
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
    if arg4 + feeBalance[address(arg2)] < feeBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    feeBalance[address(arg2)] += arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg5)
    staticcall arg5.calculateRemoveLiquidityOneToken(uint256 rg1, uint8 rg2) with:
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
        mem[324 len 0] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3 - arg4
            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xc1a608d0: address(arg2), arg3 - arg4, 0, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
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
            emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
    else:
        if not arg3 - arg4:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg5) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
            call arg2 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg5)
                call arg5.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args arg3 - arg4, arg6 << 248, arg7, arg8
                if not ext_call.success:
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
                    mem[488 len 0] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3 - arg4) << 224, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                        if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit 0xc1a608d0: address(arg2), arg3 - arg4, 0, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
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
                        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint8 rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                        if not approve(address rg1, uint256 rg2), address(arg5) << 64:
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
                    emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, arg1
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
                require ext_code.size(arg5)
                call arg5.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
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
                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3 - arg4) << 224, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                        if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        if arg4 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
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
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        if arg4 > arg3:
                            revert with 0, 
                                        'SafeMath: subtraction overflow',
                                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint8 rg1) with:
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
                    mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                        if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, arg1
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
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
        else:
            require ext_code.size(arg2)
            staticcall arg2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[218 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg5) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
            call arg2 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg3 - arg4) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                if arg4 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(arg5)
                call arg5.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args arg3 - arg4, arg6 << 248, arg7, arg8
                if not ext_call.success:
                    if arg4 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
                    call arg2 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg3 - arg4) << 224, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                        if not approve(address rg1, uint256 rg2), address(arg5) << 64:
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
                    emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
                else:
                    require return_data.size >= 32
                    require ext_code.size(arg5)
                    staticcall arg5.getToken(uint8 rg1) with:
                            gas gas_remaining wei
                           args arg6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x74416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                        if not approve(address rg1, uint256 rg2), address(arg5) << 64:
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
                    emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, arg1
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
                    call arg5.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
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
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
                        call arg2 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - arg4) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                            if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
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
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            if arg4 > arg3:
                                revert with 0, 
                                            'SafeMath: subtraction overflow',
                                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
                    else:
                        require return_data.size >= 32
                        require ext_code.size(arg5)
                        staticcall arg5.getToken(uint8 rg1) with:
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
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                            if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, arg1
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
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
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
                    call arg5.removeLiquidityOneToken(uint256 rg1, uint8 rg2, uint256 rg3, uint256 rg4) with:
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
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3 - arg4) >> 32
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg3 - arg4) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                            if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            if arg4 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            emit 0xc1a608d0: address(arg2), arg3 - arg4, 0, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
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
                            emit 0xc1a608d0: address(arg2), arg3 - arg4, arg4, arg6 << 248, arg7, arg8, 0, arg9, arg1
                    else:
                        require return_data.size >= 32
                        require ext_code.size(arg5)
                        staticcall arg5.getToken(uint8 rg1) with:
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
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with approve(address rg1, uint256 rg2), address(arg5) << 64, 0, arg3 - arg4
                            if not approve(address rg1, uint256 rg2), address(arg5) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, arg1
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
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit 0xc1a608d0: address(arg2), ext_call.return_data[0], arg4, arg6 << 248, arg7, arg8, 1, arg9, mem[(2 * ceil32(return_data.size)) + 682 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], arg1
    stor101 = 1
}



}
