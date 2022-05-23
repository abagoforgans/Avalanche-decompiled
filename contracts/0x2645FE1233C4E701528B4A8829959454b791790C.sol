contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - tend()
#  - harvest()
#  - tendTrigger(uint256 arg1)
#  - initialize(address arg1, address arg2, address arg3, address arg4)
#
const name = 'StrategyGenLevAAVE', 0

const apiVersion = '0.4.3.1', 0

const delegatedAssets = 0


array of uint256 metadataURI;
uint8 stor1;
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
uint8 stor11;
uint8 stor11; offset 8
address aTokenAddress; offset 16
address debtTokenAddress;
address stor13;
address stor14;
uint256 sub_a8f9c0d8;
uint256 sub_4c32e270;
uint256 sub_8e5b14b0;
uint8 sub_387f504a;
uint256 minWant;
uint256 minRatio;
uint256 sub_0ac96194;
uint8 swapRouter;
uint16 stor22; offset 16
uint256 stor22;

function metadataURI() payable {
    return metadataURI[0 len metadataURI.length]
}

function sub_0ac96194(?) payable {
    return sub_0ac96194
}

function debtThreshold() payable {
    return debtThreshold
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function minWant() payable {
    return minWant
}

function maxReportDelay() payable {
    return maxReportDelay
}

function sub_387f504a(?) payable {
    return sub_387f504a
}

function sub_4c32e270(?) payable {
    return sub_4c32e270
}

function emergencyExit() payable {
    return bool(uint8(stor11.field_0))
}

function doHealthCheck() payable {
    return bool(stor1)
}

function isOriginal() payable {
    return bool(uint8(stor11.field_8))
}

function minRatio() payable {
    return minRatio
}

function profitFactor() payable {
    return profitFactor
}

function sub_8e5b14b0(?) payable {
    return sub_8e5b14b0
}

function minReportDelay() payable {
    return minReportDelay
}

function rewards() payable {
    return rewardsAddress
}

function aToken() payable {
    return aTokenAddress
}

function sub_a8f9c0d8(?) payable {
    return sub_a8f9c0d8
}

function keeper() payable {
    return keeperAddress
}

function healthCheck() payable {
    return healthCheckAddress
}

function swapRouter() payable {
    require swapRouter < 2
    return swapRouter
}

function debtToken() payable {
    return debtTokenAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function setReferralCode(uint16 arg1) payable {
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
    uint16(stor22.field_16) = arg1
}

function clone(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor11.field_8):
        revert with 0, '!clone'
    require ext_code.size(this.address)
    call this.address.0xd0511842 with:
         gas gas_remaining wei
        args 0, 0, msg.sender, msg.sender, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setProfitFactor(uint256 arg1) payable {
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

function setDebtThreshold(uint256 arg1) payable {
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

function setMinReportDelay(uint256 arg1) payable {
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

function setMaxReportDelay(uint256 arg1) payable {
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

function getCurrentPosition() payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function setKeeper(address arg1) payable {
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

function setStrategist(address arg1) payable {
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

function getCurrentSupply() payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    else:
        return 0
}

function clone(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, this.address) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf8c8765e with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Cloned(address(create.new_address));
    return address(create.new_address)
}

function setDoHealthCheck(bool arg1) payable {
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
    stor1 = uint8(arg1)
}

function setHealthCheck(address arg1) payable {
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

function setRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddress != msg.sender:
        revert with 0, '!strategist'
    require arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args rewardsAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    rewardsAddress = arg1
    require ext_code.size(vaultAddress)
    call vaultAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UpdatedRewards(arg1);
}

function setMinsAndMaxs(uint256 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
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
    require arg2 < sub_a8f9c0d8
    require arg3 > 0
    require arg3 < 16
    minWant = arg1
    minRatio = arg2
    sub_387f504a = arg3
}

function getCurrentCollatRatio() payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_784eed6f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 2
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
    require arg1 <= 1
    require arg1 <= 1
    if arg1:
        require arg1 == 1
    if arg1 == 1:
        require stor14
    require arg1 <= 1
    uint256(stor22.field_0) = arg1 or Mask(248, 8, uint256(stor22.field_0))
    sub_0ac96194 = arg2
}

function setMetadataURI(string arg1) payable {
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

function manualReleaseWant(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if arg1:
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function setEmergencyExit() payable {
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
    uint8(stor11.field_0) = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.revokeStrategy() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EmergencyExitEnabled()
}

function manualDeleverage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if arg1:
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1:
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.repay(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                 gas gas_remaining wei
                args wantAddress, arg1, 2, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function setCollateralTargets(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
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
    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address arg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_call.return_data[160] == bool(ext_call.return_data[160])
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    require ext_call.return_data[224] == bool(ext_call.return_data[224])
    require ext_call.return_data[256] == bool(ext_call.return_data[256])
    require ext_call.return_data[288] == bool(ext_call.return_data[288])
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            require arg1 < 0
            require arg2 < 0
        else:
            if 10^14 * ext_call.return_data[64] / ext_call.return_data[64] != 10^14:
                revert with 0, 'SafeMath: multiplication overflow'
            require arg1 < 10^14 * ext_call.return_data[64]
            require arg2 < 10^14 * ext_call.return_data[64]
        require arg1 < arg2
        require arg3 < 0
    else:
        if 10^14 * ext_call.return_data[32] / ext_call.return_data[32] != 10^14:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[64]:
            require arg1 < 0
            require arg2 < 0
        else:
            if 10^14 * ext_call.return_data[64] / ext_call.return_data[64] != 10^14:
                revert with 0, 'SafeMath: multiplication overflow'
            require arg1 < 10^14 * ext_call.return_data[64]
            require arg2 < 10^14 * ext_call.return_data[64]
        require arg1 < arg2
        require arg3 < 10^14 * ext_call.return_data[32]
    sub_4c32e270 = arg1
    sub_8e5b14b0 = arg2
    sub_a8f9c0d8 = arg3
}

function sub_3bbe0b4c(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return arg1
    if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        return arg1
    require swapRouter <= 1
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[160] = wantAddress
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not swapRouter:
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _45 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _47 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _45 + (32 * _47) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _47] = mem[_45 + 224 len 32 * _47]
        require _47 - 1 < _47
        mem[mem[64]] = mem[(32 * _47 - 1) + ceil32(return_data.size) + 224]
    else:
        require ext_code.size(stor14)
        staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _46 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
        _48 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _46 + (32 * _48) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _48] = mem[_46 + 224 len 32 * _48]
        require _48 - 1 < _48
        mem[mem[64]] = mem[(32 * _48 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sweep(address arg1) payable {
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
    idx = 0
    while idx < ext_call.return_data[0]:
        require idx < ext_call.return_data[0]
        if arg1 == mem[(32 * idx) + 140 len 20]:
            revert with 0, '!protected'
        idx = idx + 1
        continue 
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.governance() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = 68
    mem[(4 * ceil32(return_data.size)) + 132 len 28] = address(ext_call.return_data[0]) << 64
    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 196] = 32
    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0
    mem[(4 * ceil32(return_data.size)) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0], 0) << 288)
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
        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
            if not mem[(4 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function migrate(address arg1) payable {
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
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 96] = 30
    mem[(4 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require 0 < minWant
    mem[(4 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 196] = arg1
    mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 160] = 68
    mem[(6 * ceil32(return_data.size)) + 196 len 28] = address(arg1) << 64
    mem[(6 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[(6 * ceil32(return_data.size)) + 260] = 32
    mem[(6 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 324 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call wantAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
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
        mem[(6 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 356] == bool(mem[(6 * ceil32(return_data.size)) + 356])
            if not mem[(6 * ceil32(return_data.size)) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function estimatedRewardsInWant() payable {
    mem[100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = aTokenAddress
    mem[ceil32(return_data.size) + 160] = debtTokenAddress
    mem[ceil32(return_data.size) + 192] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64]), this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
        return ext_call.return_data[0]
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return (2 * ext_call.return_data[0])
    if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        return (2 * ext_call.return_data[0])
    require swapRouter <= 1
    mem[(2 * ceil32(return_data.size)) + 192] = 2
    mem[(2 * ceil32(return_data.size)) + 224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(2 * ceil32(return_data.size)) + 256] = wantAddress
    mem[(2 * ceil32(return_data.size)) + 288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 292] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 324] = 64
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 224
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not swapRouter:
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _108 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 288 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 319
        _110 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]) + 320 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]) + 320
        mem[(4 * ceil32(return_data.size)) + 288] = _110
        require return_data.size >= _108 + (32 * _110) + 32
        mem[(4 * ceil32(return_data.size)) + 320 len 32 * _110] = mem[(2 * ceil32(return_data.size)) + _108 + 320 len 32 * _110]
        require _110 - 1 < _110
        mem[mem[64]] = mem[(32 * _110 - 1) + (4 * ceil32(return_data.size)) + 320]
    else:
        require ext_code.size(stor14)
        staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _109 = mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
        require mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 288 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 319
        _111 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]
        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288] <= test266151307()
        require (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]) + 32 >= 0 and (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]) + 320 <= test266151307()
        mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 288 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 288]) + 320
        mem[(4 * ceil32(return_data.size)) + 288] = _111
        require return_data.size >= _109 + (32 * _111) + 32
        mem[(4 * ceil32(return_data.size)) + 320 len 32 * _111] = mem[(2 * ceil32(return_data.size)) + _109 + 320 len 32 * _111]
        require _111 - 1 < _111
        mem[mem[64]] = mem[(32 * _111 - 1) + (4 * ceil32(return_data.size)) + 320]
    return memory
      from mem[64]
       len 32
}

function estimatedTotalAssets() payable {
    mem[100] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 96] = 30
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < minWant:
        return ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 160] = 30
    mem[(4 * ceil32(return_data.size)) + 192] = 'SafeMath: subtraction overflow'
    mem[(4 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 224] = 2
    mem[(6 * ceil32(return_data.size)) + 256] = aTokenAddress
    mem[(6 * ceil32(return_data.size)) + 288] = debtTokenAddress
    mem[(6 * ceil32(return_data.size)) + 320] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 324] = 64
    mem[(6 * ceil32(return_data.size)) + 388] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 256
    t = (6 * ceil32(return_data.size)) + 420
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 356] = this.address
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 420 len 64]), this.address
    mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
        if not ext_call.return_data[0]:
            return ext_call.return_data[0]
        if 9000 * ext_call.return_data[0] / ext_call.return_data[0] != 9000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9000 * ext_call.return_data[0] / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0])
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return ext_call.return_data[0]
    if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if not 2 * ext_call.return_data[0]:
            return ext_call.return_data[0]
        if 5 * 3600 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 9000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 5 * 3600 * ext_call.return_data[0] / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0])
    require swapRouter <= 1
    mem[(7 * ceil32(return_data.size)) + 352] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(7 * ceil32(return_data.size)) + 384] = wantAddress
    mem[(7 * ceil32(return_data.size)) + 416] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 420] = 2 * ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 452] = 64
    mem[(7 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 352
    t = (7 * ceil32(return_data.size)) + 516
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not swapRouter:
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 516 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (8 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        _220 = mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
        require mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
        require (7 * ceil32(return_data.size)) + return_data.size + 416 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 447
        _222 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]
        require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416] <= test266151307()
        require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]) + 448 <= test266151307()
        mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]
        require return_data.size >= _220 + (32 * _222) + 32
        mem[(8 * ceil32(return_data.size)) + 448 len 32 * _222] = mem[(7 * ceil32(return_data.size)) + _220 + 448 len 32 * _222]
        require _222 - 1 < _222
        if not mem[(32 * _222 - 1) + (8 * ceil32(return_data.size)) + 448]:
            return ext_call.return_data[0]
        if 9000 * mem[(32 * _222 - 1) + (8 * ceil32(return_data.size)) + 448] / mem[(32 * _222 - 1) + (8 * ceil32(return_data.size)) + 448] != 9000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9000 * mem[(32 * _222 - 1) + (8 * ceil32(return_data.size)) + 448] / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9000 * mem[(32 * _222 - 1) + (8 * ceil32(return_data.size)) + 448] / 10000) + ext_call.return_data[0])
    require ext_code.size(stor14)
    staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 2 * ext_call.return_data[0], Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 516 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _221 = mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
    require mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
    require (7 * ceil32(return_data.size)) + return_data.size + 416 > (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 447
    _223 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]
    require mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416] <= test266151307()
    require (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]) + 448 <= test266151307()
    mem[(8 * ceil32(return_data.size)) + 416] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 416 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 416]
    require return_data.size >= _221 + (32 * _223) + 32
    mem[(8 * ceil32(return_data.size)) + 448 len 32 * _223] = mem[(7 * ceil32(return_data.size)) + _221 + 448 len 32 * _223]
    require _223 - 1 < _223
    if not mem[(32 * _223 - 1) + (8 * ceil32(return_data.size)) + 448]:
        return ext_call.return_data[0]
    if 9000 * mem[(32 * _223 - 1) + (8 * ceil32(return_data.size)) + 448] / mem[(32 * _223 - 1) + (8 * ceil32(return_data.size)) + 448] != 9000:
        revert with 0, 'SafeMath: multiplication overflow'
    if 9000 * mem[(32 * _223 - 1) + (8 * ceil32(return_data.size)) + 448] / 10000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((9000 * mem[(32 * _223 - 1) + (8 * ceil32(return_data.size)) + 448] / 10000) + ext_call.return_data[0])
}

function isActive() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.strategies(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96 len 288] = ext_call.return_data[0 len 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require bool(ceil32(return_data.size) + 384 <= test266151307())
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[64]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[128]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[160]
    mem[ceil32(return_data.size) + 288] = ext_call.return_data[192]
    mem[ceil32(return_data.size) + 320] = ext_call.return_data[224]
    mem[ceil32(return_data.size) + 352] = ext_call.return_data[256]
    if ext_call.return_data[64] > 0:
        return (ext_call.return_data[64] > 0)
    mem[ceil32(return_data.size) + 388] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 388] = this.address
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 384] = 30
    mem[(4 * ceil32(return_data.size)) + 416] = 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    mem[(4 * ceil32(return_data.size)) + 452] = this.address
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < minWant:
        return (ext_call.return_data[0] > 0)
    mem[(6 * ceil32(return_data.size)) + 448] = 30
    mem[(6 * ceil32(return_data.size)) + 480] = 'SafeMath: subtraction overflow'
    mem[(6 * ceil32(return_data.size)) + 516] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 512] = 2
    mem[(7 * ceil32(return_data.size)) + 544] = aTokenAddress
    mem[(7 * ceil32(return_data.size)) + 576] = debtTokenAddress
    mem[(7 * ceil32(return_data.size)) + 608] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 612] = 64
    mem[(7 * ceil32(return_data.size)) + 676] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 544
    t = (7 * ceil32(return_data.size)) + 708
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 644] = this.address
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 708 len 64]), this.address
    mem[(7 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
        if not ext_call.return_data[0]:
            return (ext_call.return_data[0] > 0)
        if 9000 * ext_call.return_data[0] / ext_call.return_data[0] != 9000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9000 * ext_call.return_data[0] / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] > 0)
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not uint255(ext_call.return_data[0]):
        return (ext_call.return_data[0] > 0)
    if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        if not 2 * ext_call.return_data[0]:
            return (ext_call.return_data[0] > 0)
        if 5 * 3600 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 9000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 5 * 3600 * ext_call.return_data[0] / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] > 0)
    require swapRouter <= 1
    mem[(8 * ceil32(return_data.size)) + 640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(8 * ceil32(return_data.size)) + 672] = wantAddress
    mem[(8 * ceil32(return_data.size)) + 704] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 708] = 2 * ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 740] = 64
    mem[(8 * ceil32(return_data.size)) + 772] = 2
    idx = 0
    s = (8 * ceil32(return_data.size)) + 640
    t = (8 * ceil32(return_data.size)) + 804
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not swapRouter:
        require ext_code.size(stor13)
        staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 804 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 704
        require return_data.size >= 32
        _236 = mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
        require mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
        require (8 * ceil32(return_data.size)) + return_data.size + 704 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 735
        _238 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]
        require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704] <= test266151307()
        require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]) + 736 <= test266151307()
        mem[(10 * ceil32(return_data.size)) + 704] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]
        require return_data.size >= _236 + (32 * _238) + 32
        mem[(10 * ceil32(return_data.size)) + 736 len 32 * _238] = mem[(8 * ceil32(return_data.size)) + _236 + 736 len 32 * _238]
        require _238 - 1 < _238
        if not mem[(32 * _238 - 1) + (10 * ceil32(return_data.size)) + 736]:
            return (ext_call.return_data[0] > 0)
        if 9000 * mem[(32 * _238 - 1) + (10 * ceil32(return_data.size)) + 736] / mem[(32 * _238 - 1) + (10 * ceil32(return_data.size)) + 736] != 9000:
            revert with 0, 'SafeMath: multiplication overflow'
        if 9000 * mem[(32 * _238 - 1) + (10 * ceil32(return_data.size)) + 736] / 10000 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((9000 * mem[(32 * _238 - 1) + (10 * ceil32(return_data.size)) + 736] / 10000) + ext_call.return_data[0] > 0)
    require ext_code.size(stor14)
    staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 2 * ext_call.return_data[0], Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 804 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(8 * ceil32(return_data.size)) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (10 * ceil32(return_data.size)) + 704
    require return_data.size >= 32
    _237 = mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
    require mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
    require (8 * ceil32(return_data.size)) + return_data.size + 704 > (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 735
    _239 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]
    require mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704] <= test266151307()
    require (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]) + 32 >= 0 and (10 * ceil32(return_data.size)) + (32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]) + 736 <= test266151307()
    mem[(10 * ceil32(return_data.size)) + 704] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 704 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 704]
    require return_data.size >= _237 + (32 * _239) + 32
    mem[(10 * ceil32(return_data.size)) + 736 len 32 * _239] = mem[(8 * ceil32(return_data.size)) + _237 + 736 len 32 * _239]
    require _239 - 1 < _239
    if not mem[(32 * _239 - 1) + (10 * ceil32(return_data.size)) + 736]:
        return (ext_call.return_data[0] > 0)
    if 9000 * mem[(32 * _239 - 1) + (10 * ceil32(return_data.size)) + 736] / mem[(32 * _239 - 1) + (10 * ceil32(return_data.size)) + 736] != 9000:
        revert with 0, 'SafeMath: multiplication overflow'
    if 9000 * mem[(32 * _239 - 1) + (10 * ceil32(return_data.size)) + 736] / 10000 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return ((9000 * mem[(32 * _239 - 1) + (10 * ceil32(return_data.size)) + 736] / 10000) + ext_call.return_data[0] > 0)
}

function manualClaimAndSellRewards() payable {
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.management() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = aTokenAddress
        mem[ceil32(return_data.size) + 160] = debtTokenAddress
        mem[ceil32(return_data.size) + 192] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = 96
        mem[ceil32(return_data.size) + 292] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 324
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 228] = -1
        mem[ceil32(return_data.size) + 260] = this.address
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        call 0x01d83fe6a10d2f2b7af17034343746188272cac9.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args Array(len=2, data=mem[ceil32(return_data.size) + 324 len 64]), -1, this.address
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wantAddress != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[(2 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_0ac96194:
                if ext_call.return_data[0]:
                    require swapRouter <= 1
                    mem[(4 * ceil32(return_data.size)) + 224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(4 * ceil32(return_data.size)) + 256] = wantAddress
                    mem[(4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 324] = 0
                    mem[(4 * ceil32(return_data.size)) + 356] = 160
                    mem[(4 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 224
                    t = (4 * ceil32(return_data.size)) + 484
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 388] = this.address
                    mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                    if not swapRouter:
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
                    else:
                        require ext_code.size(stor14)
                        call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 484 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + return_data.size + 288 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                    require return_data.size >= mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32
    else:
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.governance() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, '!authorized'
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = aTokenAddress
        mem[(2 * ceil32(return_data.size)) + 160] = debtTokenAddress
        mem[(2 * ceil32(return_data.size)) + 192] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 96
        mem[(2 * ceil32(return_data.size)) + 292] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 324
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 228] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = this.address
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        call 0x01d83fe6a10d2f2b7af17034343746188272cac9.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 324 len 64]), -1, this.address
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wantAddress != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[(4 * ceil32(return_data.size)) + 196] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_0ac96194:
                if ext_call.return_data[0]:
                    require swapRouter <= 1
                    mem[(6 * ceil32(return_data.size)) + 224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                    mem[(6 * ceil32(return_data.size)) + 256] = wantAddress
                    mem[(6 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 324] = 0
                    mem[(6 * ceil32(return_data.size)) + 356] = 160
                    mem[(6 * ceil32(return_data.size)) + 452] = 2
                    idx = 0
                    s = (6 * ceil32(return_data.size)) + 224
                    t = (6 * ceil32(return_data.size)) + 484
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 388] = this.address
                    mem[(6 * ceil32(return_data.size)) + 420] = block.timestamp
                    if not swapRouter:
                        require ext_code.size(stor13)
                        call stor13.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 484 len 64]
                    else:
                        require ext_code.size(stor14)
                        call stor14.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 484 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 288
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (6 * ceil32(return_data.size)) + return_data.size + 288 > (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319
                    require mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] <= test266151307()
                    require (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 320 <= test266151307()
                    require return_data.size >= mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + (32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 32
}

function harvestTrigger(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        mem[288] = 0
        mem[320] = 0
        mem[352] = 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.strategies(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[384 len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        require bool(ceil32(return_data.size) + 672 <= test266151307())
        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 416] = ext_call.return_data[32]
        mem[ceil32(return_data.size) + 448] = ext_call.return_data[64]
        mem[ceil32(return_data.size) + 480] = ext_call.return_data[96]
        mem[ceil32(return_data.size) + 512] = ext_call.return_data[128]
        mem[ceil32(return_data.size) + 544] = ext_call.return_data[160]
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[192]
        mem[ceil32(return_data.size) + 608] = ext_call.return_data[224]
        mem[ceil32(return_data.size) + 640] = ext_call.return_data[256]
        if 0 == ext_call.return_data[32]:
            return 0
        mem[ceil32(return_data.size) + 672] = 30
        mem[ceil32(return_data.size) + 704] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[160] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - ext_call.return_data[160] < minReportDelay:
            return 0
        mem[ceil32(return_data.size) + 736] = 30
        mem[ceil32(return_data.size) + 768] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[160] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp - ext_call.return_data[160] >= maxReportDelay:
            return 1
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.debtOutstanding() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > debtThreshold:
            return 1
        mem[(2 * ceil32(return_data.size)) + 804] = this.address
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 804] = this.address
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 800] = 30
        mem[(6 * ceil32(return_data.size)) + 832] = 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[(6 * ceil32(return_data.size)) + 868] = this.address
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < minWant:
            if debtThreshold < 0:
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
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
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
            if not profitFactor:
                return (0 < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
        mem[(7 * ceil32(return_data.size)) + 864] = 30
        mem[(7 * ceil32(return_data.size)) + 896] = 'SafeMath: subtraction overflow'
        mem[(7 * ceil32(return_data.size)) + 932] = this.address
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(8 * ceil32(return_data.size)) + 928] = 2
        mem[(8 * ceil32(return_data.size)) + 960] = aTokenAddress
        mem[(8 * ceil32(return_data.size)) + 992] = debtTokenAddress
        mem[(8 * ceil32(return_data.size)) + 1024] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 1028] = 64
        mem[(8 * ceil32(return_data.size)) + 1092] = 2
        idx = 0
        s = (8 * ceil32(return_data.size)) + 960
        t = (8 * ceil32(return_data.size)) + 1124
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + 1060] = this.address
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] arg1, address arg2) with:
                gas gas_remaining wei
               args Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1124 len 64]), this.address
        mem[(8 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
            if not ext_call.return_data[0]:
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < ext_call.return_data[0])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < ext_call.return_data[0])
                if mem[ceil32(return_data.size) + 576] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if 9000 * ext_call.return_data[0] / ext_call.return_data[0] != 9000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 9000 * ext_call.return_data[0] / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                return 1
            if (9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if mem[ceil32(return_data.size) + 576] > (9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (9000 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (9000 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (9000 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not uint255(ext_call.return_data[0]):
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                return 1
            if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if mem[ceil32(return_data.size) + 576] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
        if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            if not 2 * ext_call.return_data[0]:
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < ext_call.return_data[0])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < ext_call.return_data[0])
                if mem[ceil32(return_data.size) + 576] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if 5 * 3600 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 9000:
                revert with 0, 'SafeMath: multiplication overflow'
            if 5 * 3600 * ext_call.return_data[0] / 10000 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold < 0:
                revert with 0, 'SafeMath: addition overflow'
            if debtThreshold + (5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                return 1
            if (5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < ext_call.return_data[0])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < ext_call.return_data[0])
            if mem[ceil32(return_data.size) + 576] > (5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.creditAvailable() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (5 * 3600 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not profitFactor:
                return (0 < (5 * 3600 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if arg1 * profitFactor / profitFactor != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            return (arg1 * profitFactor < (5 * 3600 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
        require swapRouter <= 1
        mem[(10 * ceil32(return_data.size)) + 1024] = 2
        mem[(10 * ceil32(return_data.size)) + 1056] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(10 * ceil32(return_data.size)) + 1088] = wantAddress
        mem[(10 * ceil32(return_data.size)) + 1120] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 1124] = 2 * ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 1156] = 64
        mem[(10 * ceil32(return_data.size)) + 1188] = 2
        idx = 0
        s = (10 * ceil32(return_data.size)) + 1056
        t = (10 * ceil32(return_data.size)) + 1220
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if not swapRouter:
            require ext_code.size(stor13)
            staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1220 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 1120
            require return_data.size >= 32
            _2993 = mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
            require mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 1120 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1151
            _3001 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]
            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120] <= test266151307()
            require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152 <= test266151307()
            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152
            mem[(11 * ceil32(return_data.size)) + 1120] = _3001
            require return_data.size >= _2993 + (32 * _3001) + 32
            mem[(11 * ceil32(return_data.size)) + 1152 len 32 * _3001] = mem[(10 * ceil32(return_data.size)) + _2993 + 1152 len 32 * _3001]
            require _3001 - 1 < _3001
            _4279 = mem[(32 * _3001 - 1) + (11 * ceil32(return_data.size)) + 1152]
            if not mem[(32 * _3001 - 1) + (11 * ceil32(return_data.size)) + 1152]:
                _4309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4309] = 26
                mem[_4309 + 32] = 'SafeMath: division by zero'
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4440 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4440] < mem[_4440]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < mem[_4440]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < mem[_4440]
                else:
                    _4404 = mem[ceil32(return_data.size) + 576]
                    _4422 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4422] = 30
                    mem[_4422 + 32] = 'SafeMath: subtraction overflow'
                    if _4404 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4578 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if ext_call.return_data[0] - _4404 + mem[_4578] < mem[_4578]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < ext_call.return_data[0] - _4404 + mem[_4578]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < ext_call.return_data[0] - _4404 + mem[_4578]
            else:
                if 9000 * mem[(32 * _3001 - 1) + (11 * ceil32(return_data.size)) + 1152] / mem[(32 * _3001 - 1) + (11 * ceil32(return_data.size)) + 1152] != 9000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4319] = 26
                mem[_4319 + 32] = 'SafeMath: division by zero'
                if 9000 * _4279 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + (9000 * _4279 / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if (9000 * _4279 / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4477 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4477] < mem[_4477]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < mem[_4477]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < mem[_4477]
                else:
                    _4439 = mem[ceil32(return_data.size) + 576]
                    _4453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4453] = 30
                    mem[_4453 + 32] = 'SafeMath: subtraction overflow'
                    if _4439 > (9000 * _4279 / 10000) + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4626 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (9000 * _4279 / 10000) + ext_call.return_data[0] - _4439 + mem[_4626] < mem[_4626]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < (9000 * _4279 / 10000) + ext_call.return_data[0] - _4439 + mem[_4626]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < (9000 * _4279 / 10000) + ext_call.return_data[0] - _4439 + mem[_4626]
        else:
            require ext_code.size(stor14)
            staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 2 * ext_call.return_data[0], Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1220 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 1120
            require return_data.size >= 32
            _2994 = mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
            require mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
            require (10 * ceil32(return_data.size)) + return_data.size + 1120 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1151
            _3002 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]
            require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120] <= test266151307()
            require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152 <= test266151307()
            mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152
            mem[(11 * ceil32(return_data.size)) + 1120] = _3002
            require return_data.size >= _2994 + (32 * _3002) + 32
            mem[(11 * ceil32(return_data.size)) + 1152 len 32 * _3002] = mem[(10 * ceil32(return_data.size)) + _2994 + 1152 len 32 * _3002]
            require _3002 - 1 < _3002
            _4280 = mem[(32 * _3002 - 1) + (11 * ceil32(return_data.size)) + 1152]
            if not mem[(32 * _3002 - 1) + (11 * ceil32(return_data.size)) + 1152]:
                _4310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4310] = 26
                mem[_4310 + 32] = 'SafeMath: division by zero'
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4444] < mem[_4444]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < mem[_4444]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < mem[_4444]
                else:
                    _4408 = mem[ceil32(return_data.size) + 576]
                    _4425 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4425] = 30
                    mem[_4425 + 32] = 'SafeMath: subtraction overflow'
                    if _4408 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4584 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if ext_call.return_data[0] - _4408 + mem[_4584] < mem[_4584]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < ext_call.return_data[0] - _4408 + mem[_4584]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < ext_call.return_data[0] - _4408 + mem[_4584]
            else:
                if 9000 * mem[(32 * _3002 - 1) + (11 * ceil32(return_data.size)) + 1152] / mem[(32 * _3002 - 1) + (11 * ceil32(return_data.size)) + 1152] != 9000:
                    revert with 0, 'SafeMath: multiplication overflow'
                _4320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4320] = 26
                mem[_4320 + 32] = 'SafeMath: division by zero'
                if 9000 * _4280 / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + (9000 * _4280 / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if (9000 * _4280 / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_4480] < mem[_4480]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < mem[_4480]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < mem[_4480]
                else:
                    _4443 = mem[ceil32(return_data.size) + 576]
                    _4457 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4457] = 30
                    mem[_4457 + 32] = 'SafeMath: subtraction overflow'
                    if _4443 > (9000 * _4280 / 10000) + ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if (9000 * _4280 / 10000) + ext_call.return_data[0] - _4443 + mem[_4629] < mem[_4629]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        mem[mem[64]] = 0 < (9000 * _4280 / 10000) + ext_call.return_data[0] - _4443 + mem[_4629]
                    else:
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        mem[mem[64]] = arg1 * profitFactor < (9000 * _4280 / 10000) + ext_call.return_data[0] - _4443 + mem[_4629]
    else:
        if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[96] = 0
            mem[128] = 0
            mem[160] = 0
            mem[192] = 0
            mem[224] = 0
            mem[256] = 0
            mem[288] = 0
            mem[320] = 0
            mem[352] = 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.strategies(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[384 len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 288
            require bool(ceil32(return_data.size) + 672 <= test266151307())
            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 416] = ext_call.return_data[32]
            mem[ceil32(return_data.size) + 448] = ext_call.return_data[64]
            mem[ceil32(return_data.size) + 480] = ext_call.return_data[96]
            mem[ceil32(return_data.size) + 512] = ext_call.return_data[128]
            mem[ceil32(return_data.size) + 544] = ext_call.return_data[160]
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[192]
            mem[ceil32(return_data.size) + 608] = ext_call.return_data[224]
            mem[ceil32(return_data.size) + 640] = ext_call.return_data[256]
            if 0 == ext_call.return_data[32]:
                return 0
            mem[ceil32(return_data.size) + 672] = 30
            mem[ceil32(return_data.size) + 704] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[160] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - ext_call.return_data[160] < minReportDelay:
                return 0
            mem[ceil32(return_data.size) + 736] = 30
            mem[ceil32(return_data.size) + 768] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[160] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if block.timestamp - ext_call.return_data[160] >= maxReportDelay:
                return 1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.debtOutstanding() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > debtThreshold:
                return 1
            mem[(2 * ceil32(return_data.size)) + 804] = this.address
            require ext_code.size(aTokenAddress)
            staticcall aTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 804] = this.address
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 800] = 30
            mem[(6 * ceil32(return_data.size)) + 832] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            mem[(6 * ceil32(return_data.size)) + 868] = this.address
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 864] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] < minWant:
                if debtThreshold < 0:
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
                    if not profitFactor:
                        return (0 < ext_call.return_data[0])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < ext_call.return_data[0])
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
                if not profitFactor:
                    return (0 < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - ext_call.return_data[192])
            mem[(7 * ceil32(return_data.size)) + 864] = 30
            mem[(7 * ceil32(return_data.size)) + 896] = 'SafeMath: subtraction overflow'
            mem[(7 * ceil32(return_data.size)) + 932] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(7 * ceil32(return_data.size)) + 928] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(8 * ceil32(return_data.size)) + 928] = 2
            mem[(8 * ceil32(return_data.size)) + 960] = aTokenAddress
            mem[(8 * ceil32(return_data.size)) + 992] = debtTokenAddress
            mem[(8 * ceil32(return_data.size)) + 1024] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 1028] = 64
            mem[(8 * ceil32(return_data.size)) + 1092] = 2
            idx = 0
            s = (8 * ceil32(return_data.size)) + 960
            t = (8 * ceil32(return_data.size)) + 1124
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 1060] = this.address
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] arg1, address arg2) with:
                    gas gas_remaining wei
                   args Array(len=2, data=mem[(8 * ceil32(return_data.size)) + 1124 len 64]), this.address
            mem[(8 * ceil32(return_data.size)) + 1024] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
                if not ext_call.return_data[0]:
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                        return 1
                    if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            return (0 < ext_call.return_data[0])
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * profitFactor < ext_call.return_data[0])
                    if mem[ceil32(return_data.size) + 576] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if 9000 * ext_call.return_data[0] / ext_call.return_data[0] != 9000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 9000 * ext_call.return_data[0] / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + (9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if (9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < ext_call.return_data[0])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < ext_call.return_data[0])
                if mem[ceil32(return_data.size) + 576] > (9000 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (9000 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < (9000 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < (9000 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not uint255(ext_call.return_data[0]):
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < ext_call.return_data[0])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < ext_call.return_data[0])
                if mem[ceil32(return_data.size) + 576] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                if not 2 * ext_call.return_data[0]:
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                        return 1
                    if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            return (0 < ext_call.return_data[0])
                        if arg1 * profitFactor / profitFactor != arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                        return (arg1 * profitFactor < ext_call.return_data[0])
                    if mem[ceil32(return_data.size) + 576] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if 5 * 3600 * ext_call.return_data[0] / 2 * ext_call.return_data[0] != 9000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 5 * 3600 * ext_call.return_data[0] / 10000 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if debtThreshold + (5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                    return 1
                if (5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.creditAvailable() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if not profitFactor:
                        return (0 < ext_call.return_data[0])
                    if arg1 * profitFactor / profitFactor != arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                    return (arg1 * profitFactor < ext_call.return_data[0])
                if mem[ceil32(return_data.size) + 576] > (5 * 3600 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.creditAvailable() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (5 * 3600 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not profitFactor:
                    return (0 < (5 * 3600 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
                if arg1 * profitFactor / profitFactor != arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
                return (arg1 * profitFactor < (5 * 3600 * ext_call.return_data[0] / 10000) + (2 * ext_call.return_data[0]) - mem[ceil32(return_data.size) + 576])
            require swapRouter <= 1
            mem[(10 * ceil32(return_data.size)) + 1024] = 2
            mem[(10 * ceil32(return_data.size)) + 1056] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[(10 * ceil32(return_data.size)) + 1088] = wantAddress
            mem[(10 * ceil32(return_data.size)) + 1120] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 1124] = 2 * ext_call.return_data[0]
            mem[(10 * ceil32(return_data.size)) + 1156] = 64
            mem[(10 * ceil32(return_data.size)) + 1188] = 2
            idx = 0
            s = (10 * ceil32(return_data.size)) + 1056
            t = (10 * ceil32(return_data.size)) + 1220
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if not swapRouter:
                require ext_code.size(stor13)
                staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1220 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(10 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (11 * ceil32(return_data.size)) + 1120
                require return_data.size >= 32
                _2997 = mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (10 * ceil32(return_data.size)) + return_data.size + 1120 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1151
                _3003 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]
                require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120] <= test266151307()
                require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152 <= test266151307()
                mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152
                mem[(11 * ceil32(return_data.size)) + 1120] = _3003
                require return_data.size >= _2997 + (32 * _3003) + 32
                mem[(11 * ceil32(return_data.size)) + 1152 len 32 * _3003] = mem[(10 * ceil32(return_data.size)) + _2997 + 1152 len 32 * _3003]
                require _3003 - 1 < _3003
                _4283 = mem[(32 * _3003 - 1) + (11 * ceil32(return_data.size)) + 1152]
                if not mem[(32 * _3003 - 1) + (11 * ceil32(return_data.size)) + 1152]:
                    _4313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4313] = 26
                    mem[_4313 + 32] = 'SafeMath: division by zero'
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                        return 1
                    if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4448 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4448] < mem[_4448]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < mem[_4448]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < mem[_4448]
                    else:
                        _4416 = mem[ceil32(return_data.size) + 576]
                        _4432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4432] = 30
                        mem[_4432 + 32] = 'SafeMath: subtraction overflow'
                        if _4416 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4604 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if ext_call.return_data[0] - _4416 + mem[_4604] < mem[_4604]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < ext_call.return_data[0] - _4416 + mem[_4604]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < ext_call.return_data[0] - _4416 + mem[_4604]
                else:
                    if 9000 * mem[(32 * _3003 - 1) + (11 * ceil32(return_data.size)) + 1152] / mem[(32 * _3003 - 1) + (11 * ceil32(return_data.size)) + 1152] != 9000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4323 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4323] = 26
                    mem[_4323 + 32] = 'SafeMath: division by zero'
                    if 9000 * _4283 / 10000 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + (9000 * _4283 / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                        return 1
                    if (9000 * _4283 / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4487] < mem[_4487]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < mem[_4487]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < mem[_4487]
                    else:
                        _4447 = mem[ceil32(return_data.size) + 576]
                        _4469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4469] = 30
                        mem[_4469 + 32] = 'SafeMath: subtraction overflow'
                        if _4447 > (9000 * _4283 / 10000) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4644 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (9000 * _4283 / 10000) + ext_call.return_data[0] - _4447 + mem[_4644] < mem[_4644]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < (9000 * _4283 / 10000) + ext_call.return_data[0] - _4447 + mem[_4644]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < (9000 * _4283 / 10000) + ext_call.return_data[0] - _4447 + mem[_4644]
            else:
                require ext_code.size(stor14)
                staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args 2 * ext_call.return_data[0], Array(len=2, data=mem[(10 * ceil32(return_data.size)) + 1220 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(10 * ceil32(return_data.size)) + 1120 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (11 * ceil32(return_data.size)) + 1120
                require return_data.size >= 32
                _2998 = mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
                require mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
                require (10 * ceil32(return_data.size)) + return_data.size + 1120 > (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1151
                _3004 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]
                require mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120] <= test266151307()
                require (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 32 >= 0 and (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152 <= test266151307()
                mem[64] = (11 * ceil32(return_data.size)) + (32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 1120 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 1120]) + 1152
                mem[(11 * ceil32(return_data.size)) + 1120] = _3004
                require return_data.size >= _2998 + (32 * _3004) + 32
                mem[(11 * ceil32(return_data.size)) + 1152 len 32 * _3004] = mem[(10 * ceil32(return_data.size)) + _2998 + 1152 len 32 * _3004]
                require _3004 - 1 < _3004
                _4284 = mem[(32 * _3004 - 1) + (11 * ceil32(return_data.size)) + 1152]
                if not mem[(32 * _3004 - 1) + (11 * ceil32(return_data.size)) + 1152]:
                    _4314 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4314] = 26
                    mem[_4314 + 32] = 'SafeMath: division by zero'
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                        return 1
                    if ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4452] < mem[_4452]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < mem[_4452]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < mem[_4452]
                    else:
                        _4420 = mem[ceil32(return_data.size) + 576]
                        _4435 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4435] = 30
                        mem[_4435 + 32] = 'SafeMath: subtraction overflow'
                        if _4420 > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4610 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if ext_call.return_data[0] - _4420 + mem[_4610] < mem[_4610]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < ext_call.return_data[0] - _4420 + mem[_4610]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < ext_call.return_data[0] - _4420 + mem[_4610]
                else:
                    if 9000 * mem[(32 * _3004 - 1) + (11 * ceil32(return_data.size)) + 1152] / mem[(32 * _3004 - 1) + (11 * ceil32(return_data.size)) + 1152] != 9000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _4324 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4324] = 26
                    mem[_4324 + 32] = 'SafeMath: division by zero'
                    if 9000 * _4284 / 10000 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + (9000 * _4284 / 10000) + ext_call.return_data[0] < mem[ceil32(return_data.size) + 576]:
                        return 1
                    if (9000 * _4284 / 10000) + ext_call.return_data[0] <= mem[ceil32(return_data.size) + 576]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_4490] < mem[_4490]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < mem[_4490]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < mem[_4490]
                    else:
                        _4451 = mem[ceil32(return_data.size) + 576]
                        _4473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4473] = 30
                        mem[_4473 + 32] = 'SafeMath: subtraction overflow'
                        if _4451 > (9000 * _4284 / 10000) + ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if (9000 * _4284 / 10000) + ext_call.return_data[0] - _4451 + mem[_4647] < mem[_4647]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < (9000 * _4284 / 10000) + ext_call.return_data[0] - _4451 + mem[_4647]
                        else:
                            if arg1 * profitFactor / profitFactor != arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = arg1 * profitFactor < (9000 * _4284 / 10000) + ext_call.return_data[0] - _4451 + mem[_4647]
        else:
            require swapRouter <= 1
            mem[96] = 2
            mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[160] = wantAddress
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = arg1
            mem[228] = 64
            mem[260] = 2
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            if not swapRouter:
                require ext_code.size(stor13)
                staticcall stor13.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _1396 = mem[192 len 4], Mask(224, 32, arg1) >> 32
                require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _1399 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _1396 + (32 * _1399) + 32
                mem[ceil32(return_data.size) + 224 len 32 * _1399] = mem[_1396 + 224 len 32 * _1399]
                require _1399 - 1 < _1399
                _2965 = mem[(32 * _1399 - 1) + ceil32(return_data.size) + 224]
                _2995 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2995] = 0
                mem[_2995 + 32] = 0
                mem[_2995 + 64] = 0
                mem[_2995 + 96] = 0
                mem[_2995 + 128] = 0
                mem[_2995 + 160] = 0
                mem[_2995 + 192] = 0
                mem[_2995 + 224] = 0
                mem[_2995 + 256] = 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.strategies(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3007 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _3013 = mem[64]
                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                mem[64] = mem[64] + 288
                mem[_3013] = mem[_3007]
                mem[_3013 + 32] = mem[_3007 + 32]
                mem[_3013 + 64] = mem[_3007 + 64]
                mem[_3013 + 96] = mem[_3007 + 96]
                mem[_3013 + 128] = mem[_3007 + 128]
                mem[_3013 + 160] = mem[_3007 + 160]
                mem[_3013 + 192] = mem[_3007 + 192]
                mem[_3013 + 224] = mem[_3007 + 224]
                mem[_3013 + 256] = mem[_3007 + 256]
                if 0 == mem[_3013 + 32]:
                    return 0
                _3043 = mem[_3013 + 160]
                _3051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3051] = 30
                mem[_3051 + 32] = 'SafeMath: subtraction overflow'
                if _3043 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp - _3043 < minReportDelay:
                    return 0
                _3063 = mem[_3013 + 160]
                _3069 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3069] = 30
                mem[_3069 + 32] = 'SafeMath: subtraction overflow'
                if _3063 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp - _3063 >= maxReportDelay:
                    return 1
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.debtOutstanding() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3103] > debtThreshold:
                    return 1
                mem[mem[64] + 4] = this.address
                require ext_code.size(aTokenAddress)
                staticcall aTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3185 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3217 = mem[_3185]
                mem[mem[64] + 4] = this.address
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3303 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3325 = mem[_3303]
                _3365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3365] = 30
                mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                if _3325 > _3217:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3465 = mem[_3463]
                if _3217 - _3325 + mem[_3463] < mem[_3463]:
                    revert with 0, 'SafeMath: addition overflow'
                if _3217 - _3325 + mem[_3463] < minWant:
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + _3217 - _3325 + mem[_3463] < mem[_3013 + 192]:
                        return 1
                    if _3217 - _3325 + mem[_3463] <= mem[_3013 + 192]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3494] < mem[_3494]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < mem[_3494]
                        else:
                            if _2965 * profitFactor / profitFactor != _2965:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = _2965 * profitFactor < mem[_3494]
                    else:
                        _3484 = mem[_3013 + 192]
                        _3489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3489] = 30
                        mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                        if _3484 > _3217 - _3325 + _3465:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3217 - _3325 + _3465 - _3484 + mem[_3520] < mem[_3520]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < _3217 - _3325 + _3465 - _3484 + mem[_3520]
                        else:
                            if _2965 * profitFactor / profitFactor != _2965:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = _2965 * profitFactor < _3217 - _3325 + _3465 - _3484 + mem[_3520]
                else:
                    _3471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3471] = 30
                    mem[_3471 + 32] = 'SafeMath: subtraction overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3507 = mem[_3501]
                    _3517 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3517]
                    mem[_3517 + 32] = aTokenAddress
                    require 1 < mem[_3517]
                    mem[_3517 + 64] = debtTokenAddress
                    mem[_3517 + 96] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                    mem[_3517 + 100] = 64
                    mem[_3517 + 164] = mem[_3517]
                    idx = 0
                    s = _3517 + 32
                    t = _3517 + 196
                    while idx < mem[_3517]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3517 + 132] = this.address
                    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3517 + (32 * mem[_3517]) + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4303 = mem[_4301]
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
                        if not mem[_4301]:
                            _4327 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4327] = 26
                            mem[_4327 + 32] = 'SafeMath: division by zero'
                            if debtThreshold < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                return 1
                            if _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4546 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4546] < mem[_4546]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < mem[_4546]
                                else:
                                    if _2965 * profitFactor / profitFactor != _2965:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2965 * profitFactor < mem[_4546]
                            else:
                                _4503 = mem[_3013 + 192]
                                _4521 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4521] = 30
                                mem[_4521 + 32] = 'SafeMath: subtraction overflow'
                                if _4503 > _3217 - _3325 + _3465:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4698 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3217 - _3325 + _3465 - _4503 + mem[_4698] < mem[_4698]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < _3217 - _3325 + _3465 - _4503 + mem[_4698]
                                else:
                                    if _2965 * profitFactor / profitFactor != _2965:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2965 * profitFactor < _3217 - _3325 + _3465 - _4503 + mem[_4698]
                        else:
                            if 9000 * mem[_4301] / mem[_4301] != 9000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4331] = 26
                            mem[_4331 + 32] = 'SafeMath: division by zero'
                            if 9000 * _4303 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold + (9000 * _4303 / 10000) + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                return 1
                            if (9000 * _4303 / 10000) + _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4589 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4589] < mem[_4589]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < mem[_4589]
                                else:
                                    if _2965 * profitFactor / profitFactor != _2965:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2965 * profitFactor < mem[_4589]
                            else:
                                _4545 = mem[_3013 + 192]
                                _4564 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4564] = 30
                                mem[_4564 + 32] = 'SafeMath: subtraction overflow'
                                if _4545 > (9000 * _4303 / 10000) + _3217 - _3325 + _3465:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4756 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (9000 * _4303 / 10000) + _3217 - _3325 + _3465 - _4545 + mem[_4756] < mem[_4756]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < (9000 * _4303 / 10000) + _3217 - _3325 + _3465 - _4545 + mem[_4756]
                                else:
                                    if _2965 * profitFactor / profitFactor != _2965:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2965 * profitFactor < (9000 * _4303 / 10000) + _3217 - _3325 + _3465 - _4545 + mem[_4756]
                    else:
                        if mem[_4301] + _3507 < _3507:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_4301] + _3507:
                            _4359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4359] = 26
                            mem[_4359 + 32] = 'SafeMath: division by zero'
                            if debtThreshold < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                return 1
                            if _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4751 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4751] < mem[_4751]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < mem[_4751]
                                else:
                                    if _2965 * profitFactor / profitFactor != _2965:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2965 * profitFactor < mem[_4751]
                            else:
                                _4691 = mem[_3013 + 192]
                                _4717 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4717] = 30
                                mem[_4717 + 32] = 'SafeMath: subtraction overflow'
                                if _4691 > _3217 - _3325 + _3465:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4908 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3217 - _3325 + _3465 - _4691 + mem[_4908] < mem[_4908]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < _3217 - _3325 + _3465 - _4691 + mem[_4908]
                                else:
                                    if _2965 * profitFactor / profitFactor != _2965:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2965 * profitFactor < _3217 - _3325 + _3465 - _4691 + mem[_4908]
                        else:
                            if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if not mem[_4301] + _3507:
                                    _4371 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4371] = 26
                                    mem[_4371 + 32] = 'SafeMath: division by zero'
                                    if debtThreshold < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if debtThreshold + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                        return 1
                                    if _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4782 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4782] < mem[_4782]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < mem[_4782]
                                        else:
                                            if _2965 * profitFactor / profitFactor != _2965:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2965 * profitFactor < mem[_4782]
                                    else:
                                        _4724 = mem[_3013 + 192]
                                        _4753 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4753] = 30
                                        mem[_4753 + 32] = 'SafeMath: subtraction overflow'
                                        if _4724 > _3217 - _3325 + _3465:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4936 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _3217 - _3325 + _3465 - _4724 + mem[_4936] < mem[_4936]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < _3217 - _3325 + _3465 - _4724 + mem[_4936]
                                        else:
                                            if _2965 * profitFactor / profitFactor != _2965:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2965 * profitFactor < _3217 - _3325 + _3465 - _4724 + mem[_4936]
                                else:
                                    if (9000 * mem[_4301]) + (9000 * _3507) / mem[_4301] + _3507 != 9000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4393 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4393] = 26
                                    mem[_4393 + 32] = 'SafeMath: division by zero'
                                    if (9000 * _4303) + (9000 * _3507) / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if debtThreshold < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if debtThreshold + ((9000 * _4303) + (9000 * _3507) / 10000) + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                        return 1
                                    if ((9000 * _4303) + (9000 * _3507) / 10000) + _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4829 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4829] < mem[_4829]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < mem[_4829]
                                        else:
                                            if _2965 * profitFactor / profitFactor != _2965:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2965 * profitFactor < mem[_4829]
                                    else:
                                        _4781 = mem[_3013 + 192]
                                        _4805 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4805] = 30
                                        mem[_4805 + 32] = 'SafeMath: subtraction overflow'
                                        if _4781 > ((9000 * _4303) + (9000 * _3507) / 10000) + _3217 - _3325 + _3465:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if ((9000 * _4303) + (9000 * _3507) / 10000) + _3217 - _3325 + _3465 - _4781 + mem[_4982] < mem[_4982]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < ((9000 * _4303) + (9000 * _3507) / 10000) + _3217 - _3325 + _3465 - _4781 + mem[_4982]
                                        else:
                                            if _2965 * profitFactor / profitFactor != _2965:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2965 * profitFactor < ((9000 * _4303) + (9000 * _3507) / 10000) + _3217 - _3325 + _3465 - _4781 + mem[_4982]
                            else:
                                require swapRouter <= 1
                                if not swapRouter:
                                    _4360 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_4360]
                                    mem[_4360 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require 1 < mem[_4360]
                                    mem[_4360 + 64] = wantAddress
                                    mem[_4360 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4360 + 100] = _4303 + _3507
                                    mem[_4360 + 132] = 64
                                    mem[_4360 + 164] = mem[_4360]
                                    idx = 0
                                    s = _4360 + 32
                                    t = _4360 + 196
                                    while idx < mem[_4360]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor13)
                                    staticcall stor13.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4360 + (32 * mem[_4360]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5495 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5499 = mem[_5495]
                                    require mem[_5495] <= test266151307()
                                    require _5495 + return_data.size > _5495 + mem[_5495] + 31
                                    _5503 = mem[_5495 + mem[_5495]]
                                    require mem[_5495 + mem[_5495]] <= test266151307()
                                    require (32 * mem[_5495 + mem[_5495]]) + 32 >= 0 and _5495 + ceil32(return_data.size) + (32 * mem[_5495 + mem[_5495]]) + 32 <= test266151307()
                                    mem[64] = _5495 + ceil32(return_data.size) + (32 * mem[_5495 + mem[_5495]]) + 32
                                    mem[_5495 + ceil32(return_data.size)] = _5503
                                    require return_data.size >= _5499 + (32 * _5503) + 32
                                    mem[_5495 + ceil32(return_data.size) + 32 len 32 * _5503] = mem[_5495 + _5499 + 32 len 32 * _5503]
                                    require _5503 - 1 < _5503
                                    _5867 = mem[(32 * _5503 - 1) + _5495 + ceil32(return_data.size) + 32]
                                    if not mem[(32 * _5503 - 1) + _5495 + ceil32(return_data.size) + 32]:
                                        _5875 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5875] = 26
                                        mem[_5875 + 32] = 'SafeMath: division by zero'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                            return 1
                                        if _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5958 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5958] < mem[_5958]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5958]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < mem[_5958]
                                        else:
                                            _5930 = mem[_3013 + 192]
                                            _5944 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5944] = 30
                                            mem[_5944 + 32] = 'SafeMath: subtraction overflow'
                                            if _5930 > _3217 - _3325 + _3465:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6036 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if _3217 - _3325 + _3465 - _5930 + mem[_6036] < mem[_6036]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < _3217 - _3325 + _3465 - _5930 + mem[_6036]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < _3217 - _3325 + _3465 - _5930 + mem[_6036]
                                    else:
                                        if 9000 * mem[(32 * _5503 - 1) + _5495 + ceil32(return_data.size) + 32] / mem[(32 * _5503 - 1) + _5495 + ceil32(return_data.size) + 32] != 9000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5883 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5883] = 26
                                        mem[_5883 + 32] = 'SafeMath: division by zero'
                                        if 9000 * _5867 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + (9000 * _5867 / 10000) + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                            return 1
                                        if (9000 * _5867 / 10000) + _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5987 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5987] < mem[_5987]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5987]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < mem[_5987]
                                        else:
                                            _5957 = mem[_3013 + 192]
                                            _5971 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5971] = 30
                                            mem[_5971 + 32] = 'SafeMath: subtraction overflow'
                                            if _5957 > (9000 * _5867 / 10000) + _3217 - _3325 + _3465:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6064 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if (9000 * _5867 / 10000) + _3217 - _3325 + _3465 - _5957 + mem[_6064] < mem[_6064]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < (9000 * _5867 / 10000) + _3217 - _3325 + _3465 - _5957 + mem[_6064]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < (9000 * _5867 / 10000) + _3217 - _3325 + _3465 - _5957 + mem[_6064]
                                else:
                                    _4361 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_4361]
                                    mem[_4361 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require 1 < mem[_4361]
                                    mem[_4361 + 64] = wantAddress
                                    mem[_4361 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4361 + 100] = _4303 + _3507
                                    mem[_4361 + 132] = 64
                                    mem[_4361 + 164] = mem[_4361]
                                    idx = 0
                                    s = _4361 + 32
                                    t = _4361 + 196
                                    while idx < mem[_4361]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor14)
                                    staticcall stor14.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4361 + (32 * mem[_4361]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5496 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5500 = mem[_5496]
                                    require mem[_5496] <= test266151307()
                                    require _5496 + return_data.size > _5496 + mem[_5496] + 31
                                    _5504 = mem[_5496 + mem[_5496]]
                                    require mem[_5496 + mem[_5496]] <= test266151307()
                                    require (32 * mem[_5496 + mem[_5496]]) + 32 >= 0 and _5496 + ceil32(return_data.size) + (32 * mem[_5496 + mem[_5496]]) + 32 <= test266151307()
                                    mem[64] = _5496 + ceil32(return_data.size) + (32 * mem[_5496 + mem[_5496]]) + 32
                                    mem[_5496 + ceil32(return_data.size)] = _5504
                                    require return_data.size >= _5500 + (32 * _5504) + 32
                                    mem[_5496 + ceil32(return_data.size) + 32 len 32 * _5504] = mem[_5496 + _5500 + 32 len 32 * _5504]
                                    require _5504 - 1 < _5504
                                    _5868 = mem[(32 * _5504 - 1) + _5496 + ceil32(return_data.size) + 32]
                                    if not mem[(32 * _5504 - 1) + _5496 + ceil32(return_data.size) + 32]:
                                        _5876 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5876] = 26
                                        mem[_5876 + 32] = 'SafeMath: division by zero'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                            return 1
                                        if _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5962 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5962] < mem[_5962]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5962]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < mem[_5962]
                                        else:
                                            _5934 = mem[_3013 + 192]
                                            _5947 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5947] = 30
                                            mem[_5947 + 32] = 'SafeMath: subtraction overflow'
                                            if _5934 > _3217 - _3325 + _3465:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6042 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if _3217 - _3325 + _3465 - _5934 + mem[_6042] < mem[_6042]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < _3217 - _3325 + _3465 - _5934 + mem[_6042]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < _3217 - _3325 + _3465 - _5934 + mem[_6042]
                                    else:
                                        if 9000 * mem[(32 * _5504 - 1) + _5496 + ceil32(return_data.size) + 32] / mem[(32 * _5504 - 1) + _5496 + ceil32(return_data.size) + 32] != 9000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5884 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5884] = 26
                                        mem[_5884 + 32] = 'SafeMath: division by zero'
                                        if 9000 * _5868 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + (9000 * _5868 / 10000) + _3217 - _3325 + _3465 < mem[_3013 + 192]:
                                            return 1
                                        if (9000 * _5868 / 10000) + _3217 - _3325 + _3465 <= mem[_3013 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5990 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5990] < mem[_5990]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5990]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < mem[_5990]
                                        else:
                                            _5961 = mem[_3013 + 192]
                                            _5975 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5975] = 30
                                            mem[_5975 + 32] = 'SafeMath: subtraction overflow'
                                            if _5961 > (9000 * _5868 / 10000) + _3217 - _3325 + _3465:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6067 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if (9000 * _5868 / 10000) + _3217 - _3325 + _3465 - _5961 + mem[_6067] < mem[_6067]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < (9000 * _5868 / 10000) + _3217 - _3325 + _3465 - _5961 + mem[_6067]
                                            else:
                                                if _2965 * profitFactor / profitFactor != _2965:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2965 * profitFactor < (9000 * _5868 / 10000) + _3217 - _3325 + _3465 - _5961 + mem[_6067]
            else:
                require ext_code.size(stor14)
                staticcall stor14.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 192
                require return_data.size >= 32
                _1397 = mem[192 len 4], Mask(224, 32, arg1) >> 32
                require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require return_data.size + 192 > mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223
                _1400 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= test266151307()
                require (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224 <= test266151307()
                mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 224
                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
                require return_data.size >= _1397 + (32 * _1400) + 32
                mem[ceil32(return_data.size) + 224 len 32 * _1400] = mem[_1397 + 224 len 32 * _1400]
                require _1400 - 1 < _1400
                _2966 = mem[(32 * _1400 - 1) + ceil32(return_data.size) + 224]
                _2996 = mem[64]
                mem[64] = mem[64] + 288
                mem[_2996] = 0
                mem[_2996 + 32] = 0
                mem[_2996 + 64] = 0
                mem[_2996 + 96] = 0
                mem[_2996 + 128] = 0
                mem[_2996 + 160] = 0
                mem[_2996 + 192] = 0
                mem[_2996 + 224] = 0
                mem[_2996 + 256] = 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.strategies(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _3014 = mem[64]
                require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
                mem[64] = mem[64] + 288
                mem[_3014] = mem[_3008]
                mem[_3014 + 32] = mem[_3008 + 32]
                mem[_3014 + 64] = mem[_3008 + 64]
                mem[_3014 + 96] = mem[_3008 + 96]
                mem[_3014 + 128] = mem[_3008 + 128]
                mem[_3014 + 160] = mem[_3008 + 160]
                mem[_3014 + 192] = mem[_3008 + 192]
                mem[_3014 + 224] = mem[_3008 + 224]
                mem[_3014 + 256] = mem[_3008 + 256]
                if 0 == mem[_3014 + 32]:
                    return 0
                _3044 = mem[_3014 + 160]
                _3052 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3052] = 30
                mem[_3052 + 32] = 'SafeMath: subtraction overflow'
                if _3044 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp - _3044 < minReportDelay:
                    return 0
                _3065 = mem[_3014 + 160]
                _3070 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3070] = 30
                mem[_3070 + 32] = 'SafeMath: subtraction overflow'
                if _3065 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp - _3065 >= maxReportDelay:
                    return 1
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.debtOutstanding() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3105 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3105] > debtThreshold:
                    return 1
                mem[mem[64] + 4] = this.address
                require ext_code.size(aTokenAddress)
                staticcall aTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3218 = mem[_3186]
                mem[mem[64] + 4] = this.address
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3326 = mem[_3304]
                _3366 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3366] = 30
                mem[_3366 + 32] = 'SafeMath: subtraction overflow'
                if _3326 > _3218:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                mem[mem[64] + 4] = this.address
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3464 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3466 = mem[_3464]
                if _3218 - _3326 + mem[_3464] < mem[_3464]:
                    revert with 0, 'SafeMath: addition overflow'
                if _3218 - _3326 + mem[_3464] < minWant:
                    if debtThreshold < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if debtThreshold + _3218 - _3326 + mem[_3464] < mem[_3014 + 192]:
                        return 1
                    if _3218 - _3326 + mem[_3464] <= mem[_3014 + 192]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_3496] < mem[_3496]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < mem[_3496]
                        else:
                            if _2966 * profitFactor / profitFactor != _2966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = _2966 * profitFactor < mem[_3496]
                    else:
                        _3488 = mem[_3014 + 192]
                        _3491 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3491] = 30
                        mem[_3491 + 32] = 'SafeMath: subtraction overflow'
                        if _3488 > _3218 - _3326 + _3466:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.creditAvailable() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3218 - _3326 + _3466 - _3488 + mem[_3524] < mem[_3524]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not profitFactor:
                            mem[mem[64]] = 0 < _3218 - _3326 + _3466 - _3488 + mem[_3524]
                        else:
                            if _2966 * profitFactor / profitFactor != _2966:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[mem[64]] = _2966 * profitFactor < _3218 - _3326 + _3466 - _3488 + mem[_3524]
                else:
                    _3472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3472] = 30
                    mem[_3472 + 32] = 'SafeMath: subtraction overflow'
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
                    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3504 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3508 = mem[_3504]
                    _3521 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require 0 < mem[_3521]
                    mem[_3521 + 32] = aTokenAddress
                    require 1 < mem[_3521]
                    mem[_3521 + 64] = debtTokenAddress
                    mem[_3521 + 96] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                    mem[_3521 + 100] = 64
                    mem[_3521 + 164] = mem[_3521]
                    idx = 0
                    s = _3521 + 32
                    t = _3521 + 196
                    while idx < mem[_3521]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3521 + 132] = this.address
                    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3521 + (32 * mem[_3521]) + -mem[64] + 192]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4304 = mem[_4302]
                    if 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 == wantAddress:
                        if not mem[_4302]:
                            _4328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4328] = 26
                            mem[_4328 + 32] = 'SafeMath: division by zero'
                            if debtThreshold < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                return 1
                            if _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4554 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4554] < mem[_4554]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < mem[_4554]
                                else:
                                    if _2966 * profitFactor / profitFactor != _2966:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2966 * profitFactor < mem[_4554]
                            else:
                                _4510 = mem[_3014 + 192]
                                _4525 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4525] = 30
                                mem[_4525 + 32] = 'SafeMath: subtraction overflow'
                                if _4510 > _3218 - _3326 + _3466:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4708 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3218 - _3326 + _3466 - _4510 + mem[_4708] < mem[_4708]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < _3218 - _3326 + _3466 - _4510 + mem[_4708]
                                else:
                                    if _2966 * profitFactor / profitFactor != _2966:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2966 * profitFactor < _3218 - _3326 + _3466 - _4510 + mem[_4708]
                        else:
                            if 9000 * mem[_4302] / mem[_4302] != 9000:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _4332 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4332] = 26
                            mem[_4332 + 32] = 'SafeMath: division by zero'
                            if 9000 * _4304 / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold + (9000 * _4304 / 10000) + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                return 1
                            if (9000 * _4304 / 10000) + _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4596 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4596] < mem[_4596]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < mem[_4596]
                                else:
                                    if _2966 * profitFactor / profitFactor != _2966:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2966 * profitFactor < mem[_4596]
                            else:
                                _4553 = mem[_3014 + 192]
                                _4569 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4569] = 30
                                mem[_4569 + 32] = 'SafeMath: subtraction overflow'
                                if _4553 > (9000 * _4304 / 10000) + _3218 - _3326 + _3466:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4763 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if (9000 * _4304 / 10000) + _3218 - _3326 + _3466 - _4553 + mem[_4763] < mem[_4763]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < (9000 * _4304 / 10000) + _3218 - _3326 + _3466 - _4553 + mem[_4763]
                                else:
                                    if _2966 * profitFactor / profitFactor != _2966:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2966 * profitFactor < (9000 * _4304 / 10000) + _3218 - _3326 + _3466 - _4553 + mem[_4763]
                    else:
                        if mem[_4302] + _3508 < _3508:
                            revert with 0, 'SafeMath: addition overflow'
                        if not mem[_4302] + _3508:
                            _4363 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4363] = 26
                            mem[_4363 + 32] = 'SafeMath: division by zero'
                            if debtThreshold < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if debtThreshold + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                return 1
                            if _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4758 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_4758] < mem[_4758]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < mem[_4758]
                                else:
                                    if _2966 * profitFactor / profitFactor != _2966:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2966 * profitFactor < mem[_4758]
                            else:
                                _4701 = mem[_3014 + 192]
                                _4727 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4727] = 30
                                mem[_4727 + 32] = 'SafeMath: subtraction overflow'
                                if _4701 > _3218 - _3326 + _3466:
                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                require ext_code.size(vaultAddress)
                                staticcall vaultAddress.creditAvailable() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4914 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3218 - _3326 + _3466 - _4701 + mem[_4914] < mem[_4914]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not profitFactor:
                                    mem[mem[64]] = 0 < _3218 - _3326 + _3466 - _4701 + mem[_4914]
                                else:
                                    if _2966 * profitFactor / profitFactor != _2966:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[mem[64]] = _2966 * profitFactor < _3218 - _3326 + _3466 - _4701 + mem[_4914]
                        else:
                            if wantAddress == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                                if not mem[_4302] + _3508:
                                    _4374 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4374] = 26
                                    mem[_4374 + 32] = 'SafeMath: division by zero'
                                    if debtThreshold < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if debtThreshold + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                        return 1
                                    if _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4790 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4790] < mem[_4790]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < mem[_4790]
                                        else:
                                            if _2966 * profitFactor / profitFactor != _2966:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2966 * profitFactor < mem[_4790]
                                    else:
                                        _4734 = mem[_3014 + 192]
                                        _4760 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4760] = 30
                                        mem[_4760 + 32] = 'SafeMath: subtraction overflow'
                                        if _4734 > _3218 - _3326 + _3466:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4946 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if _3218 - _3326 + _3466 - _4734 + mem[_4946] < mem[_4946]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < _3218 - _3326 + _3466 - _4734 + mem[_4946]
                                        else:
                                            if _2966 * profitFactor / profitFactor != _2966:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2966 * profitFactor < _3218 - _3326 + _3466 - _4734 + mem[_4946]
                                else:
                                    if (9000 * mem[_4302]) + (9000 * _3508) / mem[_4302] + _3508 != 9000:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    _4396 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4396] = 26
                                    mem[_4396 + 32] = 'SafeMath: division by zero'
                                    if (9000 * _4304) + (9000 * _3508) / 10000 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if debtThreshold < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if debtThreshold + ((9000 * _4304) + (9000 * _3508) / 10000) + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                        return 1
                                    if ((9000 * _4304) + (9000 * _3508) / 10000) + _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4836 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_4836] < mem[_4836]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < mem[_4836]
                                        else:
                                            if _2966 * profitFactor / profitFactor != _2966:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2966 * profitFactor < mem[_4836]
                                    else:
                                        _4789 = mem[_3014 + 192]
                                        _4813 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_4813] = 30
                                        mem[_4813 + 32] = 'SafeMath: subtraction overflow'
                                        if _4789 > ((9000 * _4304) + (9000 * _3508) / 10000) + _3218 - _3326 + _3466:
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.creditAvailable() with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _4988 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if ((9000 * _4304) + (9000 * _3508) / 10000) + _3218 - _3326 + _3466 - _4789 + mem[_4988] < mem[_4988]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not profitFactor:
                                            mem[mem[64]] = 0 < ((9000 * _4304) + (9000 * _3508) / 10000) + _3218 - _3326 + _3466 - _4789 + mem[_4988]
                                        else:
                                            if _2966 * profitFactor / profitFactor != _2966:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            mem[mem[64]] = _2966 * profitFactor < ((9000 * _4304) + (9000 * _3508) / 10000) + _3218 - _3326 + _3466 - _4789 + mem[_4988]
                            else:
                                require swapRouter <= 1
                                if not swapRouter:
                                    _4364 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_4364]
                                    mem[_4364 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require 1 < mem[_4364]
                                    mem[_4364 + 64] = wantAddress
                                    mem[_4364 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4364 + 100] = _4304 + _3508
                                    mem[_4364 + 132] = 64
                                    mem[_4364 + 164] = mem[_4364]
                                    idx = 0
                                    s = _4364 + 32
                                    t = _4364 + 196
                                    while idx < mem[_4364]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor13)
                                    staticcall stor13.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4364 + (32 * mem[_4364]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5497 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5501 = mem[_5497]
                                    require mem[_5497] <= test266151307()
                                    require _5497 + return_data.size > _5497 + mem[_5497] + 31
                                    _5505 = mem[_5497 + mem[_5497]]
                                    require mem[_5497 + mem[_5497]] <= test266151307()
                                    require (32 * mem[_5497 + mem[_5497]]) + 32 >= 0 and _5497 + ceil32(return_data.size) + (32 * mem[_5497 + mem[_5497]]) + 32 <= test266151307()
                                    mem[64] = _5497 + ceil32(return_data.size) + (32 * mem[_5497 + mem[_5497]]) + 32
                                    mem[_5497 + ceil32(return_data.size)] = _5505
                                    require return_data.size >= _5501 + (32 * _5505) + 32
                                    mem[_5497 + ceil32(return_data.size) + 32 len 32 * _5505] = mem[_5497 + _5501 + 32 len 32 * _5505]
                                    require _5505 - 1 < _5505
                                    _5869 = mem[(32 * _5505 - 1) + _5497 + ceil32(return_data.size) + 32]
                                    if not mem[(32 * _5505 - 1) + _5497 + ceil32(return_data.size) + 32]:
                                        _5877 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5877] = 26
                                        mem[_5877 + 32] = 'SafeMath: division by zero'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                            return 1
                                        if _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5966 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5966] < mem[_5966]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5966]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < mem[_5966]
                                        else:
                                            _5938 = mem[_3014 + 192]
                                            _5950 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5950] = 30
                                            mem[_5950 + 32] = 'SafeMath: subtraction overflow'
                                            if _5938 > _3218 - _3326 + _3466:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6048 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if _3218 - _3326 + _3466 - _5938 + mem[_6048] < mem[_6048]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < _3218 - _3326 + _3466 - _5938 + mem[_6048]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < _3218 - _3326 + _3466 - _5938 + mem[_6048]
                                    else:
                                        if 9000 * mem[(32 * _5505 - 1) + _5497 + ceil32(return_data.size) + 32] / mem[(32 * _5505 - 1) + _5497 + ceil32(return_data.size) + 32] != 9000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5885 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5885] = 26
                                        mem[_5885 + 32] = 'SafeMath: division by zero'
                                        if 9000 * _5869 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + (9000 * _5869 / 10000) + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                            return 1
                                        if (9000 * _5869 / 10000) + _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5993 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5993] < mem[_5993]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5993]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < mem[_5993]
                                        else:
                                            _5965 = mem[_3014 + 192]
                                            _5979 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5979] = 30
                                            mem[_5979 + 32] = 'SafeMath: subtraction overflow'
                                            if _5965 > (9000 * _5869 / 10000) + _3218 - _3326 + _3466:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6070 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if (9000 * _5869 / 10000) + _3218 - _3326 + _3466 - _5965 + mem[_6070] < mem[_6070]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < (9000 * _5869 / 10000) + _3218 - _3326 + _3466 - _5965 + mem[_6070]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < (9000 * _5869 / 10000) + _3218 - _3326 + _3466 - _5965 + mem[_6070]
                                else:
                                    _4365 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    require 0 < mem[_4365]
                                    mem[_4365 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                                    require 1 < mem[_4365]
                                    mem[_4365 + 64] = wantAddress
                                    mem[_4365 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                    mem[_4365 + 100] = _4304 + _3508
                                    mem[_4365 + 132] = 64
                                    mem[_4365 + 164] = mem[_4365]
                                    idx = 0
                                    s = _4365 + 32
                                    t = _4365 + 196
                                    while idx < mem[_4365]:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(stor14)
                                    staticcall stor14.mem[mem[64] len 4] with:
                                            gas gas_remaining wei
                                           args mem[mem[64] + 4 len _4365 + (32 * mem[_4365]) + -mem[64] + 192]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _5498 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _5502 = mem[_5498]
                                    require mem[_5498] <= test266151307()
                                    require _5498 + return_data.size > _5498 + mem[_5498] + 31
                                    _5506 = mem[_5498 + mem[_5498]]
                                    require mem[_5498 + mem[_5498]] <= test266151307()
                                    require (32 * mem[_5498 + mem[_5498]]) + 32 >= 0 and _5498 + ceil32(return_data.size) + (32 * mem[_5498 + mem[_5498]]) + 32 <= test266151307()
                                    mem[64] = _5498 + ceil32(return_data.size) + (32 * mem[_5498 + mem[_5498]]) + 32
                                    mem[_5498 + ceil32(return_data.size)] = _5506
                                    require return_data.size >= _5502 + (32 * _5506) + 32
                                    mem[_5498 + ceil32(return_data.size) + 32 len 32 * _5506] = mem[_5498 + _5502 + 32 len 32 * _5506]
                                    require _5506 - 1 < _5506
                                    _5870 = mem[(32 * _5506 - 1) + _5498 + ceil32(return_data.size) + 32]
                                    if not mem[(32 * _5506 - 1) + _5498 + ceil32(return_data.size) + 32]:
                                        _5878 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5878] = 26
                                        mem[_5878 + 32] = 'SafeMath: division by zero'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                            return 1
                                        if _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5970 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5970] < mem[_5970]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5970]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < mem[_5970]
                                        else:
                                            _5942 = mem[_3014 + 192]
                                            _5953 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5953] = 30
                                            mem[_5953 + 32] = 'SafeMath: subtraction overflow'
                                            if _5942 > _3218 - _3326 + _3466:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6054 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if _3218 - _3326 + _3466 - _5942 + mem[_6054] < mem[_6054]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < _3218 - _3326 + _3466 - _5942 + mem[_6054]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < _3218 - _3326 + _3466 - _5942 + mem[_6054]
                                    else:
                                        if 9000 * mem[(32 * _5506 - 1) + _5498 + ceil32(return_data.size) + 32] / mem[(32 * _5506 - 1) + _5498 + ceil32(return_data.size) + 32] != 9000:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        _5886 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_5886] = 26
                                        mem[_5886 + 32] = 'SafeMath: division by zero'
                                        if 9000 * _5870 / 10000 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if debtThreshold + (9000 * _5870 / 10000) + _3218 - _3326 + _3466 < mem[_3014 + 192]:
                                            return 1
                                        if (9000 * _5870 / 10000) + _3218 - _3326 + _3466 <= mem[_3014 + 192]:
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _5996 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_5996] < mem[_5996]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < mem[_5996]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < mem[_5996]
                                        else:
                                            _5969 = mem[_3014 + 192]
                                            _5983 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_5983] = 30
                                            mem[_5983 + 32] = 'SafeMath: subtraction overflow'
                                            if _5969 > (9000 * _5870 / 10000) + _3218 - _3326 + _3466:
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            require ext_code.size(vaultAddress)
                                            staticcall vaultAddress.creditAvailable() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6073 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if (9000 * _5870 / 10000) + _3218 - _3326 + _3466 - _5969 + mem[_6073] < mem[_6073]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not profitFactor:
                                                mem[mem[64]] = 0 < (9000 * _5870 / 10000) + _3218 - _3326 + _3466 - _5969 + mem[_6073]
                                            else:
                                                if _2966 * profitFactor / profitFactor != _2966:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[mem[64]] = _2966 * profitFactor < (9000 * _5870 / 10000) + _3218 - _3326 + _3466 - _5969 + mem[_6073]
    return memory
      from mem[64]
       len 32
}



}
