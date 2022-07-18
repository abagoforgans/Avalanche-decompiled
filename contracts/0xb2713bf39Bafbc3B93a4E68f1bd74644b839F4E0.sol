contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - pause()
#  - managerHarvest()
#  - sub_f93b5a6a(?)
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
uint8 stor9;
address gaspriceAddress; offset 8
address nativeAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
uint32 stor15;
address sub_a5df7f13Address;
address chefAddress;
uint256 stor17; offset 32
uint256 poolId;
uint8 stor18;
uint256 lastHarvest;
array of struct outputToNativeRoute;
array of struct sub_f0567d75;
array of struct nativeToLp0Route;
array of struct nativeToLp1Route;

function native() {
    return nativeAddress
}

function want() {
    return wantAddress
}

function chef() {
    return chefAddress
}

function strategist() {
    return strategistAddress
}

function unirouter() {
    return unirouterAddress
}

function poolId() {
    return poolId
}

function paused() {
    return bool(stor0)
}

function lpToken0() {
    return lpToken0Address
}

function gasprice() {
    return gaspriceAddress
}

function lpToken1() {
    return lpToken1Address
}

function harvestOnDeposit() {
    return bool(stor18)
}

function withdrawalFee() {
    return withdrawalFee
}

function owner() {
    return owner
}

function beefyFeeRecipient() {
    return beefyFeeRecipientAddress
}

function callFee() {
    return callFee
}

function sub_9f8b5da1(?) {
    return bool(stor9)
}

function sub_a5df7f13(?) {
    return address(sub_a5df7f13Address)
}

function keeper() {
    return keeperAddress
}

function outputToNativeRoute(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function beefyFee() {
    return beefyFee
}

function nativeToLp1Route(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < nativeToLp1Route.length
    return nativeToLp1Route[arg1].field_0
}

function nativeToLp0Route(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < nativeToLp0Route.length
    return nativeToLp0Route[arg1].field_0
}

function sub_f0567d75(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_f0567d75.length
    return sub_f0567d75[arg1].field_0
}

function lastHarvest() {
    return lastHarvest
}

function output() {
    return outputAddress
}

function vault() {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    beefyFeeRecipientAddress = arg1
}

function setShouldGasThrottle(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor9 = uint8(arg1)
}

function setWithdrawalFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() {
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, address(sub_a5df7f13Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function setHarvestOnDeposit(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    stor18 = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1):
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf() {
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, address(sub_a5df7f13Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function sub_4ac74e81(?) {
    if sub_f0567d75.length:
        mem[128] = address(sub_f0567d75.field_0)
        if (32 * sub_f0567d75.length) + 32 > 64:
            mem[160] = address(sub_f0567d75.field_256)
            idx = 160
            s = 1
            while (32 * sub_f0567d75.length) + 96 > idx:
                mem[idx + 32] = sub_f0567d75[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_f0567d75.length) + 128] = 32
    mem[(32 * sub_f0567d75.length) + 160] = sub_f0567d75.length
    mem[(32 * sub_f0567d75.length) + 192 len floor32(sub_f0567d75.length)] = mem[128 len floor32(sub_f0567d75.length)]
    return memory
      from (32 * sub_f0567d75.length) + 128
       len (96 * sub_f0567d75.length) + 64
}

function nativeToLp1() {
    if nativeToLp1Route.length:
        mem[128] = address(nativeToLp1Route.field_0)
        if (32 * nativeToLp1Route.length) + 32 > 64:
            mem[160] = address(nativeToLp1Route.field_256)
            idx = 160
            s = 1
            while (32 * nativeToLp1Route.length) + 96 > idx:
                mem[idx + 32] = nativeToLp1Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * nativeToLp1Route.length) + 128] = 32
    mem[(32 * nativeToLp1Route.length) + 160] = nativeToLp1Route.length
    mem[(32 * nativeToLp1Route.length) + 192 len floor32(nativeToLp1Route.length)] = mem[128 len floor32(nativeToLp1Route.length)]
    return memory
      from (32 * nativeToLp1Route.length) + 128
       len (96 * nativeToLp1Route.length) + 64
}

function nativeToLp0() {
    if nativeToLp0Route.length:
        mem[128] = address(nativeToLp0Route.field_0)
        if (32 * nativeToLp0Route.length) + 32 > 64:
            mem[160] = address(nativeToLp0Route.field_256)
            idx = 160
            s = 1
            while (32 * nativeToLp0Route.length) + 96 > idx:
                mem[idx + 32] = nativeToLp0Route[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * nativeToLp0Route.length) + 128] = 32
    mem[(32 * nativeToLp0Route.length) + 160] = nativeToLp0Route.length
    mem[(32 * nativeToLp0Route.length) + 192 len floor32(nativeToLp0Route.length)] = mem[128 len floor32(nativeToLp0Route.length)]
    return memory
      from (32 * nativeToLp0Route.length) + 128
       len (96 * nativeToLp0Route.length) + 64
}

function outputToNative() {
    if not outputToNativeRoute.length:
        mem[(32 * outputToNativeRoute.length) + 128] = 32
        mem[(32 * outputToNativeRoute.length) + 160] = outputToNativeRoute.length
        mem[(32 * outputToNativeRoute.length) + 192 len floor32(outputToNativeRoute.length)] = mem[128 len floor32(outputToNativeRoute.length)]
        return memory
          from (32 * outputToNativeRoute.length) + 128
           len (96 * outputToNativeRoute.length) + 64
    mem[128] = address(outputToNativeRoute.field_0)
    idx = 128
    s = 0
    while (32 * outputToNativeRoute.length) + 96 > idx:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * outputToNativeRoute.length) + 192 len floor32(outputToNativeRoute.length)] = mem[128 len floor32(outputToNativeRoute.length)]
    return Array(len=outputToNativeRoute.length, data=mem[128 len floor32(outputToNativeRoute.length)], mem[(32 * outputToNativeRoute.length) + floor32(outputToNativeRoute.length) + 192 len (32 * outputToNativeRoute.length) - floor32(outputToNativeRoute.length)]), 
}

function retireStrat() {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(sub_a5df7f13Address))
    call address(sub_a5df7f13Address).emergencyWithdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args chefAddress, poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_a5df7f13Address))
    call address(sub_a5df7f13Address).0x1290bb92 with:
         gas gas_remaining wei
        args chefAddress, poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rewardsAvailable() {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = poolId
    mem[132] = address(sub_a5df7f13Address)
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, address(sub_a5df7f13Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], stor17
    _6 = uint32(stor15), mem[164 len 28]
    require uint32(stor15), mem[164 len 28] <= 4294967296
    require uint32(stor15), mem[164 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(stor15), mem[164 len 28] + 96] + uint32(stor15), mem[164 len 28] + 32 and mem[uint32(stor15), mem[164 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(stor15), mem[164 len 28] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if _9 % 32:
        mem[floor32(_9) + ceil32(return_data.size) + 128] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 160 len _9 % 32]
    return _4, mem[192]
}

function deposit() {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(sub_a5df7f13Address))
        call address(sub_a5df7f13Address).deposit(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args chefAddress, poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(chefAddress)
        staticcall chefAddress.0x93f1a40b with:
                gas gas_remaining wei
               args poolId, address(sub_a5df7f13Address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit Deposit((2 * ext_call.return_data[0]));
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if stor0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if ext_call.return_data[0]:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if stor0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_a5df7f13Address))
        call address(sub_a5df7f13Address).withdraw(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args chefAddress, poolId, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if stor0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if withdrawalFee * arg1 / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1 - (withdrawalFee * arg1 / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if stor0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(wantAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(wantAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x93f1a40b with:
            gas gas_remaining wei
           args poolId, address(sub_a5df7f13Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    emit Withdraw((2 * ext_call.return_data[0]));
}

function callReward() {
    mem[96] = 0xffcd426300000000000000000000000000000000000000000000000000000000
    mem[100] = poolId
    mem[132] = address(sub_a5df7f13Address)
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingTokens(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args poolId, address(sub_a5df7f13Address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 128
    _4 = mem[96 len 4], stor17
    _6 = uint32(stor15), mem[164 len 28]
    require uint32(stor15), mem[164 len 28] <= 4294967296
    require uint32(stor15), mem[164 len 28] + 32 <= return_data.size
    require return_data.size >= mem[uint32(stor15), mem[164 len 28] + 96] + uint32(stor15), mem[164 len 28] + 32 and mem[uint32(stor15), mem[164 len 28] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[uint32(stor15), mem[164 len 28] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _9 % 32:
        _219 = mem[192]
        if not _4:
            if mem[192] <= 0:
                if not eth.balance(this.address):
                    return 0
                if 45 * eth.balance(this.address) / eth.balance(this.address) != 45:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_9 + ceil32(return_data.size) + 229 len 31]
                if not 45 * eth.balance(this.address) / 1000:
                    return 0
                if callFee * 45 * eth.balance(this.address) / 1000 / 45 * eth.balance(this.address) / 1000 != callFee:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_9 + ceil32(return_data.size) + 229 len 31]
                return (callFee * 45 * eth.balance(this.address) / 1000 / 1000)
            if not outputToNativeRoute.length:
                if not eth.balance(this.address):
                    return 0
                if 45 * eth.balance(this.address) / eth.balance(this.address) != 45:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_9 + ceil32(return_data.size) + 229 len 31]
                if not 45 * eth.balance(this.address) / 1000:
                    return 0
                if callFee * 45 * eth.balance(this.address) / 1000 / 45 * eth.balance(this.address) / 1000 != callFee:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[_9 + ceil32(return_data.size) + 229 len 31]
                return (callFee * 45 * eth.balance(this.address) / 1000 / 1000)
            mem[_9 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_9 + ceil32(return_data.size) + 132] = _219
            mem[_9 + ceil32(return_data.size) + 164] = 64
            mem[_9 + ceil32(return_data.size) + 196] = sub_f0567d75.length
            if not sub_f0567d75.length:
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _219, 64, sub_f0567d75.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_9 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _9 + (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _246 = mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32
                require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 <= 4294967296
                require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 32 <= return_data.size
                require mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 128] <= 4294967296 and mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + (32 * mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 128]) + 32 <= return_data.size
                mem[_9 + (2 * ceil32(return_data.size)) + 128] = mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 128]
                _262 = mem[_9 + ceil32(return_data.size) + _246 + 128]
                mem[_9 + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_9 + ceil32(return_data.size) + _246 + 128])] = mem[_9 + ceil32(return_data.size) + _246 + 160 len floor32(mem[_9 + ceil32(return_data.size) + _246 + 128])]
                mem[64] = (32 * _262) + _9 + (2 * ceil32(return_data.size)) + 160
                require mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1 < mem[_9 + (2 * ceil32(return_data.size)) + 128]
                if mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address):
                    return 0
                if (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) != 45:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _262) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
                if not (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000:
                    return 0
                if callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _262) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
                mem[(32 * _262) + _9 + (2 * ceil32(return_data.size)) + 160] = callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / 1000
                return memory
                  from (32 * _262) + _9 + (2 * ceil32(return_data.size)) + 160
                   len 32
            mem[0] = 21
            mem[_9 + ceil32(return_data.size) + 228] = address(sub_f0567d75.field_0)
            idx = _9 + ceil32(return_data.size) + 228
            s = 0
            while _9 + ceil32(return_data.size) + (32 * sub_f0567d75.length) + 228 > idx + 32:
                mem[idx + 32] = sub_f0567d75[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _219, Array(len=sub_f0567d75.length, data=mem[_9 + ceil32(return_data.size) + 228 len 32 * sub_f0567d75.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_9 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _9 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _574 = mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32
            require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 <= 4294967296
            require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 32 <= return_data.size
            require mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 128] <= 4294967296 and mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + (32 * mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 128]) + 32 <= return_data.size
            mem[_9 + (2 * ceil32(return_data.size)) + 128] = mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _219) >> 32 + 128]
            _590 = mem[_9 + ceil32(return_data.size) + _574 + 128]
            mem[_9 + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_9 + ceil32(return_data.size) + _574 + 128])] = mem[_9 + ceil32(return_data.size) + _574 + 160 len floor32(mem[_9 + ceil32(return_data.size) + _574 + 128])]
            mem[64] = (32 * _590) + _9 + (2 * ceil32(return_data.size)) + 160
            require mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1 < mem[_9 + (2 * ceil32(return_data.size)) + 128]
            if mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath: addition overflow'
            if not mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _590) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
            if not (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _590) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
            mem[(32 * _590) + _9 + (2 * ceil32(return_data.size)) + 160] = callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _590) + _9 + (2 * ceil32(return_data.size)) + 160
               len 32
        mem[_9 + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_9 + ceil32(return_data.size) + 132] = _4
        mem[_9 + ceil32(return_data.size) + 164] = 64
        mem[_9 + ceil32(return_data.size) + 196] = outputToNativeRoute.length
        if not outputToNativeRoute.length:
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _4, 64, outputToNativeRoute.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_9 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _9 + (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _232 = mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32
            require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 <= 4294967296
            require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 32 <= return_data.size
            require mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 128] <= 4294967296 and mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + (32 * mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 128]) + 32 <= return_data.size
            mem[_9 + (2 * ceil32(return_data.size)) + 128] = mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 128]
            _248 = mem[_9 + ceil32(return_data.size) + _232 + 128]
            mem[_9 + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_9 + ceil32(return_data.size) + _232 + 128])] = mem[_9 + ceil32(return_data.size) + _232 + 160 len floor32(mem[_9 + ceil32(return_data.size) + _232 + 128])]
            mem[64] = (32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160
            require mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1 < mem[_9 + (2 * ceil32(return_data.size)) + 128]
            _439 = mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]
            if mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath: addition overflow'
            if _219 <= 0:
                if not mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address):
                    return 0
                if (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) != 45:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
                if not (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000:
                    return 0
                if callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160] = callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / 1000
                return memory
                  from (32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160
                   len 32
            if not outputToNativeRoute.length:
                if not mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address):
                    return 0
                if (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) != 45:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
                if not (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000:
                    return 0
                if callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160] = callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / 1000
                return memory
                  from (32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160
                   len 32
            mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 164] = _219
            mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 196] = 64
            mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 228] = sub_f0567d75.length
            if not sub_f0567d75.length:
                require ext_code.size(unirouterAddress)
                staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args _219, 64, sub_f0567d75.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160
                require return_data.size >= 32
                _468 = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32
                require mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 <= 4294967296
                require mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 32 <= return_data.size
                require mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160] <= 4294967296 and mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + (32 * mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]) + 32 <= return_data.size
                mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]
                _476 = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _468 + 160]
                mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _468 + 160])] = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _468 + 192 len floor32(mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _468 + 160])]
                mem[64] = (32 * _476) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192
                require mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160]
                if mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] + _439 + eth.balance(this.address):
                    return 0
                if (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] + _439 + eth.balance(this.address) != 45:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _476) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
                if not (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000:
                    return 0
                if callFee * (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000 != callFee:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * _476) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
                mem[(32 * _476) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000 / 1000
                return memory
                  from (32 * _476) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192
                   len 32
            mem[0] = 21
            mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 260] = address(sub_f0567d75.field_0)
            idx = (32 * _248) + _9 + (2 * ceil32(return_data.size)) + 260
            s = 0
            while (32 * _248) + _9 + (2 * ceil32(return_data.size)) + (32 * sub_f0567d75.length) + 260 > idx + 32:
                mem[idx + 32] = sub_f0567d75[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _219, Array(len=sub_f0567d75.length, data=mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 260 len 32 * sub_f0567d75.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _766 = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32
            require mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 <= 4294967296
            require mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 32 <= return_data.size
            require mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160] <= 4294967296 and mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + (32 * mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]) + 32 <= return_data.size
            mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]
            _780 = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _766 + 160]
            mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _766 + 160])] = mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _766 + 192 len floor32(mem[(32 * _248) + _9 + (2 * ceil32(return_data.size)) + _766 + 160])]
            mem[64] = (32 * _780) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160]
            if mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] + _439 + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] + _439 + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _780) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
            if not (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _780) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
            mem[(32 * _780) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[(32 * _248) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _439) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _780) + (32 * _248) + _9 + (4 * ceil32(return_data.size)) + 192
               len 32
        mem[0] = 20
        mem[_9 + ceil32(return_data.size) + 228] = address(outputToNativeRoute.field_0)
        idx = _9 + ceil32(return_data.size) + 228
        s = 0
        while _9 + ceil32(return_data.size) + (32 * outputToNativeRoute.length) + 228 > idx + 32:
            mem[idx + 32] = outputToNativeRoute[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _4, Array(len=outputToNativeRoute.length, data=mem[_9 + ceil32(return_data.size) + 228 len 32 * outputToNativeRoute.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_9 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _9 + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _576 = mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32
        require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 <= 4294967296
        require mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 32 <= return_data.size
        require mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 128] <= 4294967296 and mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + (32 * mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 128]) + 32 <= return_data.size
        mem[_9 + (2 * ceil32(return_data.size)) + 128] = mem[_9 + ceil32(return_data.size) + mem[_9 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _4) >> 32 + 128]
        _591 = mem[_9 + ceil32(return_data.size) + _576 + 128]
        mem[_9 + (2 * ceil32(return_data.size)) + 160 len floor32(mem[_9 + ceil32(return_data.size) + _576 + 128])] = mem[_9 + ceil32(return_data.size) + _576 + 160 len floor32(mem[_9 + ceil32(return_data.size) + _576 + 128])]
        mem[64] = (32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160
        require mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1 < mem[_9 + (2 * ceil32(return_data.size)) + 128]
        _762 = mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]
        if mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 'SafeMath: addition overflow'
        if _219 <= 0:
            if not mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
            if not (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160] = callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160
               len 32
        if not outputToNativeRoute.length:
            if not mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160] + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
            if not (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 261 len 31]
            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160] = callFee * (45 * mem[(32 * mem[_9 + (2 * ceil32(return_data.size)) + 128] - 1) + _9 + (2 * ceil32(return_data.size)) + 160]) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160
               len 32
        mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 164] = _219
        mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 196] = 64
        mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 228] = sub_f0567d75.length
        if not sub_f0567d75.length:
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _219, 64, sub_f0567d75.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _812 = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32
            require mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 <= 4294967296
            require mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 32 <= return_data.size
            require mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160] <= 4294967296 and mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + (32 * mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]) + 32 <= return_data.size
            mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]
            _820 = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _812 + 160]
            mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _812 + 160])] = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _812 + 192 len floor32(mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _812 + 160])]
            mem[64] = (32 * _820) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192
            require mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160]
            if mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] + _762 + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] + _762 + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _820) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
            if not (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _820) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
            mem[(32 * _820) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _820) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192
               len 32
        mem[0] = 21
        mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 260] = address(sub_f0567d75.field_0)
        idx = (32 * _591) + _9 + (2 * ceil32(return_data.size)) + 260
        s = 0
        while (32 * _591) + _9 + (2 * ceil32(return_data.size)) + (32 * sub_f0567d75.length) + 260 > idx + 32:
            mem[idx + 32] = sub_f0567d75[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _219, Array(len=sub_f0567d75.length, data=mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 260 len 32 * sub_f0567d75.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _990 = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32
        require mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 <= 4294967296
        require mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 32 <= return_data.size
        require mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160] <= 4294967296 and mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + (32 * mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]) + 32 <= return_data.size
        mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + 160 len 4], Mask(224, 32, _219) >> 32 + 160]
        _996 = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _990 + 160]
        mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192 len floor32(mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _990 + 160])] = mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _990 + 192 len floor32(mem[(32 * _591) + _9 + (2 * ceil32(return_data.size)) + _990 + 160])]
        mem[64] = (32 * _996) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192
        require mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1 < mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160]
        if mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] + _762 + eth.balance(this.address):
            return 0
        if (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] + _762 + eth.balance(this.address) != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _996) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
        if not (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000:
            return 0
        if callFee * (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _996) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 293 len 31]
        mem[(32 * _996) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[(32 * _591) + _9 + (4 * ceil32(return_data.size)) + 160] - 1) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192]) + (45 * _762) + (45 * eth.balance(this.address)) / 1000 / 1000
        return memory
          from (32 * _996) + (32 * _591) + _9 + (4 * ceil32(return_data.size)) + 192
           len 32
    mem[floor32(_9) + ceil32(return_data.size) + 128] = mem[floor32(_9) + ceil32(return_data.size) + -(_9 % 32) + 160 len _9 % 32]
    _221 = mem[192]
    if not _4:
        if mem[192] <= 0:
            if not eth.balance(this.address):
                return 0
            if 45 * eth.balance(this.address) / eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_9) + ceil32(return_data.size) + 261 len 31]
            if not 45 * eth.balance(this.address) / 1000:
                return 0
            if callFee * 45 * eth.balance(this.address) / 1000 / 45 * eth.balance(this.address) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_9) + ceil32(return_data.size) + 261 len 31]
            return (callFee * 45 * eth.balance(this.address) / 1000 / 1000)
        if not outputToNativeRoute.length:
            if not eth.balance(this.address):
                return 0
            if 45 * eth.balance(this.address) / eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_9) + ceil32(return_data.size) + 261 len 31]
            if not 45 * eth.balance(this.address) / 1000:
                return 0
            if callFee * 45 * eth.balance(this.address) / 1000 / 45 * eth.balance(this.address) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[floor32(_9) + ceil32(return_data.size) + 261 len 31]
            return (callFee * 45 * eth.balance(this.address) / 1000 / 1000)
        mem[floor32(_9) + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[floor32(_9) + ceil32(return_data.size) + 164] = _221
        mem[floor32(_9) + ceil32(return_data.size) + 196] = 64
        mem[floor32(_9) + ceil32(return_data.size) + 228] = sub_f0567d75.length
        if not sub_f0567d75.length:
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _221, 64, sub_f0567d75.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(_9) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(_9) + (2 * ceil32(return_data.size)) + 160
            require return_data.size >= 32
            _255 = mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32
            require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 <= 4294967296
            require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 32 <= return_data.size
            require mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 160] <= 4294967296 and mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + (32 * mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 160]) + 32 <= return_data.size
            mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 160]
            _268 = mem[floor32(_9) + ceil32(return_data.size) + _255 + 160]
            mem[floor32(_9) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _255 + 160])] = mem[floor32(_9) + ceil32(return_data.size) + _255 + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _255 + 160])]
            mem[64] = (32 * _268) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
            require mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1 < mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160]
            if mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath: addition overflow'
            if not mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _268) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
            if not (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _268) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
            mem[(32 * _268) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _268) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
               len 32
        mem[0] = 21
        mem[floor32(_9) + ceil32(return_data.size) + 260] = address(sub_f0567d75.field_0)
        idx = floor32(_9) + ceil32(return_data.size) + 260
        s = 0
        while floor32(_9) + ceil32(return_data.size) + (32 * sub_f0567d75.length) + 260 > idx + 32:
            mem[idx + 32] = sub_f0567d75[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _221, Array(len=sub_f0567d75.length, data=mem[floor32(_9) + ceil32(return_data.size) + 260 len 32 * sub_f0567d75.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_9) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_9) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _578 = mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32
        require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 <= 4294967296
        require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 32 <= return_data.size
        require mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 160] <= 4294967296 and mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + (32 * mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 160]) + 32 <= return_data.size
        mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _221) >> 32 + 160]
        _592 = mem[floor32(_9) + ceil32(return_data.size) + _578 + 160]
        mem[floor32(_9) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _578 + 160])] = mem[floor32(_9) + ceil32(return_data.size) + _578 + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _578 + 160])]
        mem[64] = (32 * _592) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
        require mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1 < mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160]
        if mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 'SafeMath: addition overflow'
        if not mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address):
            return 0
        if (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _592) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
        if not (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000:
            return 0
        if callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _592) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
        mem[(32 * _592) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / 1000
        return memory
          from (32 * _592) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
           len 32
    mem[floor32(_9) + ceil32(return_data.size) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[floor32(_9) + ceil32(return_data.size) + 164] = _4
    mem[floor32(_9) + ceil32(return_data.size) + 196] = 64
    mem[floor32(_9) + ceil32(return_data.size) + 228] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _4, 64, outputToNativeRoute.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_9) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_9) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _238 = mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32
        require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 <= 4294967296
        require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 32 <= return_data.size
        require mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 160] <= 4294967296 and mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + (32 * mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 160]) + 32 <= return_data.size
        mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 160]
        _257 = mem[floor32(_9) + ceil32(return_data.size) + _238 + 160]
        mem[floor32(_9) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _238 + 160])] = mem[floor32(_9) + ceil32(return_data.size) + _238 + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _238 + 160])]
        mem[64] = (32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
        require mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1 < mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160]
        _441 = mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]
        if mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 'SafeMath: addition overflow'
        if _221 <= 0:
            if not mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
            if not (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
               len 32
        if not outputToNativeRoute.length:
            if not mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
            if not (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
               len 32
        mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 196] = _221
        mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 228] = 64
        mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 260] = sub_f0567d75.length
        if not sub_f0567d75.length:
            require ext_code.size(unirouterAddress)
            staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _221, 64, sub_f0567d75.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _472 = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32
            require mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 <= 4294967296
            require mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 32 <= return_data.size
            require mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192] <= 4294967296 and mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + (32 * mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]) + 32 <= return_data.size
            mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]
            _477 = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _472 + 192]
            mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _472 + 192])] = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _472 + 224 len floor32(mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _472 + 192])]
            mem[64] = (32 * _477) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
            require mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192]
            if mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _441 + eth.balance(this.address):
                return 0
            if (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _441 + eth.balance(this.address) != 45:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _477) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
            if not (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000:
                return 0
            if callFee * (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000 != callFee:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _477) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
            mem[(32 * _477) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] = callFee * (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000 / 1000
            return memory
              from (32 * _477) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
               len 32
        mem[0] = 21
        mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 292] = address(sub_f0567d75.field_0)
        idx = (32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 292
        s = 0
        while (32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + (32 * sub_f0567d75.length) + 292 > idx + 32:
            mem[idx + 32] = sub_f0567d75[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _221, Array(len=sub_f0567d75.length, data=mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 292 len 32 * sub_f0567d75.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _768 = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32
        require mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 <= 4294967296
        require mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 32 <= return_data.size
        require mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192] <= 4294967296 and mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + (32 * mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]) + 32 <= return_data.size
        mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]
        _781 = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _768 + 192]
        mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _768 + 192])] = mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _768 + 224 len floor32(mem[(32 * _257) + floor32(_9) + (2 * ceil32(return_data.size)) + _768 + 192])]
        mem[64] = (32 * _781) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
        require mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192]
        if mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _441 + eth.balance(this.address):
            return 0
        if (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _441 + eth.balance(this.address) != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _781) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
        if not (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000:
            return 0
        if callFee * (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _781) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
        mem[(32 * _781) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] = callFee * (45 * mem[(32 * mem[(32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _441) + (45 * eth.balance(this.address)) / 1000 / 1000
        return memory
          from (32 * _781) + (32 * _257) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
           len 32
    mem[0] = 20
    mem[floor32(_9) + ceil32(return_data.size) + 260] = address(outputToNativeRoute.field_0)
    idx = floor32(_9) + ceil32(return_data.size) + 260
    s = 0
    while floor32(_9) + ceil32(return_data.size) + (32 * outputToNativeRoute.length) + 260 > idx + 32:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _4, Array(len=outputToNativeRoute.length, data=mem[floor32(_9) + ceil32(return_data.size) + 260 len 32 * outputToNativeRoute.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_9) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_9) + (2 * ceil32(return_data.size)) + 160
    require return_data.size >= 32
    _580 = mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32
    require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 <= 4294967296
    require mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 32 <= return_data.size
    require mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 160] <= 4294967296 and mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + (32 * mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 160]) + 32 <= return_data.size
    mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_9) + ceil32(return_data.size) + mem[floor32(_9) + ceil32(return_data.size) + 160 len 4], Mask(224, 32, _4) >> 32 + 160]
    _593 = mem[floor32(_9) + ceil32(return_data.size) + _580 + 160]
    mem[floor32(_9) + (2 * ceil32(return_data.size)) + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _580 + 160])] = mem[floor32(_9) + ceil32(return_data.size) + _580 + 192 len floor32(mem[floor32(_9) + ceil32(return_data.size) + _580 + 160])]
    mem[64] = (32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
    require mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1 < mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160]
    _765 = mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]
    if mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'SafeMath: addition overflow'
    if _221 <= 0:
        if not mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address):
            return 0
        if (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
        if not (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000:
            return 0
        if callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / 1000
        return memory
          from (32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
           len 32
    if not outputToNativeRoute.length:
        if not mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address):
            return 0
        if (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] + eth.balance(this.address) != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
        if not (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000:
            return 0
        if callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 293 len 31]
        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = callFee * (45 * mem[(32 * mem[floor32(_9) + (2 * ceil32(return_data.size)) + 160] - 1) + floor32(_9) + (2 * ceil32(return_data.size)) + 192]) + (45 * eth.balance(this.address)) / 1000 / 1000
        return memory
          from (32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192
           len 32
    mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 196] = _221
    mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 228] = 64
    mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 260] = sub_f0567d75.length
    if not sub_f0567d75.length:
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _221, 64, sub_f0567d75.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _816 = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32
        require mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 <= 4294967296
        require mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 32 <= return_data.size
        require mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192] <= 4294967296 and mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + (32 * mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]) + 32 <= return_data.size
        mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]
        _821 = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _816 + 192]
        mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _816 + 192])] = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _816 + 224 len floor32(mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _816 + 192])]
        mem[64] = (32 * _821) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
        require mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192]
        if mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _765 + eth.balance(this.address):
            return 0
        if (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _765 + eth.balance(this.address) != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _821) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
        if not (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000:
            return 0
        if callFee * (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _821) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
        mem[(32 * _821) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] = callFee * (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000 / 1000
        return memory
          from (32 * _821) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
           len 32
    mem[0] = 21
    mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 292] = address(sub_f0567d75.field_0)
    idx = (32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 292
    s = 0
    while (32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + (32 * sub_f0567d75.length) + 292 > idx + 32:
        mem[idx + 32] = sub_f0567d75[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _221, Array(len=sub_f0567d75.length, data=mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 292 len 32 * sub_f0567d75.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _992 = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32
    require mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 <= 4294967296
    require mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 32 <= return_data.size
    require mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192] <= 4294967296 and mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + (32 * mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]) + 32 <= return_data.size
    mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, _221) >> 32 + 192]
    _997 = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _992 + 192]
    mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224 len floor32(mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _992 + 192])] = mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _992 + 224 len floor32(mem[(32 * _593) + floor32(_9) + (2 * ceil32(return_data.size)) + _992 + 192])]
    mem[64] = (32 * _997) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
    require mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192]
    if mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _765 + eth.balance(this.address):
        return 0
    if (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] + _765 + eth.balance(this.address) != 45:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _997) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
    if not (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000:
        return 0
    if callFee * (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000 / (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000 != callFee:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _997) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 325 len 31]
    mem[(32 * _997) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224] = callFee * (45 * mem[(32 * mem[(32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224]) + (45 * _765) + (45 * eth.balance(this.address)) / 1000 / 1000
    return memory
      from (32 * _997) + (32 * _593) + floor32(_9) + (4 * ceil32(return_data.size)) + 224
       len 32
}



}
