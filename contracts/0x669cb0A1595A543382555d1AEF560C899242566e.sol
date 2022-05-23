contract main {




// =====================  Runtime code  =====================


#
#  - buyTrancheAToken(uint256 arg1, uint256 arg2)
#  - buyTrancheBToken(uint256 arg1, uint256 arg2)
#  - redeemTrancheAToken(uint256 arg1, uint256 arg2)
#  - redeemTrancheBToken(uint256 arg1, uint256 arg2)
#
const getEthBalance = eth.balance(this.address)

const AAVE_REFERRAL_CODE = 0

const PERCENT_DIVIDER = 10000

const ETH_ADDR = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address adminToolsAddress;
uint32 stor152;
address feesCollectorAddress;
uint256 stor152;
address tranchesDeployerAddress;
address lendingPoolAddressProvider;
address wethGatewayAddress;
address aaveIncentiveControllerAddress;
address wrappedEthAddress;
uint256 tranchePairsCounter;
uint256 totalBlocksPerYear;
uint8 stor160;
uint32 stor160; offset 8
uint32 redeemTimeout;
mapping of struct tranche;
mapping of struct trancheAExchangeRate;
mapping of uint256 lastActivity;
mapping of uint8 stor164;
address rewardsTokenAddress;
address sub_6704888eAddress;
mapping of uint256 sub_6202a676;
mapping of uint256 sub_5ac91ced;
mapping of struct sub_3964ad72;
mapping of struct sub_17d5bf07;

function sub_09b8042f(?) {
    return sub_6704888eAddress
}

function tranchePairsCounter() {
    return tranchePairsCounter
}

function redeemTimeout() {
    return redeemTimeout
}

function sub_17d5bf07(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_17d5bf07[address(arg1)][arg2][arg3].field_0, sub_17d5bf07[address(arg1)][arg2][arg3].field_256
}

function sub_277e2ab6(?) {
    require calldata.size - 4 >= 32
    return bool(stor164[arg1])
}

function trancheAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tranche[arg1].field_0, tranche[arg1].field_256, tranche[arg1].field_512, tranche[arg1].field_768
}

function sub_3964ad72(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_3964ad72[address(arg1)][arg2][arg3].field_0, sub_3964ad72[address(arg1)][arg2][arg3].field_256
}

function sub_41a327f4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_17d5bf07[arg1][arg2][arg3].field_0, sub_17d5bf07[arg1][arg2][arg3].field_256
}

function getTrancheAExchangeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return trancheAExchangeRate[arg1].field_512
}

function sub_5ac91ced(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_5ac91ced[arg1][arg2]
}

function sub_6181a7eb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_5ac91ced[address(arg1)][arg2]
}

function sub_6202a676(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6202a676[address(arg1)][arg2]
}

function lendingPoolAddressProvider() {
    return lendingPoolAddressProvider
}

function sub_6704888e(?) {
    return sub_6704888eAddress
}

function sub_6bc73adf(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6202a676[arg1][arg2]
}

function wrappedEthAddress() {
    return wrappedEthAddress
}

function sub_837e929d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_3964ad72[arg1][arg2][arg3].field_0, sub_3964ad72[arg1][arg2][arg3].field_256
}

function owner() {
    return owner
}

function aaveIncentiveControllerAddress() {
    return aaveIncentiveControllerAddress
}

function trancheParameters(uint256 arg1) {
    require calldata.size - 4 >= 32
    return trancheAExchangeRate[arg1].field_0, 
           trancheAExchangeRate[arg1].field_256,
           trancheAExchangeRate[arg1].field_512,
           trancheAExchangeRate[arg1].field_768,
           trancheAExchangeRate[arg1].field_1024,
           trancheAExchangeRate[arg1].field_1024
}

function totalBlocksPerYear() {
    return totalBlocksPerYear
}

function feesCollectorAddress() {
    return address(feesCollectorAddress)
}

function adminToolsAddress() {
    return adminToolsAddress
}

function rewardsToken() {
    return rewardsTokenAddress
}

function getTrancheACurrentRPB(uint256 arg1) {
    require calldata.size - 4 >= 32
    return trancheAExchangeRate[arg1].field_768
}

function wethGatewayAddress() {
    return wethGatewayAddress
}

function lastActivity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastActivity[arg1]
}

function tranchesDeployerAddress() {
    return tranchesDeployerAddress
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAaveUnclaimedRewards() {
    require ext_code.size(aaveIncentiveControllerAddress)
    staticcall aaveIncentiveControllerAddress.getUserUnclaimedRewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getLendingPool() {
    require ext_code.size(lendingPoolAddressProvider)
    staticcall lendingPoolAddressProvider.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setRedemptionTimeout(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    redeemTimeout = arg1
}

function sub_fc9a1623(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    stor164[arg1] = uint8(bool(arg2))
}

function sub_e780cd2a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    sub_6704888eAddress = address(arg1)
}

function setWETHGatewayAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    wethGatewayAddress = arg1
}

function setAavePoolAddressProvider(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    lendingPoolAddressProvider = arg1
}

function setAaveIncentiveControllerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    aaveIncentiveControllerAddress = arg1
}

function setTrancheRedemptionPercentage(uint256 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    trancheAExchangeRate[arg1].field_1024 = arg2
}

function setBlocksPerYear(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    if arg1 <= 0:
        revert with 0, 'JAave: new value not allowed'
    totalBlocksPerYear = arg1
}

function setDecimals(uint256 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    if arg2 > 18:
        revert with 0, 'JAave: too many decimals'
    trancheAExchangeRate[arg1].field_1040 = arg2
}

function getDataProvider() {
    if not lendingPoolAddressProvider:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JAave: set lending pool address provider'
    require ext_code.size(lendingPoolAddressProvider)
    staticcall lendingPoolAddressProvider.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 0x100000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_4746e4c1(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    sub_6202a676[address(arg2)][arg1] = arg3
    sub_3964ad72[address(arg2)][arg1][arg3].field_0 = arg5
    sub_3964ad72[address(arg2)][arg1][arg3].field_256 = arg4
}

function sub_5abec138(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    sub_5ac91ced[address(arg2)][arg1] = arg3
    sub_17d5bf07[address(arg2)][arg1][arg3].field_0 = arg5
    sub_17d5bf07[address(arg2)][arg1][arg3].field_256 = arg4
}

function withdrawEthToFeesCollector(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    call address(feesCollectorAddress) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TH ETH_TRANSFER_FAILED'
}

function sub_2841653d(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'JAave: check addresses'
    if not address(arg2):
        revert with 0, 'JAave: check addresses'
    if not address(arg3):
        revert with 0, 'JAave: check addresses'
    adminToolsAddress = address(arg1)
    address(feesCollectorAddress) = address(arg2)
    tranchesDeployerAddress = address(arg3)
    aaveIncentiveControllerAddress = address(arg4)
    wrappedEthAddress = address(arg5)
    rewardsTokenAddress = address(arg6)
}

function sub_34b00284(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[128] = address(arg1)
    if arg2:
        mem[160] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[164] = 96
        idx = 0
        s = 128
        t = 292
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(aaveIncentiveControllerAddress)
        call aaveIncentiveControllerAddress.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[292]), arg2, address(feesCollectorAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function calcRPBFromPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not trancheAExchangeRate[arg1].field_512:
        if totalBlocksPerYear <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBlocksPerYear
        trancheAExchangeRate[arg1].field_768 = 0 / totalBlocksPerYear / 10^18
        return (0 / totalBlocksPerYear / 10^18)
    if trancheAExchangeRate[arg1].field_0 * trancheAExchangeRate[arg1].field_512 / trancheAExchangeRate[arg1].field_512 != trancheAExchangeRate[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalBlocksPerYear <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalBlocksPerYear
    trancheAExchangeRate[arg1].field_768 = trancheAExchangeRate[arg1].field_0 * trancheAExchangeRate[arg1].field_512 / totalBlocksPerYear / 10^18
    return (trancheAExchangeRate[arg1].field_0 * trancheAExchangeRate[arg1].field_512 / totalBlocksPerYear / 10^18)
}

function getTrAValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_512)
    staticcall tranche[arg1].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if trancheAExchangeRate[arg1].field_1040 > 18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0]:
        if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
            return (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18))
    else:
        if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != trancheAExchangeRate[arg1].field_512:
            revert with 0, 'SafeMath: multiplication overflow'
        if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
            return (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18))
    ('iszero', ('exp', 10, ('add', 18, ('mul', -1, ('field', 1040, ('stor', ('map', ('param', 'arg1'), ('name', 'trancheAExchangeRate', 162))))))))
    revert
}

function getAaveReserveData(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not lendingPoolAddressProvider:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JAave: set lending pool address provider'
    require ext_code.size(lendingPoolAddressProvider)
    staticcall lendingPoolAddressProvider.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 0x100000000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if tranche[arg1].field_0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                gas gas_remaining wei
               args tranche[arg1].field_0
    else:
        staticcall address(ext_call.return_data[0]).getReserveData(address arg1) with:
                gas gas_remaining wei
               args wrappedEthAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[288] == ext_call.return_data[315 len 5]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[256],
           ext_call.return_data[288] % 1099511627776
}

function sub_377d7c9f(?) {
    require tranchePairsCounter <= test266151307()
    mem[96] = tranchePairsCounter
    if tranchePairsCounter:
        mem[128 len 32 * tranchePairsCounter] = call.data[calldata.size len 32 * tranchePairsCounter]
    idx = 0
    while idx < tranchePairsCounter:
        mem[0] = idx
        mem[32] = 161
        require idx < tranchePairsCounter
        mem[(32 * idx) + 128] = tranche[idx].field_256
        idx = idx + 1
        continue 
    mem[(32 * tranchePairsCounter) + 132] = this.address
    require ext_code.size(aaveIncentiveControllerAddress)
    staticcall aaveIncentiveControllerAddress.getUserUnclaimedRewards(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(32 * tranchePairsCounter) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * tranchePairsCounter) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[(32 * tranchePairsCounter) + ceil32(return_data.size) + 128] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * tranchePairsCounter) + ceil32(return_data.size) + 132] = 96
        mem[(32 * tranchePairsCounter) + ceil32(return_data.size) + 228] = tranchePairsCounter
        idx = 0
        s = 128
        t = mem[64] + 132
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = ext_call.return_data[0]
        mem[(32 * tranchePairsCounter) + ceil32(return_data.size) + 196] = address(feesCollectorAddress)
        require ext_code.size(aaveIncentiveControllerAddress)
        call aaveIncentiveControllerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (64 * tranchePairsCounter) + ceil32(return_data.size) + -mem[64] + 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function getTrBValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tranche[arg1].field_512)
    staticcall tranche[arg1].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if trancheAExchangeRate[arg1].field_1040 > 18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0]:
        if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(-trancheAExchangeRate[arg1].field_1040 + 18)
        if ext_call.return_data[0] <= 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
            return 0
        if 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)))
    if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != trancheAExchangeRate[arg1].field_512:
        revert with 0, 'SafeMath: multiplication overflow'
    if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^(-trancheAExchangeRate[arg1].field_1040 + 18)
    if ext_call.return_data[0] <= trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
        return 0
    if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)))
}

function transferTokenToFeesCollector(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    mem[ceil32(return_data.size) + 132] = address(feesCollectorAddress)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor152)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor152), uint32(stor152), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor152), uint32(stor152), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor152), uint32(stor152), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
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
}

function setTrancheAFixedPercentage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JAave: not an Admin'
    trancheAExchangeRate[arg1].field_0 = arg2
    if not trancheAExchangeRate[arg1].field_512:
        if totalBlocksPerYear <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBlocksPerYear
        trancheAExchangeRate[arg1].field_768 = 0 / totalBlocksPerYear / 10^18
    else:
        if trancheAExchangeRate[arg1].field_0 * trancheAExchangeRate[arg1].field_512 / trancheAExchangeRate[arg1].field_512 != trancheAExchangeRate[arg1].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalBlocksPerYear <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBlocksPerYear
        trancheAExchangeRate[arg1].field_768 = trancheAExchangeRate[arg1].field_0 * trancheAExchangeRate[arg1].field_512 / totalBlocksPerYear / 10^18
    if trancheAExchangeRate[arg1].field_256 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not trancheAExchangeRate[arg1].field_768:
        if trancheAExchangeRate[arg1].field_512 < trancheAExchangeRate[arg1].field_512:
            revert with 0, 'SafeMath: addition overflow'
        trancheAExchangeRate[arg1].field_256 = block.timestamp
    else:
        if (block.timestamp * trancheAExchangeRate[arg1].field_768) - (trancheAExchangeRate[arg1].field_256 * trancheAExchangeRate[arg1].field_768) / trancheAExchangeRate[arg1].field_768 != block.timestamp - trancheAExchangeRate[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if (block.timestamp * trancheAExchangeRate[arg1].field_768) - (trancheAExchangeRate[arg1].field_256 * trancheAExchangeRate[arg1].field_768) + trancheAExchangeRate[arg1].field_512 < trancheAExchangeRate[arg1].field_512:
            revert with 0, 'SafeMath: addition overflow'
        trancheAExchangeRate[arg1].field_512 = (block.timestamp * trancheAExchangeRate[arg1].field_768) - (trancheAExchangeRate[arg1].field_256 * trancheAExchangeRate[arg1].field_768) + trancheAExchangeRate[arg1].field_512
        trancheAExchangeRate[arg1].field_256 = block.timestamp
        trancheAExchangeRate[arg1].field_512 = (block.timestamp * trancheAExchangeRate[arg1].field_768) - (trancheAExchangeRate[arg1].field_256 * trancheAExchangeRate[arg1].field_768) + trancheAExchangeRate[arg1].field_512
}

function getAllATokens() {
    if not lendingPoolAddressProvider:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JAave: set lending pool address provider'
    mem[100] = 0x100000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(lendingPoolAddressProvider)
    staticcall lendingPoolAddressProvider.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 0x100000000000000000000000000000000000000000000000000000000000000
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xf561ae4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xf561ae41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    idx = 0
    s = ceil32(return_data.size) + _10 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _11:
        _30 = mem[s]
        require return_data.size + -_10 + -mem[s] - 32 >= 64
        _32 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        _34 = mem[ceil32(return_data.size) + _10 + _30 + 128]
        require mem[ceil32(return_data.size) + _10 + _30 + 128] <= test266151307()
        require ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 159 < ceil32(return_data.size) + return_data.size + 96
        _39 = mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]
        require mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128] <= test266151307()
        _41 = mem[64]
        require mem[64] + ceil32(mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]) + 32
        mem[_41] = _39
        require _10 + _30 + _34 + _39 + 64 <= return_data.size
        u = 0
        while u < _39:
            mem[u + _41 + 32] = mem[u + ceil32(return_data.size) + _10 + _30 + _34 + 160]
            u = u + 32
            continue 
        if ceil32(_39) > _39:
            mem[_39 + _41 + 32] = 0
        mem[_32] = _41
        require mem[ceil32(return_data.size) + _10 + _30 + 160] == mem[ceil32(return_data.size) + _10 + _30 + 172 len 20]
        mem[_32 + 32] = mem[ceil32(return_data.size) + _10 + _30 + 160]
        mem[t] = _32
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _31 = mem[64]
    mem[mem[64]] = 32
    _33 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + (32 * _33) + 64
    u = mem[64] + 64
    while idx < _33:
        mem[u] = t + -_31 - 64
        _47 = mem[s]
        _48 = mem[mem[s]]
        mem[t] = 64
        _51 = mem[_48]
        mem[t + 64] = mem[_48]
        v = 0
        while v < _51:
            mem[v + t + 96] = mem[v + _48 + 32]
            v = v + 32
            continue 
        if ceil32(_51) > _51:
            mem[_51 + t + 96] = 0
        mem[t + 32] = mem[_47 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = ceil32(_51) + t + 96
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getAllReservesTokens() {
    if not lendingPoolAddressProvider:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'JAave: set lending pool address provider'
    mem[100] = 0x100000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(lendingPoolAddressProvider)
    staticcall lendingPoolAddressProvider.getAddress(bytes32 arg1) with:
            gas gas_remaining wei
           args 0x100000000000000000000000000000000000000000000000000000000000000
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0xb316ff8900000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb316ff89 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 128
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    idx = 0
    s = ceil32(return_data.size) + _10 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _11:
        _30 = mem[s]
        require return_data.size + -_10 + -mem[s] - 32 >= 64
        _32 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        _34 = mem[ceil32(return_data.size) + _10 + _30 + 128]
        require mem[ceil32(return_data.size) + _10 + _30 + 128] <= test266151307()
        require ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 159 < ceil32(return_data.size) + return_data.size + 96
        _39 = mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]
        require mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128] <= test266151307()
        _41 = mem[64]
        require mem[64] + ceil32(mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]) + 32 >= mem[64] and mem[64] + ceil32(mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[ceil32(return_data.size) + _10 + _30 + mem[ceil32(return_data.size) + _10 + _30 + 128] + 128]) + 32
        mem[_41] = _39
        require _10 + _30 + _34 + _39 + 64 <= return_data.size
        u = 0
        while u < _39:
            mem[u + _41 + 32] = mem[u + ceil32(return_data.size) + _10 + _30 + _34 + 160]
            u = u + 32
            continue 
        if ceil32(_39) > _39:
            mem[_39 + _41 + 32] = 0
        mem[_32] = _41
        require mem[ceil32(return_data.size) + _10 + _30 + 160] == mem[ceil32(return_data.size) + _10 + _30 + 172 len 20]
        mem[_32 + 32] = mem[ceil32(return_data.size) + _10 + _30 + 160]
        mem[t] = _32
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _31 = mem[64]
    mem[mem[64]] = 32
    _33 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + (32 * _33) + 64
    u = mem[64] + 64
    while idx < _33:
        mem[u] = t + -_31 - 64
        _47 = mem[s]
        _48 = mem[mem[s]]
        mem[t] = 64
        _51 = mem[_48]
        mem[t + 64] = mem[_48]
        v = 0
        while v < _51:
            mem[v + t + 96] = mem[v + _48 + 32]
            v = v + 32
            continue 
        if ceil32(_51) > _51:
            mem[_51 + t + 96] = 0
        mem[t + 32] = mem[_47 + 44 len 20]
        idx = idx + 1
        s = s + 32
        t = ceil32(_51) + t + 96
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        adminToolsAddress = arg1
        address(feesCollectorAddress) = arg2
        tranchesDeployerAddress = arg3
        aaveIncentiveControllerAddress = arg4
        uint8(stor160.field_0) = 3
        stor160.field_8 % 16777216 = 0
        wrappedEthAddress = arg5
        totalBlocksPerYear = arg7
        rewardsTokenAddress = arg6
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            adminToolsAddress = arg1
            address(feesCollectorAddress) = arg2
            tranchesDeployerAddress = arg3
            aaveIncentiveControllerAddress = arg4
            uint8(stor160.field_0) = 3
            stor160.field_8 % 16777216 = 0
            wrappedEthAddress = arg5
            totalBlocksPerYear = arg7
            rewardsTokenAddress = arg6
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                adminToolsAddress = arg1
                address(feesCollectorAddress) = arg2
                tranchesDeployerAddress = arg3
                aaveIncentiveControllerAddress = arg4
                uint8(stor160.field_0) = 3
                stor160.field_8 % 16777216 = 0
                wrappedEthAddress = arg5
                totalBlocksPerYear = arg7
                rewardsTokenAddress = arg6
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    adminToolsAddress = arg1
                    address(feesCollectorAddress) = arg2
                    tranchesDeployerAddress = arg3
                    aaveIncentiveControllerAddress = arg4
                    uint8(stor160.field_0) = 3
                    stor160.field_8 % 16777216 = 0
                    wrappedEthAddress = arg5
                    totalBlocksPerYear = arg7
                    rewardsTokenAddress = arg6
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        adminToolsAddress = arg1
                        address(feesCollectorAddress) = arg2
                        tranchesDeployerAddress = arg3
                        aaveIncentiveControllerAddress = arg4
                        uint8(stor160.field_0) = 3
                        stor160.field_8 % 16777216 = 0
                        wrappedEthAddress = arg5
                        totalBlocksPerYear = arg7
                        rewardsTokenAddress = arg6
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        adminToolsAddress = arg1
                        address(feesCollectorAddress) = arg2
                        tranchesDeployerAddress = arg3
                        aaveIncentiveControllerAddress = arg4
                        uint8(stor160.field_0) = 3
                        stor160.field_8 % 16777216 = 0
                        wrappedEthAddress = arg5
                        totalBlocksPerYear = arg7
                        rewardsTokenAddress = arg6
                        uint8(stor0.field_8) = 0
}

function addTrancheToProtocol(address arg1, address arg2, string arg3, string arg4, string arg5, string arg6, uint256 arg7, uint8 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 160 >= 128 and ceil32(arg3.length) + ceil32(arg4.length) + 160 <= test266151307()
    mem[ceil32(arg3.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 192 >= 160 and ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192 <= test266151307()
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192] = 0
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg6.length) + 224 >= 192 and ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224 <= test266151307()
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg6.length
    require arg6 + arg6.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len arg6.length] = arg6[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + arg6.length + 224] = 0
    require arg8 == arg8
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 228] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'JAave: not an Admin'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not tranchesDeployerAddress:
        revert with 0, 'JAave: set tranche eth deployer'
    if not lendingPoolAddressProvider:
        revert with 0, 'JAave: set lending pool address provider'
    tranche[stor158].field_0 = arg1
    tranche[stor158].field_256 = arg2
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 224] = 0x9ad4239900000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 228] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 324] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 356 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 356] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 260] = ceil32(arg3.length) + 128
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 356] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 388 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) > Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]:
        mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + (2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 388] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 292] = tranchePairsCounter
    require ext_code.size(tranchesDeployerAddress)
    call tranchesDeployerAddress.0x9ad42399 with:
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 228 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 160]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tranche[stor158].field_512 = ext_call.return_data[12 len 20]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 224] = 0xd93c178300000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 228] = 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 324] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 356 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
    if ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) > Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]:
        mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 356] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 260] = ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 128
    mem[ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 356] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
    mem[ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 388 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])]
    if ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) > Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]:
        mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)] + ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 388] = 0
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 292] = tranchePairsCounter
    require ext_code.size(tranchesDeployerAddress)
    call tranchesDeployerAddress.0xd93c1783 with:
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(arg6.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) + ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    tranche[stor158].field_768 = ext_call.return_data[12 len 20]
    trancheAExchangeRate[stor158].field_1040 = arg8
    trancheAExchangeRate[stor158].field_0 = arg7
    trancheAExchangeRate[stor158].field_256 = block.timestamp
    trancheAExchangeRate[stor158].field_512 = 10^18
    trancheAExchangeRate[stor158].field_1024 = 10000
    if not trancheAExchangeRate[stor158].field_512:
        if totalBlocksPerYear <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBlocksPerYear
        trancheAExchangeRate[stor158].field_768 = 0 / totalBlocksPerYear / 10^18
    else:
        if trancheAExchangeRate[stor158].field_0 * trancheAExchangeRate[stor158].field_512 / trancheAExchangeRate[stor158].field_512 != trancheAExchangeRate[stor158].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalBlocksPerYear <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBlocksPerYear
        trancheAExchangeRate[stor158].field_768 = trancheAExchangeRate[stor158].field_0 * trancheAExchangeRate[stor158].field_512 / totalBlocksPerYear / 10^18
    emit 0x90c97ca7: tranchePairsCounter, tranche[stor158].field_512, tranche[stor158].field_768
    if tranchePairsCounter + 1 < tranchePairsCounter:
        revert with 0, 'SafeMath: addition overflow'
    tranchePairsCounter++
    stor101 = 1
}

function getTrancheBExchangeRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(tranche[arg1].field_768)
    staticcall tranche[arg1].field_768.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if trancheAExchangeRate[arg1].field_1040 >= 18:
        if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(tranche[arg1].field_256)
        staticcall tranche[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(tranche[arg1].field_512)
        staticcall tranche[arg1].field_512.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if trancheAExchangeRate[arg1].field_1040 > 18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                if arg2 + ext_call.return_data[0] < 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                    return 10^18
                if 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > arg2 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if trancheAExchangeRate[arg1].field_1040 >= 18:
                    if arg2 + ext_call.return_data[0] <= 0:
                        return 10^18
                    if not arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return (0 / arg2 + ext_call.return_data[0])
                    else:
                        if (10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return ((10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0])
                else:
                    if trancheAExchangeRate[arg1].field_1040 > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                        return 10^18
                    if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if arg2 + ext_call.return_data[0] <= 0:
                        return 10^18
                    if not (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return (0 / arg2 + ext_call.return_data[0])
                    else:
                        if (10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return ((10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0])
                ('iszero', ('add', ('param', 'arg2'), ('ext_call.return_data', 0, 32)))
        else:
            if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != trancheAExchangeRate[arg1].field_512:
                revert with 0, 'SafeMath: multiplication overflow'
            if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
                revert with 0, 'SafeMath: division by zero'
            if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                if arg2 + ext_call.return_data[0] < trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                    return 10^18
                if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > arg2 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if trancheAExchangeRate[arg1].field_1040 >= 18:
                    if arg2 + ext_call.return_data[0] <= 0:
                        return 10^18
                    if not arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return (0 / arg2 + ext_call.return_data[0])
                    else:
                        if (10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return ((10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0])
                else:
                    if trancheAExchangeRate[arg1].field_1040 > 18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                        return 10^18
                    if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if arg2 + ext_call.return_data[0] <= 0:
                        return 10^18
                    if not (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return (0 / arg2 + ext_call.return_data[0])
                    else:
                        if (10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg2 + ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if arg2 + ext_call.return_data[0]:
                            return ((10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0])
                ('iszero', ('add', ('param', 'arg2'), ('ext_call.return_data', 0, 32)))
    else:
        if trancheAExchangeRate[arg1].field_1040 > 18:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if trancheAExchangeRate[arg1].field_1040 > 18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                    if arg2 + ext_call.return_data[0] < 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                        return 10^18
                    if 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > arg2 + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if trancheAExchangeRate[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] <= 0:
                            return 10^18
                        if not arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return (0 / ext_call.return_data[0])
                        else:
                            if (10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ((10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / ext_call.return_data[0])
                    else:
                        if trancheAExchangeRate[arg1].field_1040 > 18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            return 10^18
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] <= 0:
                            return 10^18
                        if not (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return (0 / ext_call.return_data[0])
                        else:
                            if (10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ((10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != trancheAExchangeRate[arg1].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                    if arg2 + ext_call.return_data[0] < trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                        return 10^18
                    if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > arg2 + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if trancheAExchangeRate[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] <= 0:
                            return 10^18
                        if not arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return (0 / ext_call.return_data[0])
                        else:
                            if (10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ((10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / ext_call.return_data[0])
                    else:
                        if trancheAExchangeRate[arg1].field_1040 > 18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            return 10^18
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] <= 0:
                            return 10^18
                        if not (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return (0 / ext_call.return_data[0])
                        else:
                            if (10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                return ((10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / ext_call.return_data[0])
                    ('iszero', ('ext_call.return_data', 0, 32))
        else:
            if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2 / arg2 != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                revert with 0, 'SafeMath: multiplication overflow'
            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if trancheAExchangeRate[arg1].field_1040 > 18:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0]:
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                    if arg2 + ext_call.return_data[0] < 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                        return 10^18
                    if 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > arg2 + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if trancheAExchangeRate[arg1].field_1040 >= 18:
                        if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                            return 10^18
                        if not arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return (0 / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                        else:
                            if (10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return ((10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                    else:
                        if trancheAExchangeRate[arg1].field_1040 > 18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            return 10^18
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                            return 10^18
                        if not (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return (0 / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                        else:
                            if (10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return ((10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * 0 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                    ('iszero', ('add', ('mul', ('exp', 10, ('add', 18, ('mul', -1, ('field', 1040, ('stor', ('map', ('param', 'arg1'), ('name', 'trancheAExchangeRate', 162))))))), ('param', 'arg2')), ('ext_call.return_data', 0, 32)))
            else:
                if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != trancheAExchangeRate[arg1].field_512:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                    if arg2 + ext_call.return_data[0] < trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                        return 10^18
                    if trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) > arg2 + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if trancheAExchangeRate[arg1].field_1040 >= 18:
                        if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                            return 10^18
                        if not arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return (0 / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                        else:
                            if (10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return ((10^18 * arg2) + (10^18 * ext_call.return_data[0]) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                    else:
                        if trancheAExchangeRate[arg1].field_1040 > 18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            return 10^18
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / arg2 + ext_call.return_data[0] - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^(-trancheAExchangeRate[arg1].field_1040 + 18):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                            return 10^18
                        if not (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)):
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return (0 / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                        else:
                            if (10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0]:
                                return ((10^18 * arg2 * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) + (10^18 * ext_call.return_data[0] * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) - (10^18 * trancheAExchangeRate[arg1].field_512 * ext_call.return_data[0] / 10^18 / 10^(-trancheAExchangeRate[arg1].field_1040 + 18) * 10^(-trancheAExchangeRate[arg1].field_1040 + 18)) / (10^(-trancheAExchangeRate[arg1].field_1040 + 18) * arg2) + ext_call.return_data[0])
                    ('iszero', ('add', ('mul', ('exp', 10, ('add', 18, ('mul', -1, ('field', 1040, ('stor', ('map', ('param', 'arg1'), ('name', 'trancheAExchangeRate', 162))))))), ('param', 'arg2')), ('ext_call.return_data', 0, 32)))
    revert
}



}
