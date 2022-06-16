contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - panic()
#  - pause()
#
const sub_c3534639(?) = 1000

const MAX_CALL_FEE = 0

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 0

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 0


uint8 stor0; offset 160
address owner;
address keeperAddress;
address strategistAddress;
address unirouterAddress;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address treasuryAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
uint256 treasuryFee;
address nativeAddress;
address outputAddress;
address wantAddress;
address depositTokenAddress;
address chefAddress;
address curveSwapAddress;
address poolAddress;
uint256 poolSize;
uint256 depositIndex;
uint8 sub_b503ae00;
uint8 harvestOnDeposit; offset 8
uint8 sub_53a362fb; offset 16
uint256 stor19; offset 16
uint256 stor19; offset 8
uint256 lastHarvest;
array of struct sub_277e5cfd;
array of struct outputToNativeRoute;
array of struct sub_6b30d843;

function native() payable {
    return nativeAddress
}

function pool() payable {
    return poolAddress
}

function want() payable {
    return wantAddress
}

function chef() payable {
    return chefAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return unirouterAddress
}

function sub_277e5cfd(?) payable {
    return sub_277e5cfd[0 len sub_277e5cfd.length].field_0
}

function poolSize() payable {
    return poolSize
}

function sub_53a362fb(?) payable {
    return bool(sub_53a362fb)
}

function paused() payable {
    return bool(stor0)
}

function treasury() payable {
    return treasuryAddress
}

function sub_6b30d843(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_6b30d843.length
    return sub_6b30d843[arg1].field_0
}

function depositIndex() payable {
    return depositIndex
}

function harvestOnDeposit() payable {
    return bool(harvestOnDeposit)
}

function withdrawalFee() payable {
    return withdrawalFee
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function keeper() payable {
    return keeperAddress
}

function sub_b503ae00(?) payable {
    return bool(sub_b503ae00)
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function depositToken() payable {
    return depositTokenAddress
}

function treasuryFee() payable {
    return treasuryFee
}

function beefyFee() payable {
    return beefyFee
}

function curveSwap() payable {
    return curveSwapAddress
}

function lastHarvest() payable {
    return lastHarvest
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    treasuryAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    Mask(248, 0, stor19.field_8) = Mask(248, 0, arg1)
}

function setHarvestOnWithdraw(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    Mask(240, 0, stor19.field_16) = Mask(240, 0, arg1)
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 1000:
        revert with 0, '!cap'
    treasuryFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 1000
}

function balanceOfPool() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function sub_59e79138(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    sub_277e5cfd.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        sub_277e5cfd[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while sub_277e5cfd.length + 31 / 32 > idx:
        sub_277e5cfd[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_6a1833a9(?) payable {
    if sub_6b30d843.length:
        mem[128] = address(sub_6b30d843.field_0)
        if (32 * sub_6b30d843.length) + 32 > 64:
            mem[160] = address(sub_6b30d843.field_256)
            idx = 160
            s = 1
            while (32 * sub_6b30d843.length) + 96 > idx:
                mem[idx + 32] = sub_6b30d843[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_6b30d843.length) + 128] = 32
    mem[(32 * sub_6b30d843.length) + 160] = sub_6b30d843.length
    mem[(32 * sub_6b30d843.length) + 192 len floor32(sub_6b30d843.length)] = mem[128 len floor32(sub_6b30d843.length)]
    return memory
      from (32 * sub_6b30d843.length) + 128
       len (96 * sub_6b30d843.length) + 64
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(chefAddress)
    call chefAddress.exit() with:
         gas gas_remaining wei
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

function outputToNative() payable {
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

function deposit() payable {
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
        require ext_code.size(chefAddress)
        call chefAddress.stake(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(chefAddress)
        staticcall chefAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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

function inCaseTokensGetStuck(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_066de3e3(?) payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    require ext_code.size(chefAddress)
    call chefAddress.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function managerHarvest() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    require ext_code.size(chefAddress)
    call chefAddress.0x6c3f3ab3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(outputAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call outputAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function rewardsAvailable() payable {
    mem[128] = uint256(sub_277e5cfd.field_0)
    idx = 128
    s = 0
    while sub_277e5cfd.length + 96 > idx:
        mem[idx + 32] = sub_277e5cfd[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_277e5cfd.length) + 128] = 17
    mem[ceil32(sub_277e5cfd.length) + 224 len floor32(sub_277e5cfd.length)] = mem[128 len floor32(sub_277e5cfd.length)]
    mem[ceil32(sub_277e5cfd.length) + floor32(sub_277e5cfd.length) + 224] = 256^(-sub_277e5cfd.length % 32 + 32) - 1 and mem[ceil32(sub_277e5cfd.length) + floor32(sub_277e5cfd.length) + 224] or mem[floor32(sub_277e5cfd.length) + 128] and !(256^(-sub_277e5cfd.length % 32 + 32) - 1)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 224 len 0] = None
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 239 len 17] = Mask(136, 0, '(uint256,address)')
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 277] = this.address
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 241] = 36
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 309 len floor32(mem[ceil32(sub_277e5cfd.length) + 192])] = mem[ceil32(sub_277e5cfd.length) + 224 len floor32(mem[ceil32(sub_277e5cfd.length) + 192])]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 309] = 256^(-(mem[ceil32(sub_277e5cfd.length) + 192] % 32) + 32) - 1 and mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 309] or mem[ceil32(sub_277e5cfd.length) + floor32(mem[ceil32(sub_277e5cfd.length) + 192]) + 224] and !(256^(-(mem[ceil32(sub_277e5cfd.length) + 192] % 32) + 32) - 1)
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 273 len 4] = Mask(32, 224, sha3(mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 309 len mem[ceil32(sub_277e5cfd.length) + 192]])) >> 224
    if not ext_code.size(chefAddress):
        revert with 0, 
                    32,
                    36,
                    0x72416464726573733a207374617469632063616c6c20746f206e6f6e2d636f6e74726163,
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 509 len 28]
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 465 len 4] = 0
    staticcall chefAddress.mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 273 len 4] with:
            gas gas_remaining wei
           args Mask(224, 32, this.address) >> 32, mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 4]
    if not return_data.size:
        if not ext_call.success:
            if sub_277e5cfd.length:
                revert with memory
                  from 128
                   len sub_277e5cfd.length
            revert with 0, 
                        32,
                        37,
                        0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65,
                        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 378 len 27],
                        mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 432 len 5]
        require sub_277e5cfd.length >= 32
        return memory
          from 128
           len 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 
                    32,
                    37,
                    0x6c416464726573733a206c6f772d6c6576656c207374617469632063616c6c206661696c65,
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 378 len 27],
                    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 432 len 5]
    require return_data.size >= 32
    mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 406] = mem[ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + 437 len 28], 0
    return memory
      from ceil32(sub_277e5cfd.length) + sub_277e5cfd.length + ceil32(return_data.size) + 406
       len 32
}

function withdraw(uint256 arg1) payable {
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
    if ext_call.return_data[0] < arg1:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(chefAddress)
        call chefAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if ext_call.return_data[0] <= arg1:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
        call wantAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
        call wantAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor4):
                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(chefAddress)
    staticcall chefAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function harvest() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(chefAddress)
    call chefAddress.0x6c3f3ab3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(outputAddress)
    staticcall outputAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if outputAddress != depositTokenAddress:
            require ext_code.size(outputAddress)
            staticcall outputAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = ext_call.return_data[0]
            mem[132] = 0
            mem[196] = this.address
            mem[228] = block.timestamp
            mem[164] = 160
            mem[260] = sub_6b30d843.length
            if not sub_6b30d843.length:
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_6b30d843.length
            else:
                mem[0] = 23
                mem[292] = address(sub_6b30d843.field_0)
                idx = 292
                s = 0
                while (32 * sub_6b30d843.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_6b30d843[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(unirouterAddress)
                call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_6b30d843.length, mem[292 len 32 * sub_6b30d843.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        require ext_code.size(depositTokenAddress)
        staticcall depositTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 == poolSize:
            require depositIndex < 2
            require ext_code.size(poolAddress)
            call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args call.data[calldata.size len 64], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if 3 == poolSize:
                require depositIndex < 3
                require ext_code.size(poolAddress)
                if not sub_b503ae00:
                    call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                else:
                    call poolAddress.0xa3185179 with:
                         gas gas_remaining wei
                        args wantAddress, call.data[calldata.size len 96], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if poolSize != 4:
                    if 5 == poolSize:
                        require depositIndex < 5
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size len 160], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require depositIndex < 4
                    if not sub_b503ae00:
                        require ext_code.size(curveSwapAddress)
                        call curveSwapAddress.add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args poolAddress, call.data[calldata.size len 128], 0
                    else:
                        require ext_code.size(poolAddress)
                        call poolAddress.add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
            require ext_code.size(chefAddress)
            call chefAddress.stake(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(chefAddress)
            staticcall chefAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
        lastHarvest = block.timestamp
        require ext_code.size(chefAddress)
        staticcall chefAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        emit StratHarvest(ext_call.return_data[0], 2 * ext_call.return_data[0], msg.sender);
}

function beforeWithdraw() payable {
    if sub_53a362fb:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!vault'
        if stor0:
            revert with 0, 'Pausable: paused'
        require ext_code.size(chefAddress)
        call chefAddress.0x6c3f3ab3 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if outputAddress != depositTokenAddress:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_6b30d843.length
                if not sub_6b30d843.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_6b30d843.length
                else:
                    mem[0] = 23
                    mem[292] = address(sub_6b30d843.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_6b30d843.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_6b30d843[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_6b30d843.length, mem[292 len 32 * sub_6b30d843.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(poolAddress)
                call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args call.data[calldata.size len 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == poolSize:
                    require depositIndex < 3
                    require ext_code.size(poolAddress)
                    if not sub_b503ae00:
                        call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                    else:
                        call poolAddress.0xa3185179 with:
                             gas gas_remaining wei
                            args wantAddress, call.data[calldata.size len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 4:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 4
                        if not sub_b503ae00:
                            require ext_code.size(curveSwapAddress)
                            call curveSwapAddress.add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args poolAddress, call.data[calldata.size len 128], 0
                        else:
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                require ext_code.size(chefAddress)
                call chefAddress.stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(chefAddress)
                staticcall chefAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
            lastHarvest = block.timestamp
            require ext_code.size(chefAddress)
            staticcall chefAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            emit StratHarvest(ext_call.return_data[0], 2 * ext_call.return_data[0], msg.sender);
}

function beforeDeposit() payable {
    if harvestOnDeposit:
        if address(vaultAddress) != msg.sender:
            revert with 0, '!vault'
        if stor0:
            revert with 0, 'Pausable: paused'
        require ext_code.size(chefAddress)
        call chefAddress.0x6c3f3ab3 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(outputAddress)
        staticcall outputAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if outputAddress != depositTokenAddress:
                require ext_code.size(outputAddress)
                staticcall outputAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[100] = ext_call.return_data[0]
                mem[132] = 0
                mem[196] = this.address
                mem[228] = block.timestamp
                mem[164] = 160
                mem[260] = sub_6b30d843.length
                if not sub_6b30d843.length:
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_6b30d843.length
                else:
                    mem[0] = 23
                    mem[292] = address(sub_6b30d843.field_0)
                    idx = 292
                    s = 0
                    while (32 * sub_6b30d843.length) + 292 > idx + 32:
                        mem[idx + 32] = sub_6b30d843[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(unirouterAddress)
                    call unirouterAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, ext_call.return_data[28 len 4], 0, 160, this.address, block.timestamp, sub_6b30d843.length, mem[292 len 32 * sub_6b30d843.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 == poolSize:
                require depositIndex < 2
                require ext_code.size(poolAddress)
                call poolAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args call.data[calldata.size len 64], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 3 == poolSize:
                    require depositIndex < 3
                    require ext_code.size(poolAddress)
                    if not sub_b503ae00:
                        call poolAddress.add_liquidity(uint256[3] arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args call.data[calldata.size], call.data[calldata.size + 32 len 64], 0
                    else:
                        call poolAddress.0xa3185179 with:
                             gas gas_remaining wei
                            args wantAddress, call.data[calldata.size len 96], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if poolSize != 4:
                        if 5 == poolSize:
                            require depositIndex < 5
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(uint256[5] arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args call.data[calldata.size len 160], 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require depositIndex < 4
                        if not sub_b503ae00:
                            require ext_code.size(curveSwapAddress)
                            call curveSwapAddress.add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args poolAddress, call.data[calldata.size len 128], 0
                        else:
                            require ext_code.size(poolAddress)
                            call poolAddress.add_liquidity(address arg1, uint256[4] arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args wantAddress, call.data[calldata.size], call.data[calldata.size + 32 len 96], 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
                require ext_code.size(chefAddress)
                call chefAddress.stake(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(chefAddress)
                staticcall chefAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
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
            lastHarvest = block.timestamp
            require ext_code.size(chefAddress)
            staticcall chefAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            emit StratHarvest(ext_call.return_data[0], 2 * ext_call.return_data[0], msg.sender);
}



}
