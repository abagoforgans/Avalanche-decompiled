contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - beforeDeposit()
#  - harvestWithCallFeeRecipient(address arg1)
#  - managerHarvest()
#
const MAX_CALL_FEE = 111

const WITHDRAWAL_MAX = 10000

const STRATEGIST_FEE = 112

const INTEREST_RATE_MODE = 2

const BORROW_DEPTH_MAX = 10

const MAX_FEE = 1000

const WITHDRAWAL_FEE_CAP = 50


uint8 stor0; offset 160
address owner;
address strategistAddress;
uint32 stor2;
address unirouterAddress;
uint256 stor2;
uint32 stor3;
address vaultAddress;
uint256 stor3;
address pltFeeRecipientAddress;
mapping of uint8 stor5;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
address nativeAddress;
uint32 stor10;
address wantAddress;
address aTokenAddress;
address varDebtTokenAddress;
address dataProviderAddress;
uint32 stor14;
address lendingPoolAddress;
uint256 stor14;
address incentivesControllerAddress;
array of struct nativeToWantRoute;
uint8 harvestOnDeposit;
uint256 lastHarvest;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;

function borrowRateMax() payable {
    return borrowRateMax
}

function native() payable {
    return nativeAddress
}

function want() payable {
    return address(wantAddress)
}

function strategist() payable {
    return strategistAddress
}

function minLeverage() payable {
    return minLeverage
}

function unirouter() payable {
    return address(unirouterAddress)
}

function varDebtToken() payable {
    return varDebtTokenAddress
}

function nativeToWantRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nativeToWantRoute.length
    return nativeToWantRoute[arg1].field_0
}

function paused() payable {
    return bool(stor0)
}

function reserves() payable {
    return reserves
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

function borrowDepth() payable {
    return borrowDepth
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function aToken() payable {
    return aTokenAddress
}

function lendingPool() payable {
    return address(lendingPoolAddress)
}

function incentivesController() payable {
    return incentivesControllerAddress
}

function dataProvider() payable {
    return dataProviderAddress
}

function borrowRate() payable {
    return borrowRate
}

function pltFeeRecipient() payable {
    return pltFeeRecipientAddress
}

function beefyFee() payable {
    return beefyFee
}

function lastHarvest() payable {
    return lastHarvest
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

function addOrRemoveFromWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!manager'
    stor5[address(arg1)] = uint8(arg2)
}

function setPLTFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    pltFeeRecipientAddress = arg1
}

function setWithdrawalFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!manager'
    if arg1 > 50:
        revert with 0, '!cap'
    withdrawalFee = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!manager'
    if arg1 > 111:
        revert with 0, '!cap'
    callFee = arg1
    beefyFee = -arg1 + 888
}

function setHarvestOnDeposit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!manager'
    harvestOnDeposit = uint8(arg1)
    if owner != msg.sender:
        revert with 0, '!manager'
    if not uint8(arg1):
        withdrawalFee = 10
    else:
        withdrawalFee = 0
}

function balanceOfWant() payable {
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function rewardsAvailable() payable {
    mem[292 len 0] = None
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0xae93dbf3 with:
            gas gas_remaining wei
           args Array(len=2, data=mem[292 len 64]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function userReserves() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    return ext_call.return_data[0], ext_call.return_data[64]
}

function availableWant() payable {
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - reserves)
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

function balanceOfPool() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if ext_call.return_data[64] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - ext_call.return_data[64])
}

function userAccountData() payable {
    require ext_code.size(address(lendingPoolAddress))
    staticcall address(lendingPoolAddress).getUserAccountData(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function callReward() payable {
    mem[292 len 0] = None
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0xae93dbf3 with:
            gas gas_remaining wei
           args Array(len=2, data=mem[292 len 64]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 45 * ext_call.return_data[0] / ext_call.return_data[0] != 45:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    if not 45 * ext_call.return_data[0] / 1000:
        return 0
    if callFee * 45 * ext_call.return_data[0] / 1000 / 45 * ext_call.return_data[0] / 1000 != callFee:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
    return (callFee * 45 * ext_call.return_data[0] / 1000 / 1000)
}

function balanceOf() payable {
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if ext_call.return_data[64] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) - ext_call.return_data[64] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * ext_call.return_data[0]) - ext_call.return_data[64])
}

function nativeToWant() payable {
    if not nativeToWantRoute.length:
        mem[(32 * nativeToWantRoute.length) + 128] = 32
        mem[(32 * nativeToWantRoute.length) + 160] = nativeToWantRoute.length
        mem[(32 * nativeToWantRoute.length) + 192 len floor32(nativeToWantRoute.length)] = mem[128 len floor32(nativeToWantRoute.length)]
        return memory
          from (32 * nativeToWantRoute.length) + 128
           len (96 * nativeToWantRoute.length) + 64
    mem[128] = address(nativeToWantRoute.field_0)
    idx = 128
    s = 0
    while (32 * nativeToWantRoute.length) + 96 > idx:
        mem[idx + 32] = nativeToWantRoute[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * nativeToWantRoute.length) + 192 len floor32(nativeToWantRoute.length)] = mem[128 len floor32(nativeToWantRoute.length)]
    return Array(len=nativeToWantRoute.length, data=mem[128 len floor32(nativeToWantRoute.length)], mem[(32 * nativeToWantRoute.length) + floor32(nativeToWantRoute.length) + 192 len (32 * nativeToWantRoute.length) - floor32(nativeToWantRoute.length)]), 
}

function deposit() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves:
        if ext_call.return_data[0] - reserves >= minLeverage:
            idx = 0
            s = mem[96] - reserves
            while idx < borrowDepth:
                mem[96] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                mem[100] = address(wantAddress)
                mem[132] = s
                mem[164] = this.address
                mem[196] = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                     gas gas_remaining wei
                    args address(wantAddress), s, this.address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not s:
                    idx = idx + 1
                    s = 0
                    continue 
                if borrowRate * s / s != borrowRate:
                    revert with 0, 'lSafeMath: multiplication overflo'
                if borrowRate * s / 100:
                    mem[96] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(wantAddress)
                    mem[132] = borrowRate * s / 100
                    mem[164] = 2
                    mem[196] = 0
                    mem[228] = this.address
                    require ext_code.size(address(lendingPoolAddress))
                    call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                         gas gas_remaining wei
                        args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = borrowRate * s / 100
                continue 
            if s + reserves < reserves:
                revert with 0, 'SafeMath: addition overflow'
            reserves += s
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!manager'
    if arg1 > borrowRateMax:
        revert with 0, '!safe'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(lendingPoolAddress))
    call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, uint32(stor10), ext_call.return_data[0], 2, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not ext_call.return_data[64]:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 0 / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(wantAddress), ext_call.return_data[0] - (0 / arg1), this.address
    else:
        if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 100 * ext_call.return_data[64] / arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(wantAddress), ext_call.return_data[0] - (100 * ext_call.return_data[64] / arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = ext_call.return_data[0]
}

function retireStrat() payable {
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    s = mem[160]
    t = mem[96]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), t, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        mem[96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[0] - (0 / borrowRate)
            mem[164] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (0 / borrowRate), this.address
        else:
            if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * ext_call.return_data[64] / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate)
            mem[164] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[64]
        t = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(lendingPoolAddress))
    if s:
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(wantAddress), -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(wantAddress))
    call address(wantAddress).0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, '!manager'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(wantAddress)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
    call address(wantAddress) with:
       funct uint32(stor14)
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
        call nativeAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
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
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
        call nativeAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
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

function rebalance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!manager'
    if arg1 > borrowRateMax:
        revert with 0, '!rate'
    if arg2 > 10:
        revert with 0, '!depth'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    s = mem[160]
    t = mem[96]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), t, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        mem[96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[0] - (0 / borrowRate)
            mem[164] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (0 / borrowRate), this.address
        else:
            if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * ext_call.return_data[64] / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate)
            mem[164] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[64]
        t = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(lendingPoolAddress))
    if s:
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(wantAddress), -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    reserves = 0
    borrowRate = arg1
    borrowDepth = arg2
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= minLeverage:
        idx = 0
        s = mem[96]
        while idx < borrowDepth:
            mem[96] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
            mem[100] = address(wantAddress)
            mem[132] = s
            mem[164] = this.address
            mem[196] = 0
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), s, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not s:
                idx = idx + 1
                s = 0
                continue 
            if borrowRate * s / s != borrowRate:
                revert with 0, 'lSafeMath: multiplication overflo'
            if borrowRate * s / 100:
                mem[96] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                mem[100] = address(wantAddress)
                mem[132] = borrowRate * s / 100
                mem[164] = 2
                mem[196] = 0
                mem[228] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                     gas gas_remaining wei
                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = borrowRate * s / 100
            continue 
        if s + reserves < reserves:
            revert with 0, 'SafeMath: addition overflow'
        reserves += s
    emit StratRebalance(arg1, arg2);
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, '!manager'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataProviderAddress)
    staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(wantAddress), this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    s = mem[160]
    t = mem[96]
    t = ext_call.return_data[0]
    while t < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), t, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        mem[96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not ext_call.return_data[64]:
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 0 / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[0] - (0 / borrowRate)
            mem[164] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (0 / borrowRate), this.address
        else:
            if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
            if borrowRate <= 0:
                revert with 0, 'SafeMath: division by zero'
            require borrowRate
            if 100 * ext_call.return_data[64] / borrowRate > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[132] = ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate)
            mem[164] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[100] = this.address
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = ext_call.return_data[64]
        t = ext_call.return_data[0]
        t = ext_call.return_data[0]
        continue 
    require ext_code.size(address(lendingPoolAddress))
    if not s:
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(wantAddress), -1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        reserves = 0
        if owner != msg.sender:
            revert with 0, '!manager'
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(address(wantAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, address(lendingPoolAddress), 0
        call address(wantAddress) with:
           funct uint32(stor14)
             gas gas_remaining wei
            args 0, mem[196 len 28], mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
            if not uint32(stor10), Mask(224, 0, stor14):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(nativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
            call nativeAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                if not uint32(stor10), Mask(224, 0, stor14):
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
            if not return_data.size:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(nativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call nativeAddress with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                    if not uint32(stor10), Mask(224, 0, stor14):
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
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
            else:
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
                if not ext_code.size(nativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                call nativeAddress with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                    if not uint32(stor10), Mask(224, 0, stor14):
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
    else:
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(wantAddress), -1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        reserves = 0
        if owner != msg.sender:
            revert with 0, '!manager'
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(address(wantAddress)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, address(lendingPoolAddress), 0
        call address(wantAddress) with:
           funct uint32(stor14)
             gas gas_remaining wei
            args 0, mem[196 len 28], mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
            if not uint32(stor10), Mask(224, 0, stor14):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
            if not ext_code.size(nativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
            call nativeAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                if not uint32(stor10), Mask(224, 0, stor14):
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
            if not return_data.size:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(nativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                call nativeAddress with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                    if not uint32(stor10), Mask(224, 0, stor14):
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
            else:
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
                if not ext_code.size(nativeAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call nativeAddress with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                    if not uint32(stor10), Mask(224, 0, stor14):
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
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, '!manager'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(lendingPoolAddress)
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
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(wantAddress)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call address(wantAddress) with:
       funct uint32(stor14)
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(nativeAddress)
        staticcall nativeAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(nativeAddress):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[516 len 4] = 0
        call nativeAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(address(wantAddress))
            staticcall address(wantAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[424] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[424] - reserves
                    while idx < borrowDepth:
                        mem[424] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[428] = address(wantAddress)
                        mem[460] = s
                        mem[492] = this.address
                        mem[524] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args address(wantAddress), s, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'lSafeMath: multiplication overflo'
                        if borrowRate * s / 100:
                            mem[424] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[428] = address(wantAddress)
                            mem[460] = borrowRate * s / 100
                            mem[492] = 2
                            mem[524] = 0
                            mem[556] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
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
            if stor0:
                revert with 0, 'Pausable: paused'
            require ext_code.size(address(wantAddress))
            staticcall address(wantAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if reserves > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - reserves:
                if ext_call.return_data[0] - reserves >= minLeverage:
                    idx = 0
                    s = mem[ceil32(return_data.size) + 425] - reserves
                    while idx < borrowDepth:
                        mem[ceil32(return_data.size) + 425] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = address(wantAddress)
                        mem[ceil32(return_data.size) + 461] = s
                        mem[ceil32(return_data.size) + 493] = this.address
                        mem[ceil32(return_data.size) + 525] = 0
                        require ext_code.size(address(lendingPoolAddress))
                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                             gas gas_remaining wei
                            args address(wantAddress), s, this.address, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not s:
                            idx = idx + 1
                            s = 0
                            continue 
                        if borrowRate * s / s != borrowRate:
                            revert with 0, 'lSafeMath: multiplication overflo'
                        if borrowRate * s / 100:
                            mem[ceil32(return_data.size) + 425] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 429] = address(wantAddress)
                            mem[ceil32(return_data.size) + 461] = borrowRate * s / 100
                            mem[ceil32(return_data.size) + 493] = 2
                            mem[ceil32(return_data.size) + 525] = 0
                            mem[ceil32(return_data.size) + 557] = this.address
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                 gas gas_remaining wei
                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        s = borrowRate * s / 100
                        continue 
                    if s + reserves < reserves:
                        revert with 0, 'SafeMath: addition overflow'
                    reserves += s
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(unirouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(nativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call nativeAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(address(wantAddress))
                staticcall address(wantAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reserves > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - reserves:
                    if ext_call.return_data[0] - reserves >= minLeverage:
                        idx = 0
                        s = mem[ceil32(return_data.size) + 425] - reserves
                        while idx < borrowDepth:
                            mem[ceil32(return_data.size) + 425] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 429] = address(wantAddress)
                            mem[ceil32(return_data.size) + 461] = s
                            mem[ceil32(return_data.size) + 493] = this.address
                            mem[ceil32(return_data.size) + 525] = 0
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args address(wantAddress), s, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            if borrowRate * s / s != borrowRate:
                                revert with 0, 'lSafeMath: multiplication overflo'
                            if borrowRate * s / 100:
                                mem[ceil32(return_data.size) + 425] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 429] = address(wantAddress)
                                mem[ceil32(return_data.size) + 461] = borrowRate * s / 100
                                mem[ceil32(return_data.size) + 493] = 2
                                mem[ceil32(return_data.size) + 525] = 0
                                mem[ceil32(return_data.size) + 557] = this.address
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = borrowRate * s / 100
                            continue 
                        if s + reserves < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
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
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(address(wantAddress))
                staticcall address(wantAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reserves > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - reserves:
                    if ext_call.return_data[0] - reserves >= minLeverage:
                        idx = 0
                        s = mem[(2 * ceil32(return_data.size)) + 426] - reserves
                        while idx < borrowDepth:
                            mem[(2 * ceil32(return_data.size)) + 426] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = address(wantAddress)
                            mem[(2 * ceil32(return_data.size)) + 462] = s
                            mem[(2 * ceil32(return_data.size)) + 494] = this.address
                            mem[(2 * ceil32(return_data.size)) + 526] = 0
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args address(wantAddress), s, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            if borrowRate * s / s != borrowRate:
                                revert with 0, 'lSafeMath: multiplication overflo'
                            if borrowRate * s / 100:
                                mem[(2 * ceil32(return_data.size)) + 426] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 430] = address(wantAddress)
                                mem[(2 * ceil32(return_data.size)) + 462] = borrowRate * s / 100
                                mem[(2 * ceil32(return_data.size)) + 494] = 2
                                mem[(2 * ceil32(return_data.size)) + 526] = 0
                                mem[(2 * ceil32(return_data.size)) + 558] = this.address
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = borrowRate * s / 100
                            continue 
                        if s + reserves < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(nativeAddress)
            staticcall nativeAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(unirouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(nativeAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2), uint32(stor2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call nativeAddress with:
               funct uint32(stor2)
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor14), uint32(stor14), -1
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor14):
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                if stor0:
                    revert with 0, 'Pausable: paused'
                require ext_code.size(address(wantAddress))
                staticcall address(wantAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 425] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reserves > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - reserves:
                    if ext_call.return_data[0] - reserves >= minLeverage:
                        idx = 0
                        s = mem[ceil32(return_data.size) + 425] - reserves
                        while idx < borrowDepth:
                            mem[ceil32(return_data.size) + 425] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 429] = address(wantAddress)
                            mem[ceil32(return_data.size) + 461] = s
                            mem[ceil32(return_data.size) + 493] = this.address
                            mem[ceil32(return_data.size) + 525] = 0
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args address(wantAddress), s, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            if borrowRate * s / s != borrowRate:
                                revert with 0, 'lSafeMath: multiplication overflo'
                            if borrowRate * s / 100:
                                mem[ceil32(return_data.size) + 425] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 429] = address(wantAddress)
                                mem[ceil32(return_data.size) + 461] = borrowRate * s / 100
                                mem[ceil32(return_data.size) + 493] = 2
                                mem[ceil32(return_data.size) + 525] = 0
                                mem[ceil32(return_data.size) + 557] = this.address
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = borrowRate * s / 100
                            continue 
                        if s + reserves < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
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
                if stor0:
                    revert with 0, 
                                'Pausable: paused',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                require ext_code.size(address(wantAddress))
                staticcall address(wantAddress).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address, mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[(2 * ceil32(return_data.size)) + 426] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if reserves > ext_call.return_data[0]:
                    revert with 0, 
                                'SafeMath: subtraction overflow',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if ext_call.return_data[0] - reserves:
                    if ext_call.return_data[0] - reserves >= minLeverage:
                        idx = 0
                        s = mem[(2 * ceil32(return_data.size)) + 426] - reserves
                        while idx < borrowDepth:
                            mem[(2 * ceil32(return_data.size)) + 426] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = address(wantAddress)
                            mem[(2 * ceil32(return_data.size)) + 462] = s
                            mem[(2 * ceil32(return_data.size)) + 494] = this.address
                            mem[(2 * ceil32(return_data.size)) + 526] = 0
                            require ext_code.size(address(lendingPoolAddress))
                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                 gas gas_remaining wei
                                args address(wantAddress), s, this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not s:
                                idx = idx + 1
                                s = 0
                                continue 
                            if borrowRate * s / s != borrowRate:
                                revert with 0, 'lSafeMath: multiplication overflo'
                            if borrowRate * s / 100:
                                mem[(2 * ceil32(return_data.size)) + 426] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 430] = address(wantAddress)
                                mem[(2 * ceil32(return_data.size)) + 462] = borrowRate * s / 100
                                mem[(2 * ceil32(return_data.size)) + 494] = 2
                                mem[(2 * ceil32(return_data.size)) + 526] = 0
                                mem[(2 * ceil32(return_data.size)) + 558] = this.address
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = borrowRate * s / 100
                            continue 
                        if s + reserves < reserves:
                            revert with 0, 'SafeMath: addition overflow'
                        reserves += s
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if reserves > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - reserves >= arg1:
        if ext_call.return_data[0] - reserves <= arg1:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(address(wantAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                mem[352 len 4] = 0
                call address(wantAddress) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - reserves
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not stor0:
                        require ext_code.size(address(wantAddress))
                        staticcall address(wantAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[260] - reserves
                            while idx < borrowDepth:
                                mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[264] = address(wantAddress)
                                mem[296] = s
                                mem[328] = this.address
                                mem[360] = 0
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), s, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 'lSafeMath: multiplication overflo'
                                if borrowRate * s / 100:
                                    mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = borrowRate * s / 100
                                    mem[328] = 2
                                    mem[360] = 0
                                    mem[392] = this.address
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                    if not stor0:
                        require ext_code.size(address(wantAddress))
                        staticcall address(wantAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[ceil32(return_data.size) + 261] - reserves
                            while idx < borrowDepth:
                                mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                mem[ceil32(return_data.size) + 297] = s
                                mem[ceil32(return_data.size) + 329] = this.address
                                mem[ceil32(return_data.size) + 361] = 0
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), s, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 'lSafeMath: multiplication overflo'
                                if borrowRate * s / 100:
                                    mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                    mem[ceil32(return_data.size) + 329] = 2
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = this.address
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
            else:
                if stor0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(wantAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                    mem[352 len 4] = 0
                    call address(wantAddress) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - reserves
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = s
                                    mem[328] = this.address
                                    mem[360] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = borrowRate * s / 100
                                        mem[328] = 2
                                        mem[360] = 0
                                        mem[392] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = s
                                    mem[ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(return_data.size) + 361] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                        mem[ceil32(return_data.size) + 329] = 2
                                        mem[ceil32(return_data.size) + 361] = 0
                                        mem[ceil32(return_data.size) + 393] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                else:
                    if ext_call.return_data[0] - reserves:
                        if (ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / ext_call.return_data[0] - reserves != withdrawalFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)) >> 32
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), 
                                            Mask(224, 0, stor3),
                                            uint32(stor3),
                                            ext_call.return_data[0] - reserves - ((ext_call.return_data[0] * withdrawalFee) - (reserves * withdrawalFee) / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                    else:
                        if 0 > ext_call.return_data[0] - reserves:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] - reserves) >> 32
                        mem[352 len 4] = 0
                        mem[324 len 0] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - reserves) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] - reserves
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
        else:
            if tx.origin == owner:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(address(wantAddress)):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                mem[352 len 4] = 0
                mem[324 len 0] = 0
                call address(wantAddress) with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    if not stor0:
                        require ext_code.size(address(wantAddress))
                        staticcall address(wantAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[260] - reserves
                            while idx < borrowDepth:
                                mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[264] = address(wantAddress)
                                mem[296] = s
                                mem[328] = this.address
                                mem[360] = 0
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), s, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 'lSafeMath: multiplication overflo'
                                if borrowRate * s / 100:
                                    mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = borrowRate * s / 100
                                    mem[328] = 2
                                    mem[360] = 0
                                    mem[392] = this.address
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
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
                    if not stor0:
                        require ext_code.size(address(wantAddress))
                        staticcall address(wantAddress).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if reserves > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if ext_call.return_data[0] - reserves >= minLeverage:
                            idx = 0
                            s = mem[ceil32(return_data.size) + 261] - reserves
                            while idx < borrowDepth:
                                mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                mem[ceil32(return_data.size) + 297] = s
                                mem[ceil32(return_data.size) + 329] = this.address
                                mem[ceil32(return_data.size) + 361] = 0
                                require ext_code.size(address(lendingPoolAddress))
                                call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                     gas gas_remaining wei
                                    args address(wantAddress), s, this.address, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not s:
                                    idx = idx + 1
                                    s = 0
                                    continue 
                                if borrowRate * s / s != borrowRate:
                                    revert with 0, 'lSafeMath: multiplication overflo'
                                if borrowRate * s / 100:
                                    mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                    mem[ceil32(return_data.size) + 329] = 2
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = this.address
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = borrowRate * s / 100
                                continue 
                            if s + reserves < reserves:
                                revert with 0, 'SafeMath: addition overflow'
                            reserves += s
            else:
                if stor0:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(wantAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    call address(wantAddress) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = s
                                    mem[328] = this.address
                                    mem[360] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = borrowRate * s / 100
                                        mem[328] = 2
                                        mem[360] = 0
                                        mem[392] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = s
                                    mem[ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(return_data.size) + 361] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                        mem[ceil32(return_data.size) + 329] = 2
                                        mem[ceil32(return_data.size) + 361] = 0
                                        mem[ceil32(return_data.size) + 393] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                else:
                    if not arg1:
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1 - (withdrawalFee * arg1 / 10000)
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
    else:
        require ext_code.size(address(wantAddress))
        staticcall address(wantAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(dataProviderAddress)
        staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(wantAddress), this.address
        mem[96 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        s = mem[160]
        t = mem[96]
        t = ext_call.return_data[0]
        while t < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), t, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(dataProviderAddress)
            staticcall dataProviderAddress.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(wantAddress), this.address
            mem[96 len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            if not ext_call.return_data[64]:
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 0 / borrowRate > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[132] = ext_call.return_data[0] - (0 / borrowRate)
                mem[164] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(wantAddress), ext_call.return_data[0] - (0 / borrowRate), this.address
            else:
                if 100 * ext_call.return_data[64] / ext_call.return_data[64] != 100:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if borrowRate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require borrowRate
                if 100 * ext_call.return_data[64] / borrowRate > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[132] = ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate)
                mem[164] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(wantAddress), ext_call.return_data[0] - (100 * ext_call.return_data[64] / borrowRate), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[100] = this.address
            require ext_code.size(address(wantAddress))
            staticcall address(wantAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[64]
            t = ext_call.return_data[0]
            t = ext_call.return_data[0]
            continue 
        require ext_code.size(address(lendingPoolAddress))
        if not s:
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            reserves = 0
            require ext_code.size(address(wantAddress))
            staticcall address(wantAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg1:
                if tx.origin == owner:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(wantAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                    mem[352 len 4] = 0
                    call address(wantAddress) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                        if not uint32(this.address), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = s
                                    mem[328] = this.address
                                    mem[360] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = borrowRate * s / 100
                                        mem[328] = 2
                                        mem[360] = 0
                                        mem[392] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = s
                                    mem[ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(return_data.size) + 361] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                        mem[ceil32(return_data.size) + 329] = 2
                                        mem[ceil32(return_data.size) + 361] = 0
                                        mem[ceil32(return_data.size) + 393] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                else:
                    if stor0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                            if not uint32(this.address), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                    else:
                        if not ext_call.return_data[0]:
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
                        else:
                            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(vaultAddress),
                                                ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
            else:
                if tx.origin == owner:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(wantAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    call address(wantAddress) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args arg1, mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                        if not uint32(this.address), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = s
                                    mem[328] = this.address
                                    mem[360] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = borrowRate * s / 100
                                        mem[328] = 2
                                        mem[360] = 0
                                        mem[392] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = s
                                    mem[ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(return_data.size) + 361] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                        mem[ceil32(return_data.size) + 329] = 2
                                        mem[ceil32(return_data.size) + 361] = 0
                                        mem[ceil32(return_data.size) + 393] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                else:
                    if stor0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                             gas gas_remaining wei
                            args arg1, mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                            if not uint32(this.address), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                    else:
                        if not arg1:
                            if 0 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args arg1, mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
                        else:
                            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if withdrawalFee * arg1 / 10000 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args arg1 - (withdrawalFee * arg1 / 10000), mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1 - (withdrawalFee * arg1 / 10000)
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
        else:
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            reserves = 0
            require ext_code.size(address(wantAddress))
            staticcall address(wantAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg1:
                if tx.origin == owner:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(wantAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                    mem[352 len 4] = 0
                    call address(wantAddress) with:
                       funct uint32(stor3)
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                        if not uint32(this.address), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = s
                                    mem[328] = this.address
                                    mem[360] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = borrowRate * s / 100
                                        mem[328] = 2
                                        mem[360] = 0
                                        mem[392] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = s
                                    mem[ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(return_data.size) + 361] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                        mem[ceil32(return_data.size) + 329] = 2
                                        mem[ceil32(return_data.size) + 361] = 0
                                        mem[ceil32(return_data.size) + 393] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                else:
                    if stor0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                            if not uint32(this.address), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                    else:
                        if not ext_call.return_data[0]:
                            if 0 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args ext_call.return_data[0], mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(vaultAddress), ext_call.return_data[0]
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
                        else:
                            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                                revert with 0, 'lSafeMath: multiplication overfloddres'
                            if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000), mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), 
                                                address(vaultAddress),
                                                ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
            else:
                if tx.origin == owner:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(address(wantAddress)):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    mem[352 len 4] = 0
                    call address(wantAddress) with:
                         gas gas_remaining wei
                        args arg1, mem[196 len 28], mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                        if not uint32(this.address), Mask(224, 0, stor3):
                            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[260] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[260] - reserves
                                while idx < borrowDepth:
                                    mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[264] = address(wantAddress)
                                    mem[296] = s
                                    mem[328] = this.address
                                    mem[360] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = borrowRate * s / 100
                                        mem[328] = 2
                                        mem[360] = 0
                                        mem[392] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
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
                        if not stor0:
                            require ext_code.size(address(wantAddress))
                            staticcall address(wantAddress).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if reserves > ext_call.return_data[0]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] - reserves >= minLeverage:
                                idx = 0
                                s = mem[ceil32(return_data.size) + 261] - reserves
                                while idx < borrowDepth:
                                    mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                    mem[ceil32(return_data.size) + 297] = s
                                    mem[ceil32(return_data.size) + 329] = this.address
                                    mem[ceil32(return_data.size) + 361] = 0
                                    require ext_code.size(address(lendingPoolAddress))
                                    call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                         gas gas_remaining wei
                                        args address(wantAddress), s, this.address, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not s:
                                        idx = idx + 1
                                        s = 0
                                        continue 
                                    if borrowRate * s / s != borrowRate:
                                        revert with 0, 'lSafeMath: multiplication overflo'
                                    if borrowRate * s / 100:
                                        mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                        mem[ceil32(return_data.size) + 329] = 2
                                        mem[ceil32(return_data.size) + 361] = 0
                                        mem[ceil32(return_data.size) + 393] = this.address
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = borrowRate * s / 100
                                    continue 
                                if s + reserves < reserves:
                                    revert with 0, 'SafeMath: addition overflow'
                                reserves += s
                else:
                    if stor0:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(address(wantAddress)):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                        mem[352 len 4] = 0
                        call address(wantAddress) with:
                           funct uint32(stor3)
                             gas gas_remaining wei
                            args arg1, mem[196 len 28], mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                            if not uint32(this.address), Mask(224, 0, stor3):
                                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[260] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[260] - reserves
                                    while idx < borrowDepth:
                                        mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[264] = address(wantAddress)
                                        mem[296] = s
                                        mem[328] = this.address
                                        mem[360] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = borrowRate * s / 100
                                            mem[328] = 2
                                            mem[360] = 0
                                            mem[392] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
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
                            if not stor0:
                                require ext_code.size(address(wantAddress))
                                staticcall address(wantAddress).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if reserves > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] - reserves >= minLeverage:
                                    idx = 0
                                    s = mem[ceil32(return_data.size) + 261] - reserves
                                    while idx < borrowDepth:
                                        mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                        mem[ceil32(return_data.size) + 297] = s
                                        mem[ceil32(return_data.size) + 329] = this.address
                                        mem[ceil32(return_data.size) + 361] = 0
                                        require ext_code.size(address(lendingPoolAddress))
                                        call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                             gas gas_remaining wei
                                            args address(wantAddress), s, this.address, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not s:
                                            idx = idx + 1
                                            s = 0
                                            continue 
                                        if borrowRate * s / s != borrowRate:
                                            revert with 0, 'lSafeMath: multiplication overflo'
                                        if borrowRate * s / 100:
                                            mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                            mem[ceil32(return_data.size) + 329] = 2
                                            mem[ceil32(return_data.size) + 361] = 0
                                            mem[ceil32(return_data.size) + 393] = this.address
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = borrowRate * s / 100
                                        continue 
                                    if s + reserves < reserves:
                                        revert with 0, 'SafeMath: addition overflow'
                                    reserves += s
                    else:
                        if not arg1:
                            if 0 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                                 gas gas_remaining wei
                                args arg1, mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
                        else:
                            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                                revert with 0, 'lSafeMath: multiplication overfloddres'
                            if withdrawalFee * arg1 / 10000 > arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(address(wantAddress)):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                            mem[352 len 4] = 0
                            call address(wantAddress) with:
                               funct uint32(stor3)
                                 gas gas_remaining wei
                                args arg1 - (withdrawalFee * arg1 / 10000), mem[196 len 28], mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), address(vaultAddress), arg1 - (withdrawalFee * arg1 / 10000)
                                if not uint32(this.address), Mask(224, 0, stor3):
                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[260] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[260] - reserves
                                        while idx < borrowDepth:
                                            mem[260] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[264] = address(wantAddress)
                                            mem[296] = s
                                            mem[328] = this.address
                                            mem[360] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[260] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[264] = address(wantAddress)
                                                mem[296] = borrowRate * s / 100
                                                mem[328] = 2
                                                mem[360] = 0
                                                mem[392] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
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
                                if not stor0:
                                    require ext_code.size(address(wantAddress))
                                    staticcall address(wantAddress).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if reserves > ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if ext_call.return_data[0] - reserves >= minLeverage:
                                        idx = 0
                                        s = mem[ceil32(return_data.size) + 261] - reserves
                                        while idx < borrowDepth:
                                            mem[ceil32(return_data.size) + 261] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                            mem[ceil32(return_data.size) + 297] = s
                                            mem[ceil32(return_data.size) + 329] = this.address
                                            mem[ceil32(return_data.size) + 361] = 0
                                            require ext_code.size(address(lendingPoolAddress))
                                            call address(lendingPoolAddress).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                                                 gas gas_remaining wei
                                                args address(wantAddress), s, this.address, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if not s:
                                                idx = idx + 1
                                                s = 0
                                                continue 
                                            if borrowRate * s / s != borrowRate:
                                                revert with 0, 'lSafeMath: multiplication overflo'
                                            if borrowRate * s / 100:
                                                mem[ceil32(return_data.size) + 261] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 265] = address(wantAddress)
                                                mem[ceil32(return_data.size) + 297] = borrowRate * s / 100
                                                mem[ceil32(return_data.size) + 329] = 2
                                                mem[ceil32(return_data.size) + 361] = 0
                                                mem[ceil32(return_data.size) + 393] = this.address
                                                require ext_code.size(address(lendingPoolAddress))
                                                call address(lendingPoolAddress).borrow(address arg1, uint256 arg2, uint256 arg3, uint16 arg4, address arg5) with:
                                                     gas gas_remaining wei
                                                    args address(wantAddress), borrowRate * s / 100, 2, 0, this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = borrowRate * s / 100
                                            continue 
                                        if s + reserves < reserves:
                                            revert with 0, 'SafeMath: addition overflow'
                                        reserves += s
}



}
