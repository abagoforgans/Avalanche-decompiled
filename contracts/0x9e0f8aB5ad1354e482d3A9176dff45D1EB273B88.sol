contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - panic()
#  - beforeDeposit()
#  - harvestWithCallFeeRecipient(address arg1)
#  - pause()
#  - managerHarvest()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 paused; offset 160
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
address nativeAddress;
address outputAddress;
address wantAddress;
address lpToken0Address;
address lpToken1Address;
address chefAddress;
uint256 poolId;
uint8 harvestOnDeposit;
uint256 lastHarvest;
array of struct outputToNativeRoute;
array of struct nativeToLp0Route;
array of struct nativeToLp1Route;

function native() payable {
    return nativeAddress
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

function poolId() payable {
    return poolId
}

function paused() payable {
    return bool(paused)
}

function lpToken0() payable {
    return lpToken0Address
}

function lpToken1() payable {
    return lpToken1Address
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

function nativeToLp1Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToLp1Route.length
    return nativeToLp1Route[arg1].field_0
}

function nativeToLp0Route(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToLp0Route.length
    return nativeToLp0Route[arg1].field_0
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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    strategistAddress = arg1
}

function setUnirouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    unirouterAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(vaultAddress) = arg1
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
        revert with 0, 'Ownable: caller is not the owner'
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
    beefyFee = -callFee + 888
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

function depositFee() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    return ext_call.return_data[128]
}

function balanceOfPool() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0]
}

function rewardsAvailable() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingSing(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
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
    if not harvestOnDeposit:
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    staticcall chefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(chefAddress)
    call chefAddress.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
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
    call wantAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function nativeToLp1() payable {
    if not nativeToLp1Route.length:
        mem[(32 * nativeToLp1Route.length) + 128] = 32
        mem[(32 * nativeToLp1Route.length) + 160] = nativeToLp1Route.length
        mem[(32 * nativeToLp1Route.length) + 192 len floor32(nativeToLp1Route.length)] = mem[128 len floor32(nativeToLp1Route.length)]
        return memory
          from (32 * nativeToLp1Route.length) + 128
           len (96 * nativeToLp1Route.length) + 64
    mem[128] = address(nativeToLp1Route.field_0)
    idx = 128
    s = 0
    while (32 * nativeToLp1Route.length) + 96 > idx:
        mem[idx + 32] = nativeToLp1Route[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * nativeToLp1Route.length) + 192 len floor32(nativeToLp1Route.length)] = mem[128 len floor32(nativeToLp1Route.length)]
    return Array(len=nativeToLp1Route.length, data=mem[128 len floor32(nativeToLp1Route.length)], mem[(32 * nativeToLp1Route.length) + floor32(nativeToLp1Route.length) + 192 len (32 * nativeToLp1Route.length) - floor32(nativeToLp1Route.length)]), 
}

function nativeToLp0() payable {
    if not nativeToLp0Route.length:
        mem[(32 * nativeToLp0Route.length) + 128] = 32
        mem[(32 * nativeToLp0Route.length) + 160] = nativeToLp0Route.length
        mem[(32 * nativeToLp0Route.length) + 192 len floor32(nativeToLp0Route.length)] = mem[128 len floor32(nativeToLp0Route.length)]
        return memory
          from (32 * nativeToLp0Route.length) + 128
           len (96 * nativeToLp0Route.length) + 64
    mem[128] = address(nativeToLp0Route.field_0)
    idx = 128
    s = 0
    while (32 * nativeToLp0Route.length) + 96 > idx:
        mem[idx + 32] = nativeToLp0Route[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * nativeToLp0Route.length) + 192 len floor32(nativeToLp0Route.length)] = mem[128 len floor32(nativeToLp0Route.length)]
    return Array(len=nativeToLp0Route.length, data=mem[128 len floor32(nativeToLp0Route.length)], mem[(32 * nativeToLp0Route.length) + floor32(nativeToLp0Route.length) + 192 len (32 * nativeToLp0Route.length) - floor32(nativeToLp0Route.length)]), 
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
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(chefAddress)
    staticcall chefAddress.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if ext_call.return_data[128]:
        revert with 0, 'Deposit Fee Enabled'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(chefAddress)
        call chefAddress.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(chefAddress)
        staticcall chefAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args poolId, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
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

function callReward() payable {
    require ext_code.size(chefAddress)
    staticcall chefAddress.pendingSing(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = ext_call.return_data[0]
    mem[132] = 64
    mem[164] = outputToNativeRoute.length
    if not outputToNativeRoute.length:
        require ext_code.size(unirouterAddress)
        staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], 64, outputToNativeRoute.length
        if not ext_call.success:
            return 0
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _9 = mem[96 len 4], ext_call.return_data[0 len 28]
        require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
        _12 = mem[_9 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_9 + 96])] = mem[_9 + 128 len floor32(mem[_9 + 96])]
        mem[64] = (32 * _12) + ceil32(return_data.size) + 128
        require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
        if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
            return 0
        require mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _12) + ceil32(return_data.size) + 229 len 31]
        if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
            return 0
        require 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000
        if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _12) + ceil32(return_data.size) + 229 len 31]
        mem[(32 * _12) + ceil32(return_data.size) + 128] = 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 1000
        return memory
          from (32 * _12) + ceil32(return_data.size) + 128
           len 32
    mem[0] = 18
    mem[196] = address(outputToNativeRoute.field_0)
    idx = 196
    s = 0
    while (32 * outputToNativeRoute.length) + 196 > idx + 32:
        mem[idx + 32] = outputToNativeRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(unirouterAddress)
    staticcall unirouterAddress.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=outputToNativeRoute.length, data=mem[196 len 32 * outputToNativeRoute.length])
    if not ext_call.success:
        return 0
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _47 = mem[96 len 4], ext_call.return_data[0 len 28]
    require mem[96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96] <= 4294967296 and mem[96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], ext_call.return_data[0 len 28] + 96]
    _50 = mem[_47 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_47 + 96])] = mem[_47 + 128 len floor32(mem[_47 + 96])]
    mem[64] = (32 * _50) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if not mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        return 0
    require mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] != 45:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _50) + ceil32(return_data.size) + 229 len 31]
    if not 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000:
        return 0
    require 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000
    if 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 != callFee:
        revert with 0, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _50) + ceil32(return_data.size) + 229 len 31]
    mem[(32 * _50) + ceil32(return_data.size) + 128] = 45 * mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128] / 1000 * callFee / 1000
    return memory
      from (32 * _50) + ceil32(return_data.size) + 128
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
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        require arg1
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000)
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(chefAddress)
        call chefAddress.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolId, arg1 - ext_call.return_data[0]
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
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        require arg1
                        if arg1 * withdrawalFee / arg1 != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg1 * withdrawalFee / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), arg1 - (arg1 * withdrawalFee / 10000)
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                mem[324 len 0] = 0
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                    if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
            else:
                if paused:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                    mem[324 len 0] = 0
                    call wantAddress with:
                       funct uint32(stor4)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if not ext_call.return_data[0]:
                        if 0 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0 len 28]
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0]
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        require ext_call.return_data[0]
                        if ext_call.return_data[0] * withdrawalFee / ext_call.return_data[0] != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] * withdrawalFee / 10000 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)) >> 32
                        mem[324 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor4)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), 
                                            Mask(224, 0, stor4),
                                            uint32(stor4),
                                            ext_call.return_data[0] - (ext_call.return_data[0] * withdrawalFee / 10000)
                            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor4):
                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(chefAddress)
    staticcall chefAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolId, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
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