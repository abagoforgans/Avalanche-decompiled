contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - approveAll()
#  - harvest()
#
const wavax = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const snob = 0xc38f41a296a4493ff429f1238e030924a1542e50

const apiVersion = '', 0

const delegatedAssets = 0

const sub_bb70470d(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const pangolin = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const sub_d46b9330(?) = 0x215d5edeb6a6a3f84ae9d72962feaccdf815bf27

const controller = 0xfb7102506b4815a24e3ce3eaa6b834be7a5f2807

const DENOMINATOR = 10000


array of uint256 metadataURI;
uint8 doHealthCheck;
address healthCheckAddress; offset 8
address vaultAddress;
address strategistAddress;
address rewardsAddress;
address keeperAddress;
address wantAddress;
uint256 minReportDelay;
uint256 maxReportDelay;
uint256 profitFactor;
uint256 debtThreshold;
uint8 emergencyExit;
array of address dex;
uint32 stor13;
address proxyAddress;
uint256 stor13;
address voterAddress;
address sub_1cc4d032Address;
address gaugeAddress;
uint256 keep;
uint256 price;
uint256 buffer;
uint256 sub_007a753e;

function sub_007a753e(?) {
    return sub_007a753e
}

function metadataURI() {
    return metadataURI[0 len metadataURI.length]
}

function sub_1cc4d032(?) {
    return sub_1cc4d032Address
}

function debtThreshold() {
    return debtThreshold
}

function want() {
    return wantAddress
}

function strategist() {
    return strategistAddress
}

function dex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < dex.length
    return dex[arg1]
}

function maxReportDelay() {
    return maxReportDelay
}

function voter() {
    return voterAddress
}

function emergencyExit() {
    return bool(emergencyExit)
}

function doHealthCheck() {
    return bool(doHealthCheck)
}

function profitFactor() {
    return profitFactor
}

function minReportDelay() {
    return minReportDelay
}

function rewards() {
    return rewardsAddress
}

function price() {
    return price
}

function gauge() {
    return gaugeAddress
}

function keeper() {
    return keeperAddress
}

function healthCheck() {
    return healthCheckAddress
}

function keep() {
    return keep
}

function proxy() {
    return address(proxyAddress)
}

function buffer() {
    return buffer
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function ethToWant(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function tendTrigger(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() {
    require ext_code.size(address(proxyAddress))
    staticcall address(proxyAddress).balanceOf(address rg1) with:
            gas gas_remaining wei
           args gaugeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setKeep(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    keep = arg1
}

function setBuffer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    buffer = arg1
}

function setProfitFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    profitFactor = arg1
    emit UpdatedProfitFactor(arg1);
}

function setDebtThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    debtThreshold = arg1
    emit UpdatedDebtThreshold(arg1);
}

function setMinReportDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    minReportDelay = arg1
    emit UpdatedMinReportDelay(arg1);
}

function setMaxReportDelay(uint256 arg1) {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    maxReportDelay = arg1
    emit UpdatedMaxReportDelay(arg1);
}

function setKeeper(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1
    keeperAddress = arg1
    emit UpdatedKeeper(arg1);
}

function setStrategist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require arg1
    strategistAddress = arg1
    emit UpdatedStrategist(arg1);
}

function setProxy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    address(proxyAddress) = arg1
    require ext_code.size(arg1)
    call arg1.0xec556889 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    voterAddress = ext_call.return_data[12 len 20]
}

function sub_69618fc6(?) {
    require ext_code.size(sub_1cc4d032Address)
    staticcall sub_1cc4d032Address.getRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(proxyAddress))
    staticcall address(proxyAddress).balanceOf(address rg1) with:
            gas gas_remaining wei
           args gaugeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function setHealthCheck(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    healthCheckAddress = arg1
}

function setDoHealthCheck(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    doHealthCheck = uint8(arg1)
}

function setRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    require arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args rewardsAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardsAddress = arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UpdatedRewards(arg1);
}

function setMetadataURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    metadataURI.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        metadataURI[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while metadataURI.length + 31 / 32 > idx:
        metadataURI[idx] = 0
        idx = idx + 1
        continue 
    emit UpdatedMetadataURI(Array(len=arg1.length, data=arg1[all]));
}

function switchDex(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    if arg2 != 0xe54ca86531e17ef3616d22ca28b0d458b6c89106:
        if arg2 != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
            revert with 0, '!dex'
    require arg1 < dex.length
    dex[arg1] = arg2
    require 0 < dex.length
    require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
    call 0xc38f41a296a4493ff429f1238e030924a1542e50.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args dex, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 0 < dex.length
    require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
    call 0xc38f41a296a4493ff429f1238e030924a1542e50.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args dex, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setEmergencyExit() {
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.guardian() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.management() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, '!authorized'
    emergencyExit = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function sub_e3f2a29b(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if strategistAddress != msg.sender:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
    require ext_code.size(address(proxyAddress))
    if arg1:
        call address(proxyAddress).withdrawAll(address rg1, address rg2) with:
             gas gas_remaining wei
            args gaugeAddress, sub_1cc4d032Address
    else:
        staticcall address(proxyAddress).balanceOf(address rg1) with:
                gas gas_remaining wei
               args gaugeAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(proxyAddress))
        call address(proxyAddress).withdraw(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args gaugeAddress, sub_1cc4d032Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1cc4d032Address)
    call sub_1cc4d032Address.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    price = 0
}

function estimatedTotalAssets() {
    require ext_code.size(sub_1cc4d032Address)
    staticcall sub_1cc4d032Address.getRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(proxyAddress))
    staticcall address(proxyAddress).balanceOf(address rg1) with:
            gas gas_remaining wei
           args gaugeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
}

function isActive() {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    require ext_code.size(sub_1cc4d032Address)
    staticcall sub_1cc4d032Address.getRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(proxyAddress))
    staticcall address(proxyAddress).balanceOf(address rg1) with:
            gas gas_remaining wei
           args gaugeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] > 0)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] > 0)
}

function rescue() {
    require ext_code.size(vaultAddress)
    if msg.sender == strategistAddress:
        staticcall vaultAddress.strategies(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        require bool(ceil32(return_data.size) + 384 <= test266151307())
    else:
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.strategies(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        require bool((2 * ceil32(return_data.size)) + 384 <= test266151307())
    if ext_call.return_data[64]:
        revert with 0, 'working'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    call wantAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() {
    mem[96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(wantAddress)
    staticcall wantAddress.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    require mem[mem[96] + 96] <= test266151307()
    require ceil32(mem[mem[96] + 96]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[96] + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _39 = mem[64]
        mem[mem[64] + 32] = 0x476c6f62654a4c50000000000000000000000000000000000000000000000000
        mem[mem[64] + 40 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        mem[_5 + mem[64] + 40] = 'VoterProxy' << 176
        if ceil32(_5) <= _5:
            _71 = mem[64]
            mem[64] = _5 + mem[64] + 50
            mem[_5 + _39 + 50] = 32
            _77 = mem[_71]
            mem[_5 + _39 + 82] = mem[_71]
            mem[_5 + _39 + 114 len ceil32(_77)] = mem[_71 + 32 len ceil32(_77)]
            if ceil32(_77) > _77:
                mem[_5 + _39 + _77 + 114] = 0
            return 32, mem[_5 + _39 + 82 len ceil32(_77) + 32]
        _74 = mem[64]
        mem[64] = _5 + mem[64] + 50
        mem[_5 + _39 + 50] = 32
        _81 = mem[_74]
        mem[_5 + _39 + 82] = mem[_74]
        mem[_5 + _39 + 114 len ceil32(_81)] = mem[_74 + 32 len ceil32(_81)]
        if ceil32(_81) > _81:
            mem[_5 + _39 + _81 + 114] = 0
        return 32, mem[_5 + _39 + 82 len ceil32(_81) + 32]
    mem[ceil32(return_data.size) + _5 + 128] = 0
    _41 = mem[64]
    mem[mem[64] + 32] = 0x476c6f62654a4c50000000000000000000000000000000000000000000000000
    mem[mem[64] + 40 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    mem[_5 + mem[64] + 40] = 'VoterProxy' << 176
    if ceil32(_5) <= _5:
        _72 = mem[64]
        mem[64] = _5 + mem[64] + 50
        mem[_5 + _41 + 50] = 32
        _79 = mem[_72]
        mem[_5 + _41 + 82] = mem[_72]
        mem[_5 + _41 + 114 len ceil32(_79)] = mem[_72 + 32 len ceil32(_79)]
        if ceil32(_79) > _79:
            mem[_5 + _41 + _79 + 114] = 0
        return 32, mem[_5 + _41 + 82 len ceil32(_79) + 32]
    _76 = mem[64]
    mem[64] = _5 + mem[64] + 50
    mem[_5 + _41 + 50] = 32
    _82 = mem[_76]
    mem[_5 + _41 + 82] = mem[_76]
    mem[_5 + _41 + 114 len ceil32(_82)] = mem[_76 + 32 len ceil32(_82)]
    if ceil32(_82) > _82:
        mem[_5 + _41 + _82 + 114] = 0
    return 32, mem[_5 + _41 + 82 len ceil32(_82) + 32]
}

function sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, '!authorized'
    if wantAddress == arg1:
        revert with 0, '!want'
    if vaultAddress == arg1:
        revert with 0, '!shares'
    mem[ceil32(return_data.size) + 96] = 1
    mem[ceil32(return_data.size) + 128] = 0xc38f41a296a4493ff429f1238e030924a1542e50
    idx = 0
    while idx < 1:
        require idx < 1
        if arg1 == mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args mem[(2 * ceil32(return_data.size)) + 164 len ceil32(return_data.size) + 32]
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 196] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 160] = (5 * ceil32(return_data.size)) + 68
    mem[(4 * ceil32(return_data.size)) + 196 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 192 len 4] = transfer(address rg1, uint256 rg2)
    mem[(4 * ceil32(return_data.size)) + 260] = 32
    mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 324 len floor32((5 * ceil32(return_data.size)) + 99)] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], mem[(4 * ceil32(return_data.size)) + 260 len floor32((5 * ceil32(return_data.size)) + 99) - 68]
    if floor32((5 * ceil32(return_data.size)) + 99) > (5 * ceil32(return_data.size)) + 68:
        mem[(10 * ceil32(return_data.size)) + 392] = 0
    call arg1.mem[(4 * ceil32(return_data.size)) + 324 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 328 len (13 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
            if not mem[(4 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function harvestTrigger(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    if 0 == ext_call.return_data[32]:
        return 0
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] < minReportDelay:
        return 0
    if ext_call.return_data[160] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp - ext_call.return_data[160] >= maxReportDelay:
        return 1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.debtOutstanding() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > debtThreshold:
        return 1
    require ext_code.size(sub_1cc4d032Address)
    staticcall sub_1cc4d032Address.getRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(proxyAddress))
    staticcall address(proxyAddress).balanceOf(address rg1) with:
            gas gas_remaining wei
           args gaugeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if debtThreshold + ext_call.return_data[0] < ext_call.return_data[192]:
            return 1
        if ext_call.return_data[0] <= ext_call.return_data[192]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if profitFactor:
                if 0 / profitFactor:
                    revert with 0, 'SafeMath: multiplication overflow'
            return (0 < ext_call.return_data[0])
        if ext_call.return_data[192] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if profitFactor:
            if 0 / profitFactor:
                revert with 0, 'SafeMath: multiplication overflow'
        return (0 < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold < 0:
        revert with 0, 'SafeMath: addition overflow'
    if debtThreshold + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[192]:
        return 1
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] <= ext_call.return_data[192]:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.creditAvailable() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if profitFactor:
            if 0 / profitFactor:
                revert with 0, 'SafeMath: multiplication overflow'
        return (0 < ext_call.return_data[0])
    if ext_call.return_data[192] > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.creditAvailable() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) - ext_call.return_data[192] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if profitFactor:
        if 0 / profitFactor:
            revert with 0, 'SafeMath: multiplication overflow'
    return (0 < (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) - ext_call.return_data[192])
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == vaultAddress
    require ext_code.size(arg1)
    staticcall arg1.0xfbfa77cf with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == vaultAddress
    mem[ceil32(return_data.size) + 100] = gaugeAddress
    require ext_code.size(address(proxyAddress))
    staticcall address(proxyAddress).balanceOf(address rg1) with:
            gas gas_remaining wei
           args gaugeAddress
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_1cc4d032Address)
        staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_1cc4d032Address)
            call sub_1cc4d032Address.withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
        staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 132] = arg1
        mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 96] = 68
        mem[(6 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(6 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[(6 * ceil32(return_data.size)) + 196] = 32
        mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + 328] = 0
        call 0xc38f41a296a4493ff429f1238e030924a1542e50 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + 264] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 296] = arg1
            mem[(7 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + 260] = 68
            mem[(7 * ceil32(return_data.size)) + 292 len 4] = transfer(address rg1, uint256 rg2)
            mem[(7 * ceil32(return_data.size)) + 360] = 32
            mem[(7 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), ext_call.return_data[0], 0
            mem[(7 * ceil32(return_data.size)) + 492] = 0
            call wantAddress with:
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
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 456] == bool(mem[(7 * ceil32(return_data.size)) + 456])
                    if not mem[(7 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                if not mem[(6 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address rg1, uint256 rg2)
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), ext_call.return_data[0], 0
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call wantAddress with:
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
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(10 * ceil32(return_data.size)) + 526 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(10 * ceil32(return_data.size)) + 558 len (3 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = gaugeAddress
        mem[(2 * ceil32(return_data.size)) + 132] = sub_1cc4d032Address
        require ext_code.size(address(proxyAddress))
        call address(proxyAddress).withdrawAll(address rg1, address rg2) with:
             gas gas_remaining wei
            args gaugeAddress, sub_1cc4d032Address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(sub_1cc4d032Address)
        staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_1cc4d032Address)
            call sub_1cc4d032Address.withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(0xc38f41a296a4493ff429f1238e030924a1542e50)
        staticcall 0xc38f41a296a4493ff429f1238e030924a1542e50.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = arg1
        mem[(7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
        mem[(7 * ceil32(return_data.size)) + 96] = 68
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = transfer(address rg1, uint256 rg2)
        mem[(7 * ceil32(return_data.size)) + 196] = 32
        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(0xc38f41a296a4493ff429f1238e030924a1542e50):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 260 len 96] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0
        mem[(7 * ceil32(return_data.size)) + 328] = 0
        call 0xc38f41a296a4493ff429f1238e030924a1542e50 with:
           funct Mask(32, 224, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + 264] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 296] = arg1
            mem[(8 * ceil32(return_data.size)) + 328] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + 260] = 68
            mem[(8 * ceil32(return_data.size)) + 292 len 4] = transfer(address rg1, uint256 rg2)
            mem[(8 * ceil32(return_data.size)) + 360] = 32
            mem[(8 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + 424 len 96] = 0, address(arg1), ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + 492] = 0
            call wantAddress with:
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
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + 456] == bool(mem[(8 * ceil32(return_data.size)) + 456])
                    if not mem[(8 * ceil32(return_data.size)) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                if not mem[(7 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg1
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = transfer(address rg1, uint256 rg2)
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(arg1), ext_call.return_data[0], 0
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call wantAddress with:
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
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(12 * ceil32(return_data.size)) + 526 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
                    if not mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[(12 * ceil32(return_data.size)) + 558 len (19 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function tend() {
    require ext_code.size(vaultAddress)
    if msg.sender == keeperAddress:
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1cc4d032Address)
        staticcall sub_1cc4d032Address.getRatio() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 96] = 30
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
        if price > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[(2 * ceil32(return_data.size)) + 164] = gaugeAddress
        require ext_code.size(address(proxyAddress))
        staticcall address(proxyAddress).balanceOf(address rg1) with:
                gas gas_remaining wei
               args gaugeAddress
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 160] = 26
            mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            price = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(sub_1cc4d032Address)
                call sub_1cc4d032Address.deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(sub_1cc4d032Address)
            staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                mem[(7 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                mem[(7 * ceil32(return_data.size)) + 224] = 68
                mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                mem[(7 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                mem[(7 * ceil32(return_data.size)) + 324] = 32
                mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(sub_1cc4d032Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                mem[(7 * ceil32(return_data.size)) + 456] = 0
                call sub_1cc4d032Address with:
                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                        if not mem[(7 * ceil32(return_data.size)) + 420]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                require ext_code.size(address(proxyAddress))
                call address(proxyAddress).deposit(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args gaugeAddress, sub_1cc4d032Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - price:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(4 * ceil32(return_data.size)) + 160] = 26
            mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            price = ext_call.return_data[0]
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18:
                mem[(4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_1cc4d032Address)
                    call sub_1cc4d032Address.deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(sub_1cc4d032Address)
                staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(7 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 224] = 68
                    mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                    mem[(7 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + 324] = 32
                    mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(sub_1cc4d032Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 456] = 0
                    call sub_1cc4d032Address with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                            if not mem[(7 * ceil32(return_data.size)) + 420]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(proxyAddress))
                    call address(proxyAddress).deposit(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args gaugeAddress, sub_1cc4d032Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 != buffer:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(4 * ceil32(return_data.size)) + 224] = 26
                mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                if (buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000) + sub_007a753e < sub_007a753e:
                    revert with 0, 'SafeMath: addition overflow'
                sub_007a753e += buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_1cc4d032Address)
                    call sub_1cc4d032Address.deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                require ext_code.size(sub_1cc4d032Address)
                staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(7 * ceil32(return_data.size)) + 324] = address(proxyAddress)
                    mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 288] = 68
                    mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor13)
                    mem[(7 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + 388] = 32
                    mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(sub_1cc4d032Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 520] = 0
                    call sub_1cc4d032Address with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                            if not mem[(7 * ceil32(return_data.size)) + 484]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(proxyAddress))
                    call address(proxyAddress).deposit(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args gaugeAddress, sub_1cc4d032Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == strategistAddress:
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_1cc4d032Address)
            staticcall sub_1cc4d032Address.getRatio() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 96] = 30
            mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
            if price > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[(2 * ceil32(return_data.size)) + 164] = gaugeAddress
            require ext_code.size(address(proxyAddress))
            staticcall address(proxyAddress).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args gaugeAddress
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 160] = 26
                mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                price = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(sub_1cc4d032Address)
                    call sub_1cc4d032Address.deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 228] = this.address
                require ext_code.size(sub_1cc4d032Address)
                staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    mem[(7 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 224] = 68
                    mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                    mem[(7 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                    mem[(7 * ceil32(return_data.size)) + 324] = 32
                    mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(sub_1cc4d032Address):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                    mem[(7 * ceil32(return_data.size)) + 456] = 0
                    call sub_1cc4d032Address with:
                       funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                            if not mem[(7 * ceil32(return_data.size)) + 420]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(address(proxyAddress))
                    call address(proxyAddress).deposit(address rg1, address rg2) with:
                         gas gas_remaining wei
                        args gaugeAddress, sub_1cc4d032Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - price:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(4 * ceil32(return_data.size)) + 160] = 26
                mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                price = ext_call.return_data[0]
                if not (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18:
                    mem[(4 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_1cc4d032Address)
                        call sub_1cc4d032Address.deposit(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(sub_1cc4d032Address)
                    staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                        mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 224] = 68
                        mem[(7 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                        mem[(7 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(7 * ceil32(return_data.size)) + 324] = 32
                        mem[(7 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_1cc4d032Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 456] = 0
                        call sub_1cc4d032Address with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 420] == bool(mem[(7 * ceil32(return_data.size)) + 420])
                                if not mem[(7 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(proxyAddress))
                        call address(proxyAddress).deposit(address rg1, address rg2) with:
                             gas gas_remaining wei
                            args gaugeAddress, sub_1cc4d032Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 != buffer:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(4 * ceil32(return_data.size)) + 224] = 26
                    mem[(4 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                    if (buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000) + sub_007a753e < sub_007a753e:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_007a753e += buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_1cc4d032Address)
                        call sub_1cc4d032Address.deposit(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 292] = this.address
                    require ext_code.size(sub_1cc4d032Address)
                    staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 324] = address(proxyAddress)
                        mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 288] = 68
                        mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor13)
                        mem[(7 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(7 * ceil32(return_data.size)) + 388] = 32
                        mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_1cc4d032Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(7 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 0
                        call sub_1cc4d032Address with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                                if not mem[(7 * ceil32(return_data.size)) + 484]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(proxyAddress))
                        call address(proxyAddress).deposit(address rg1, address rg2) with:
                             gas gas_remaining wei
                            args gaugeAddress, sub_1cc4d032Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            staticcall vaultAddress.governance() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(vaultAddress)
            if msg.sender == ext_call.return_data[12 len 20]:
                staticcall vaultAddress.debtOutstanding() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_1cc4d032Address)
                staticcall sub_1cc4d032Address.getRatio() with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 96] = 30
                mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                if price > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[(4 * ceil32(return_data.size)) + 164] = gaugeAddress
                require ext_code.size(address(proxyAddress))
                staticcall address(proxyAddress).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args gaugeAddress
                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    mem[(6 * ceil32(return_data.size)) + 160] = 26
                    mem[(6 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    price = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        require ext_code.size(sub_1cc4d032Address)
                        call sub_1cc4d032Address.deposit(uint256 rg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(7 * ceil32(return_data.size)) + 228] = this.address
                    require ext_code.size(sub_1cc4d032Address)
                    staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        mem[(8 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                        mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 224] = 68
                        mem[(8 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                        mem[(8 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                        mem[(8 * ceil32(return_data.size)) + 324] = 32
                        mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(sub_1cc4d032Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[(8 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                        mem[(8 * ceil32(return_data.size)) + 456] = 0
                        call sub_1cc4d032Address with:
                           funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if ext_call.return_data[0]:
                                    revert with memory
                                      from 128
                                       len ext_call.return_data[0]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if ext_call.return_data[0]:
                                require ext_call.return_data[0] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                                if not mem[(8 * ceil32(return_data.size)) + 420]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(address(proxyAddress))
                        call address(proxyAddress).deposit(address rg1, address rg2) with:
                             gas gas_remaining wei
                            args gaugeAddress, sub_1cc4d032Address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - price:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(6 * ceil32(return_data.size)) + 160] = 26
                    mem[(6 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                    price = ext_call.return_data[0]
                    if not (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18:
                        mem[(6 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_1cc4d032Address)
                            call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(sub_1cc4d032Address)
                        staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                            mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 224] = 68
                            mem[(8 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                            mem[(8 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                            mem[(8 * ceil32(return_data.size)) + 324] = 32
                            mem[(8 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(8 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                            mem[(8 * ceil32(return_data.size)) + 456] = 0
                            call sub_1cc4d032Address with:
                               funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(8 * ceil32(return_data.size)) + 420] == bool(mem[(8 * ceil32(return_data.size)) + 420])
                                    if not mem[(8 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(proxyAddress))
                            call address(proxyAddress).deposit(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args gaugeAddress, sub_1cc4d032Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 != buffer:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(6 * ceil32(return_data.size)) + 224] = 26
                        mem[(6 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                        if (buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000) + sub_007a753e < sub_007a753e:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_007a753e += buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000
                        mem[(6 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_1cc4d032Address)
                            call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(7 * ceil32(return_data.size)) + 292] = this.address
                        require ext_code.size(sub_1cc4d032Address)
                        staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(8 * ceil32(return_data.size)) + 324] = address(proxyAddress)
                            mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                            mem[(8 * ceil32(return_data.size)) + 288] = 68
                            mem[(8 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor13)
                            mem[(8 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                            mem[(8 * ceil32(return_data.size)) + 388] = 32
                            mem[(8 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(8 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                            mem[(8 * ceil32(return_data.size)) + 520] = 0
                            call sub_1cc4d032Address with:
                               funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(8 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(8 * ceil32(return_data.size)) + 484] == bool(mem[(8 * ceil32(return_data.size)) + 484])
                                    if not mem[(8 * ceil32(return_data.size)) + 484]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(proxyAddress))
                            call address(proxyAddress).deposit(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args gaugeAddress, sub_1cc4d032Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                staticcall vaultAddress.guardian() with:
                        gas gas_remaining wei
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(vaultAddress)
                if msg.sender == ext_call.return_data[12 len 20]:
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_1cc4d032Address)
                    staticcall sub_1cc4d032Address.getRatio() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(6 * ceil32(return_data.size)) + 96] = 30
                    mem[(6 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                    if price > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(6 * ceil32(return_data.size)) + 164] = gaugeAddress
                    require ext_code.size(address(proxyAddress))
                    staticcall address(proxyAddress).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args gaugeAddress
                    mem[(6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(7 * ceil32(return_data.size)) + 160] = 26
                        mem[(7 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        price = ext_call.return_data[0]
                        mem[(7 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_1cc4d032Address)
                            call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(8 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(sub_1cc4d032Address)
                        staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(10 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                            mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(10 * ceil32(return_data.size)) + 224] = 68
                            mem[(10 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                            mem[(10 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                            mem[(10 * ceil32(return_data.size)) + 324] = 32
                            mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(10 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                            mem[(10 * ceil32(return_data.size)) + 456] = 0
                            call sub_1cc4d032Address with:
                               funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                                    if not mem[(10 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(proxyAddress))
                            call address(proxyAddress).deposit(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args gaugeAddress, sub_1cc4d032Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - price:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(7 * ceil32(return_data.size)) + 160] = 26
                        mem[(7 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        price = ext_call.return_data[0]
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18:
                            mem[(7 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(sub_1cc4d032Address)
                                call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(sub_1cc4d032Address)
                            staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(10 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                                mem[(10 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                mem[(10 * ceil32(return_data.size)) + 224] = 68
                                mem[(10 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                                mem[(10 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                                mem[(10 * ceil32(return_data.size)) + 324] = 32
                                mem[(10 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(10 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                                mem[(10 * ceil32(return_data.size)) + 456] = 0
                                call sub_1cc4d032Address with:
                                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(10 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(10 * ceil32(return_data.size)) + 420] == bool(mem[(10 * ceil32(return_data.size)) + 420])
                                        if not mem[(10 * ceil32(return_data.size)) + 420]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(address(proxyAddress))
                                call address(proxyAddress).deposit(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args gaugeAddress, sub_1cc4d032Address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 != buffer:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(7 * ceil32(return_data.size)) + 224] = 26
                            mem[(7 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                            if (buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000) + sub_007a753e < sub_007a753e:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_007a753e += buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000
                            mem[(7 * ceil32(return_data.size)) + 292] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(sub_1cc4d032Address)
                                call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(8 * ceil32(return_data.size)) + 292] = this.address
                            require ext_code.size(sub_1cc4d032Address)
                            staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(10 * ceil32(return_data.size)) + 324] = address(proxyAddress)
                                mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                                mem[(10 * ceil32(return_data.size)) + 288] = 68
                                mem[(10 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor13)
                                mem[(10 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                                mem[(10 * ceil32(return_data.size)) + 388] = 32
                                mem[(10 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(10 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                                mem[(10 * ceil32(return_data.size)) + 520] = 0
                                call sub_1cc4d032Address with:
                                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(10 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(10 * ceil32(return_data.size)) + 484] == bool(mem[(10 * ceil32(return_data.size)) + 484])
                                        if not mem[(10 * ceil32(return_data.size)) + 484]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(address(proxyAddress))
                                call address(proxyAddress).deposit(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args gaugeAddress, sub_1cc4d032Address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    staticcall vaultAddress.management() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, '!authorized'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.debtOutstanding() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_1cc4d032Address)
                    staticcall sub_1cc4d032Address.getRatio() with:
                            gas gas_remaining wei
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(7 * ceil32(return_data.size)) + 96] = 30
                    mem[(7 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
                    if price > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    mem[(7 * ceil32(return_data.size)) + 164] = gaugeAddress
                    require ext_code.size(address(proxyAddress))
                    staticcall address(proxyAddress).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args gaugeAddress
                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        mem[(8 * ceil32(return_data.size)) + 160] = 26
                        mem[(8 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        price = ext_call.return_data[0]
                        mem[(8 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            require ext_code.size(sub_1cc4d032Address)
                            call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        mem[(10 * ceil32(return_data.size)) + 228] = this.address
                        require ext_code.size(sub_1cc4d032Address)
                        staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[(11 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                            mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            mem[(11 * ceil32(return_data.size)) + 224] = 68
                            mem[(11 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                            mem[(11 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                            mem[(11 * ceil32(return_data.size)) + 324] = 32
                            mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(sub_1cc4d032Address):
                                revert with 0, 'Address: call to non-contract'
                            mem[(11 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                            mem[(11 * ceil32(return_data.size)) + 456] = 0
                            call sub_1cc4d032Address with:
                               funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if ext_call.return_data[0]:
                                        revert with memory
                                          from 128
                                           len ext_call.return_data[0]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if ext_call.return_data[0]:
                                    require ext_call.return_data[0] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                    if not mem[(11 * ceil32(return_data.size)) + 420]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            require ext_code.size(address(proxyAddress))
                            call address(proxyAddress).deposit(address rg1, address rg2) with:
                                 gas gas_remaining wei
                                args gaugeAddress, sub_1cc4d032Address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - price:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[(8 * ceil32(return_data.size)) + 160] = 26
                        mem[(8 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
                        price = ext_call.return_data[0]
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18:
                            mem[(8 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(sub_1cc4d032Address)
                                call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 228] = this.address
                            require ext_code.size(sub_1cc4d032Address)
                            staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(11 * ceil32(return_data.size)) + 260] = address(proxyAddress)
                                mem[(11 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                mem[(11 * ceil32(return_data.size)) + 224] = 68
                                mem[(11 * ceil32(return_data.size)) + 260 len 28] = Mask(224, 0, stor13)
                                mem[(11 * ceil32(return_data.size)) + 256 len 4] = transfer(address rg1, uint256 rg2)
                                mem[(11 * ceil32(return_data.size)) + 324] = 32
                                mem[(11 * ceil32(return_data.size)) + 356] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(11 * ceil32(return_data.size)) + 388 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                                mem[(11 * ceil32(return_data.size)) + 456] = 0
                                call sub_1cc4d032Address with:
                                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(11 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(11 * ceil32(return_data.size)) + 420] == bool(mem[(11 * ceil32(return_data.size)) + 420])
                                        if not mem[(11 * ceil32(return_data.size)) + 420]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(address(proxyAddress))
                                call address(proxyAddress).deposit(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args gaugeAddress, sub_1cc4d032Address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 != buffer:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[(8 * ceil32(return_data.size)) + 224] = 26
                            mem[(8 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                            if (buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000) + sub_007a753e < sub_007a753e:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_007a753e += buffer * (ext_call.return_data[0] * ext_call.return_data[0]) - (price * ext_call.return_data[0]) / 10^18 / 10000
                            mem[(8 * ceil32(return_data.size)) + 292] = this.address
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                require ext_code.size(sub_1cc4d032Address)
                                call sub_1cc4d032Address.deposit(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            mem[(10 * ceil32(return_data.size)) + 292] = this.address
                            require ext_code.size(sub_1cc4d032Address)
                            staticcall sub_1cc4d032Address.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                mem[(11 * ceil32(return_data.size)) + 324] = address(proxyAddress)
                                mem[(11 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                                mem[(11 * ceil32(return_data.size)) + 288] = 68
                                mem[(11 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 0, stor13)
                                mem[(11 * ceil32(return_data.size)) + 320 len 4] = transfer(address rg1, uint256 rg2)
                                mem[(11 * ceil32(return_data.size)) + 388] = 32
                                mem[(11 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(sub_1cc4d032Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(11 * ceil32(return_data.size)) + 452 len 96] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0
                                mem[(11 * ceil32(return_data.size)) + 520] = 0
                                call sub_1cc4d032Address with:
                                   funct Mask(32, 224, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address rg1, uint256 rg2), Mask(224, 0, stor13), uint32(stor13), ext_call.return_data[0], 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if ext_call.return_data[0]:
                                            revert with memory
                                              from 128
                                               len ext_call.return_data[0]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if ext_call.return_data[0]:
                                        require ext_call.return_data[0] >= 32
                                        require mem[128] == bool(mem[128])
                                        if not mem[128]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(11 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(11 * ceil32(return_data.size)) + 484] == bool(mem[(11 * ceil32(return_data.size)) + 484])
                                        if not mem[(11 * ceil32(return_data.size)) + 484]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(address(proxyAddress))
                                call address(proxyAddress).deposit(address rg1, address rg2) with:
                                     gas gas_remaining wei
                                    args gaugeAddress, sub_1cc4d032Address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
