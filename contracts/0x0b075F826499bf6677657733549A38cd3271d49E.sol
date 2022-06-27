contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - unpause()
#  - harvest()
#  - beforeDeposit()
#  - managerHarvest()
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
uint32 stor3;
address unirouterAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address nativeAddress;
address outputAddress;
address wantAddress;
uint32 stor12;
address rewardPoolAddress;
uint256 stor12;
array of struct outputToNativeRoute;
array of struct outputToWantRoute;
uint8 harvestOnDeposit;
uint256 lastHarvest;

function native() payable {
    return nativeAddress
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function unirouter() payable {
    return address(unirouterAddress)
}

function paused() payable {
    return bool(stor0)
}

function rewardPool() payable {
    return address(rewardPoolAddress)
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

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function keeper() payable {
    return keeperAddress
}

function outputToNativeRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToNativeRoute.length
    return outputToNativeRoute[arg1].field_0
}

function beefyFee() payable {
    return beefyFee
}

function outputToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWantRoute.length
    return outputToWantRoute[arg1].field_0
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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(vaultAddress) = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(unirouterAddress) = arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    keeperAddress = arg1
}

function setBeefyFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    beefyFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
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

function balanceOfPool() payable {
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).getUserInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, outputAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function rewardsAvailable() payable {
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).pendingReward(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, outputAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if bool(uint8(arg1)) != 1:
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function transferOwnership(address arg1) payable {
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

function balanceOf() payable {
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).getUserInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, outputAddress
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

function outputToWant() payable {
    if outputToWantRoute.length:
        mem[128] = address(outputToWantRoute.field_0)
        if (32 * outputToWantRoute.length) + 32 > 64:
            mem[160] = address(outputToWantRoute.field_256)
            idx = 160
            s = 1
            while (32 * outputToWantRoute.length) + 96 > idx:
                mem[idx + 32] = outputToWantRoute[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * outputToWantRoute.length) + 128] = 32
    mem[(32 * outputToWantRoute.length) + 160] = outputToWantRoute.length
    mem[(32 * outputToWantRoute.length) + 192 len floor32(outputToWantRoute.length)] = mem[128 len floor32(outputToWantRoute.length)]
    return memory
      from (32 * outputToWantRoute.length) + 128
       len (96 * outputToWantRoute.length) + 64
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

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).getUserInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, outputAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(rewardPoolAddress))
    call address(rewardPoolAddress).0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
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
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(rewardPoolAddress))
        staticcall address(rewardPoolAddress).getUserInfo(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, outputAddress
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

function pause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
    call wantAddress with:
       funct uint32(stor12)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
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
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function panic() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
        if owner != msg.sender:
            if keeperAddress != msg.sender:
                revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
    call wantAddress with:
       funct uint32(stor12)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).emergencyWithdraw() with:
             gas gas_remaining wei
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
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(outputAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0
        call outputAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor12):
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).emergencyWithdraw() with:
                 gas gas_remaining wei
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).emergencyWithdraw() with:
                 gas gas_remaining wei
                args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xdb2e21bc00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        require ext_code.size(address(rewardPoolAddress))
        call address(rewardPoolAddress).0x2e1a7d4d with:
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
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).getUserInfo(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, outputAddress
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



}
