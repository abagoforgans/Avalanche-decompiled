contract main {




// =====================  Runtime code  =====================


#
#  - harvest(address arg1)
#  - withdraw(uint256 arg1)
#  - harvest()
#  - beforeDeposit()
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
address keeperAddress;
address strategistAddress;
address unirouterAddress;
address vaultAddress;
address beefyFeeRecipientAddress;
uint256 withdrawalFee;
uint256 callFee;
uint256 beefyFee;
uint32 stor9;
address wantAddress;
address aTokenAddress;
address varDebtTokenAddress;
address dataProviderAddress;
uint32 stor13;
address lendingPoolAddress;
uint256 stor13;
uint8 harvestOnDeposit; offset 160
uint128 stor14; offset 160
address incentivesControllerAddress;
uint256 lastHarvest;
uint256 borrowRate;
uint256 borrowRateMax;
uint256 borrowDepth;
uint256 minLeverage;
uint256 reserves;

function borrowRateMax() payable {
    return borrowRateMax
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
    return unirouterAddress
}

function varDebtToken() payable {
    return varDebtTokenAddress
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

function beefyFeeRecipient() payable {
    return beefyFeeRecipientAddress
}

function callFee() payable {
    return callFee
}

function borrowDepth() payable {
    return borrowDepth
}

function aToken() payable {
    return aTokenAddress
}

function lendingPool() payable {
    return address(lendingPoolAddress)
}

function keeper() payable {
    return keeperAddress
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

function beefyFee() payable {
    return beefyFee
}

function lastHarvest() payable {
    return lastHarvest
}

function vault() payable {
    return vaultAddress
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

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    vaultAddress = arg1
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
        revert with 0, 'wOwnable: caller is not the owne'
    unirouterAddress = arg1
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
    require ext_code.size(address(wantAddress))
    staticcall address(wantAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function eMode() payable {
    require ext_code.size(address(lendingPoolAddress))
    staticcall address(lendingPoolAddress).getUserEMode(address arg1) with:
            gas gas_remaining wei
           args this.address
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
    stor14 = Mask(96, 0, arg1)
    if owner != msg.sender:
        if keeperAddress != msg.sender:
            revert with 0, '!manager'
    if not uint8(arg1) and True:
        withdrawalFee = 10
    else:
        withdrawalFee = 0
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

function rewardsAvailable() payable {
    mem[324 len 0] = None
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0x70674ab9 with:
            gas gas_remaining wei
           args Array(len=2, data=mem[324 len 64]), this.address, address(wantAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    mem[324 len 0] = None
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.0x70674ab9 with:
            gas gas_remaining wei
           args Array(len=2, data=mem[324 len 64]), this.address, address(wantAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if 45 * ext_call.return_data[0] / ext_call.return_data[0] != 45:
        revert with 0, 'lSafeMath: multiplication overflo'
    if not 45 * ext_call.return_data[0] / 1000:
        return 0
    if callFee * 45 * ext_call.return_data[0] / 1000 / 45 * ext_call.return_data[0] / 1000 != callFee:
        revert with 0, 'lSafeMath: multiplication overflo'
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
    if not ext_code.size(address(wantAddress)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
    mem[324 len 0] = 0
    call address(wantAddress) with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
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
        emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
}

function deleverageOnce(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if keeperAddress != msg.sender:
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
    if ext_call.return_data[0]:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor9), ext_call.return_data[0], 2, this.address
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
        if ext_call.return_data[0] - (0 / arg1) > 0:
            if 0 / arg1 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), ext_call.return_data[0] - (0 / arg1), this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
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
        if ext_call.return_data[0] - (100 * ext_call.return_data[64] / arg1) > 0:
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
    if vaultAddress != msg.sender:
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
    u = ext_call.return_data[0]
    while u < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), u, 2, this.address
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
        u = ext_call.return_data[0]
        continue 
    if s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if t:
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
    require ext_code.size(address(wantAddress))
    call address(wantAddress).0xa9059cbb with:
         gas gas_remaining wei
        args vaultAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function rebalance(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if keeperAddress != msg.sender:
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
    u = ext_call.return_data[0]
    while u < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), u, 2, this.address
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
        u = ext_call.return_data[0]
        continue 
    if s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if t:
        require ext_code.size(address(lendingPoolAddress))
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

function unpause() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
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
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[352 len 4] = 0
    mem[324 len 0] = 0
    call address(wantAddress) with:
       funct uint32(stor13)
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor13), uint32(stor13), -1
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if stor0:
            revert with 0, 'Pausable: paused'
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
        if ext_call.return_data[0] - reserves:
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
            emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
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
        if stor0:
            revert with 0, 'Pausable: paused'
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
        if ext_call.return_data[0] - reserves:
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
            emit Deposit(((2 * ext_call.return_data[0]) - ext_call.return_data[64]));
}

function panic() payable {
    if owner != msg.sender:
        if keeperAddress != msg.sender:
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
    u = ext_call.return_data[0]
    while u < s:
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), u, 2, this.address
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
        u = ext_call.return_data[0]
        continue 
    if not s:
        if not t:
            reserves = 0
            if owner != msg.sender:
                if keeperAddress != msg.sender:
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
                 gas gas_remaining wei
                args 0, mem[196 len 28], mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor13):
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
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            reserves = 0
            if owner != msg.sender:
                if keeperAddress != msg.sender:
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
                 gas gas_remaining wei
                args 0, mem[196 len 28], mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
                if not uint32(stor9), Mask(224, 0, stor13):
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
        require ext_code.size(address(lendingPoolAddress))
        call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
             gas gas_remaining wei
            args address(wantAddress), -1, 2, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if t:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        reserves = 0
        if owner != msg.sender:
            if keeperAddress != msg.sender:
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
             gas gas_remaining wei
            args 0, mem[196 len 28], mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), address(lendingPoolAddress), 0
            if not uint32(stor9), Mask(224, 0, stor13):
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
}

function sub_ca404cc0(?) payable {
    require calldata.size - 4 >= 128
    if msg.sender == owner:
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
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), u, 2, this.address
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
            u = ext_call.return_data[0]
            continue 
        if not s:
            if not t:
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _761 = mem[96 len 4], uint8(arg1) << 216
                    _765 = mem[224]
                    require mem[224] <= 4294967296
                    require mem[224] + 32 <= return_data.size
                    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[mem[224] + 96]
                    _794 = mem[_765 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_765 + 96])] = mem[_765 + 128 len ceil32(mem[_765 + 96])]
                    borrowRateMax = uint16(_761) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _794 % 32:
                        mem[_794 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_794 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_794 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_794 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_794 + ceil32(return_data.size) + 164] = s
                                mem[_794 + ceil32(return_data.size) + 196] = this.address
                                mem[_794 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_794 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_794 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_794 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_794 + ceil32(return_data.size) + 196] = 2
                                    mem[_794 + ceil32(return_data.size) + 228] = 0
                                    mem[_794 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_794) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_794) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_794) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_794) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_794) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_794) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_794) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_794) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_794) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_794) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_794) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_794) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_794) + ceil32(return_data.size) + 292] = this.address
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
                mem[132] = -1
                mem[164] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(wantAddress), -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _816 = mem[96 len 4], uint8(arg1) << 216
                    _820 = mem[224]
                    require mem[224] <= 4294967296
                    require mem[224] + 32 <= return_data.size
                    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[mem[224] + 96]
                    _876 = mem[_820 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_820 + 96])] = mem[_820 + 128 len ceil32(mem[_820 + 96])]
                    borrowRateMax = uint16(_816) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _876 % 32:
                        mem[_876 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_876 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_876 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_876 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_876 + ceil32(return_data.size) + 164] = s
                                mem[_876 + ceil32(return_data.size) + 196] = this.address
                                mem[_876 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_876 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_876 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_876 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_876 + ceil32(return_data.size) + 196] = 2
                                    mem[_876 + ceil32(return_data.size) + 228] = 0
                                    mem[_876 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_876) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_876) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_876) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_876) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_876) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_876) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_876) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_876) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_876) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_876) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_876) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_876) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_876) + ceil32(return_data.size) + 292] = this.address
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
            mem[132] = -1
            mem[164] = 2
            mem[196] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not t:
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _824 = mem[96 len 4], uint8(arg1) << 216
                    _828 = uint32(this.address), mem[228 len 28]
                    require uint32(this.address), mem[228 len 28] <= 4294967296
                    require uint32(this.address), mem[228 len 28] + 32 <= return_data.size
                    require return_data.size >= mem[uint32(this.address), mem[228 len 28] + 96] + uint32(this.address), mem[228 len 28] + 32 and mem[uint32(this.address), mem[228 len 28] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[228 len 28] + 96]
                    _878 = mem[_828 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_828 + 96])] = mem[_828 + 128 len ceil32(mem[_828 + 96])]
                    borrowRateMax = uint16(_824) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _878 % 32:
                        mem[_878 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_878 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_878 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_878 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_878 + ceil32(return_data.size) + 164] = s
                                mem[_878 + ceil32(return_data.size) + 196] = this.address
                                mem[_878 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_878 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_878 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_878 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_878 + ceil32(return_data.size) + 196] = 2
                                    mem[_878 + ceil32(return_data.size) + 228] = 0
                                    mem[_878 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_878) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_878) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_878) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_878) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_878) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_878) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_878) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_878) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_878) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_878) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_878) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_878) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_878) + ceil32(return_data.size) + 292] = this.address
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
                mem[132] = -1
                mem[164] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(wantAddress), -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _893 = mem[96 len 4], uint8(arg1) << 216
                    _897 = uint32(this.address), mem[228 len 28]
                    require uint32(this.address), mem[228 len 28] <= 4294967296
                    require uint32(this.address), mem[228 len 28] + 32 <= return_data.size
                    require return_data.size >= mem[uint32(this.address), mem[228 len 28] + 96] + uint32(this.address), mem[228 len 28] + 32 and mem[uint32(this.address), mem[228 len 28] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[228 len 28] + 96]
                    _942 = mem[_897 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_897 + 96])] = mem[_897 + 128 len ceil32(mem[_897 + 96])]
                    borrowRateMax = uint16(_893) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _942 % 32:
                        mem[_942 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_942 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_942 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_942 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_942 + ceil32(return_data.size) + 164] = s
                                mem[_942 + ceil32(return_data.size) + 196] = this.address
                                mem[_942 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_942 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_942 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_942 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_942 + ceil32(return_data.size) + 196] = 2
                                    mem[_942 + ceil32(return_data.size) + 228] = 0
                                    mem[_942 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_942) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_942) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_942) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_942) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_942) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_942) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_942) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_942) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_942) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_942) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_942) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_942) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_942) + ceil32(return_data.size) + 292] = this.address
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
        if keeperAddress != msg.sender:
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
        u = ext_call.return_data[0]
        while u < s:
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), u, 2, this.address
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
            u = ext_call.return_data[0]
            continue 
        if not s:
            if not t:
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _769 = mem[96 len 4], uint8(arg1) << 216
                    _773 = mem[224]
                    require mem[224] <= 4294967296
                    require mem[224] + 32 <= return_data.size
                    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[mem[224] + 96]
                    _804 = mem[_773 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_773 + 96])] = mem[_773 + 128 len ceil32(mem[_773 + 96])]
                    borrowRateMax = uint16(_769) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _804 % 32:
                        mem[_804 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_804 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_804 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_804 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_804 + ceil32(return_data.size) + 164] = s
                                mem[_804 + ceil32(return_data.size) + 196] = this.address
                                mem[_804 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_804 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_804 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_804 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_804 + ceil32(return_data.size) + 196] = 2
                                    mem[_804 + ceil32(return_data.size) + 228] = 0
                                    mem[_804 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_804) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_804) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_804) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_804) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_804) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_804) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_804) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_804) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_804) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_804) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_804) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_804) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_804) + ceil32(return_data.size) + 292] = this.address
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
                mem[132] = -1
                mem[164] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(wantAddress), -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _833 = mem[96 len 4], uint8(arg1) << 216
                    _837 = mem[224]
                    require mem[224] <= 4294967296
                    require mem[224] + 32 <= return_data.size
                    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[mem[224] + 96]
                    _883 = mem[_837 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_837 + 96])] = mem[_837 + 128 len ceil32(mem[_837 + 96])]
                    borrowRateMax = uint16(_833) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _883 % 32:
                        mem[_883 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_883 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_883 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_883 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_883 + ceil32(return_data.size) + 164] = s
                                mem[_883 + ceil32(return_data.size) + 196] = this.address
                                mem[_883 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_883 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_883 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_883 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_883 + ceil32(return_data.size) + 196] = 2
                                    mem[_883 + ceil32(return_data.size) + 228] = 0
                                    mem[_883 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_883) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_883) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_883) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_883) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_883) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_883) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_883) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_883) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_883) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_883) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_883) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_883) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_883) + ceil32(return_data.size) + 292] = this.address
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
            mem[132] = -1
            mem[164] = 2
            mem[196] = this.address
            require ext_code.size(address(lendingPoolAddress))
            call address(lendingPoolAddress).repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args address(wantAddress), -1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not t:
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _841 = mem[96 len 4], uint8(arg1) << 216
                    _845 = uint32(this.address), mem[228 len 28]
                    require uint32(this.address), mem[228 len 28] <= 4294967296
                    require uint32(this.address), mem[228 len 28] + 32 <= return_data.size
                    require return_data.size >= mem[uint32(this.address), mem[228 len 28] + 96] + uint32(this.address), mem[228 len 28] + 32 and mem[uint32(this.address), mem[228 len 28] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[228 len 28] + 96]
                    _885 = mem[_845 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_845 + 96])] = mem[_845 + 128 len ceil32(mem[_845 + 96])]
                    borrowRateMax = uint16(_841) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _885 % 32:
                        mem[_885 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_885 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_885 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_885 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_885 + ceil32(return_data.size) + 164] = s
                                mem[_885 + ceil32(return_data.size) + 196] = this.address
                                mem[_885 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_885 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_885 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_885 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_885 + ceil32(return_data.size) + 196] = 2
                                    mem[_885 + ceil32(return_data.size) + 228] = 0
                                    mem[_885 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_885) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_885) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_885) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_885) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_885) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_885) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_885) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_885) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_885) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_885) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_885) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_885) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_885) + ceil32(return_data.size) + 292] = this.address
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
                mem[132] = -1
                mem[164] = this.address
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args address(wantAddress), -1, this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                reserves = 0
                require ext_code.size(address(lendingPoolAddress))
                call address(lendingPoolAddress).setUserEMode(uint8 arg1) with:
                     gas gas_remaining wei
                    args (arg1 << 248)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 == arg1:
                    borrowRateMax = arg2
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
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
                else:
                    mem[96] = 0x6c6f6ae100000000000000000000000000000000000000000000000000000000
                    mem[100] = arg1
                    require ext_code.size(address(lendingPoolAddress))
                    staticcall address(lendingPoolAddress).getEModeCategoryData(uint8 arg1) with:
                            gas gas_remaining wei
                           args (arg1 << 248)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 160
                    _903 = mem[96 len 4], uint8(arg1) << 216
                    _907 = uint32(this.address), mem[228 len 28]
                    require uint32(this.address), mem[228 len 28] <= 4294967296
                    require uint32(this.address), mem[228 len 28] + 32 <= return_data.size
                    require return_data.size >= mem[uint32(this.address), mem[228 len 28] + 96] + uint32(this.address), mem[228 len 28] + 32 and mem[uint32(this.address), mem[228 len 28] + 96] <= 4294967296
                    mem[ceil32(return_data.size) + 96] = mem[uint32(this.address), mem[228 len 28] + 96]
                    _948 = mem[_907 + 96]
                    mem[ceil32(return_data.size) + 128 len ceil32(mem[_907 + 96])] = mem[_907 + 128 len ceil32(mem[_907 + 96])]
                    borrowRateMax = uint16(_903) / 100
                    if arg3 > borrowRateMax:
                        revert with 0, '!rate'
                    if arg4 > 10:
                        revert with 0, '!depth'
                    borrowRate = arg3
                    borrowDepth = arg4
                    require ext_code.size(address(wantAddress))
                    staticcall address(wantAddress).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not _948 % 32:
                        mem[_948 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[_948 + ceil32(return_data.size) + 128]
                            while idx < borrowDepth:
                                mem[_948 + ceil32(return_data.size) + 128] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[_948 + ceil32(return_data.size) + 132] = address(wantAddress)
                                mem[_948 + ceil32(return_data.size) + 164] = s
                                mem[_948 + ceil32(return_data.size) + 196] = this.address
                                mem[_948 + ceil32(return_data.size) + 228] = 0
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
                                    mem[_948 + ceil32(return_data.size) + 128] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[_948 + ceil32(return_data.size) + 132] = address(wantAddress)
                                    mem[_948 + ceil32(return_data.size) + 164] = borrowRate * s / 100
                                    mem[_948 + ceil32(return_data.size) + 196] = 2
                                    mem[_948 + ceil32(return_data.size) + 228] = 0
                                    mem[_948 + ceil32(return_data.size) + 260] = this.address
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
                        mem[floor32(_948) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= minLeverage:
                            idx = 0
                            s = mem[floor32(_948) + ceil32(return_data.size) + 160]
                            while idx < borrowDepth:
                                mem[floor32(_948) + ceil32(return_data.size) + 160] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
                                mem[floor32(_948) + ceil32(return_data.size) + 164] = address(wantAddress)
                                mem[floor32(_948) + ceil32(return_data.size) + 196] = s
                                mem[floor32(_948) + ceil32(return_data.size) + 228] = this.address
                                mem[floor32(_948) + ceil32(return_data.size) + 260] = 0
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
                                    mem[floor32(_948) + ceil32(return_data.size) + 160] = 0xa415bcad00000000000000000000000000000000000000000000000000000000
                                    mem[floor32(_948) + ceil32(return_data.size) + 164] = address(wantAddress)
                                    mem[floor32(_948) + ceil32(return_data.size) + 196] = borrowRate * s / 100
                                    mem[floor32(_948) + ceil32(return_data.size) + 228] = 2
                                    mem[floor32(_948) + ceil32(return_data.size) + 260] = 0
                                    mem[floor32(_948) + ceil32(return_data.size) + 292] = this.address
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
    emit 0x469f825b: arg1 << 248, borrowRateMax, borrowRate, borrowDepth
}



}
