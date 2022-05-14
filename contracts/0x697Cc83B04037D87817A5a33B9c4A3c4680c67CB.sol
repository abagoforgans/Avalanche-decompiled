contract main {




// =====================  Runtime code  =====================


address governorAddress;
uint256 stor0;
address pendingGovernorAddress;
address reserveBeneficiaryAddress;
uint256 reserveRate;
mapping of uint256 sub_0f4733f1;
mapping of uint256 sub_232b9bb9;
mapping of uint256 riskLevel;
mapping of struct sub_232cd46f;

function governor() payable {
    return address(governorAddress)
}

function sub_0f4733f1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_0f4733f1[arg1]
}

function getRiskLevel(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if riskLevel[address(arg1)] == -1:
        revert with 0, 'getRiskLevel/bad-risk-level'
    return riskLevel[address(arg1)]
}

function sub_232b9bb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_232b9bb9[arg1]
}

function sub_232cd46f(?) payable {
    require calldata.size - 4 >= 32
    return sub_232cd46f[arg1].field_0, sub_232cd46f[arg1].field_0, sub_232cd46f[arg1].field_128
}

function getSafetyLTV(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if riskLevel[address(arg1)] == -1:
        revert with 0, 'getRiskLevel/bad-risk-level'
    if not sub_232cd46f[stor6[address(arg1)]].field_0:
        revert with 0, 'getSafetyLTV/no-ltv'
    return sub_232cd46f[stor6[address(arg1)]].field_0
}

function reserveRate() payable {
    return reserveRate
}

function getCollMaxAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_232b9bb9[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'getCollFactor/no-collateral-max-amount'
    return sub_232b9bb9[address(arg1)]
}

function getKillBountyRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if riskLevel[address(arg1)] == -1:
        revert with 0, 'getRiskLevel/bad-risk-level'
    if not sub_232cd46f[stor6[address(arg1)]].field_128:
        revert with 0, 'getKillBountyRate/no-rate'
    return sub_232cd46f[stor6[address(arg1)]].field_128
}

function getCollFactor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not sub_0f4733f1[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'getCollFactor/no-collateral-factor'
    return sub_0f4733f1[address(arg1)]
}

function reserveBeneficiary() payable {
    return reserveBeneficiaryAddress
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function getLiquidationLTV(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if riskLevel[address(arg1)] == -1:
        revert with 0, 'getRiskLevel/bad-risk-level'
    if not sub_232cd46f[stor6[address(arg1)]].field_64:
        revert with 0, 'getLiquidationLTV/no-ltv'
    return sub_232cd46f[stor6[address(arg1)]].field_64
}

function sub_eecce599(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return riskLevel[arg1]
}

function _fallback() payable {
    revert
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'setPendingGovernor/not-governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'acceptGovernor/not-pending-governor'
    pendingGovernorAddress = 0
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    emit SetGovernor(msg.sender);
}

function setReserveInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'setReserveInfo/not-governor'
    if arg2 >= 10^18:
        revert with 0, 'setReserveInfo/bad-rate'
    if not arg1:
        revert with 0, 'setReserveInfo/bad-beneficiary'
    reserveBeneficiaryAddress = arg1
    reserveRate = arg2
    emit SetReserveInfo(arg2, arg1);
}

function sub_9bb2d344(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'setRiskLevels/not-governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'setRiskLevels/bad-length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        riskLevel[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit SetRiskLevel(cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e84e6c33(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'setCollInfos/not-governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'setCollInfos/bad-length'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'setCollInfos/bad-length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] > 10^18:
            revert with 0, 'setCollInfos/bad-factor-value'
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[68] + 36)] <= 0:
            revert with 0, 'setCollInfos/bad-max-amount-value'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        sub_0f4733f1[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        sub_232b9bb9[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[68] + 36)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        mem[128] = cd[((32 * idx) + cd[68] + 36)]
        emit SetCollInfo(cd[((32 * idx) + cd[36] + 36)], cd[((32 * idx) + cd[68] + 36)], address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_f6bd51f6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'setRiskConfigs/not-governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'setRiskConfigs/bad-length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 36)] == uint64(cd[((96 * idx) + cd[36] + 36)])
        if uint64(cd[((96 * idx) + cd[36] + 36)]) > 10^18:
            revert with 0, 'setRiskConfigs/bad-safety-ltv'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 68)] == uint64(cd[((96 * idx) + cd[36] + 68)])
        if uint64(cd[((96 * idx) + cd[36] + 68)]) > 10^18:
            revert with 0, 'setRiskConfigs/bad-liquidation-ltv'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 68)] == uint64(cd[((96 * idx) + cd[36] + 68)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 36)] == uint64(cd[((96 * idx) + cd[36] + 36)])
        if uint64(cd[((96 * idx) + cd[36] + 36)]) >= uint64(cd[((96 * idx) + cd[36] + 68)]):
            revert with 0, 'setRiskConfigs/inconsistent-ltv-values'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 100)] == uint64(cd[((96 * idx) + cd[36] + 100)])
        if uint64(cd[((96 * idx) + cd[36] + 100)]) > 10^18:
            revert with 0, 'setRiskConfigs/bad-kill-reward-factor'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 7
        require cd[((96 * idx) + cd[36] + 36)] == uint64(cd[((96 * idx) + cd[36] + 36)])
        sub_232cd46f[cd[((32 * idx) + cd[4] + 36)]].field_0 = uint64(cd[((96 * idx) + cd[36] + 36)])
        require cd[((96 * idx) + cd[36] + 68)] == uint64(cd[((96 * idx) + cd[36] + 68)])
        sub_232cd46f[cd[((32 * idx) + cd[4] + 36)]].field_0 = uint64(cd[((96 * idx) + cd[36] + 36)])
        sub_232cd46f[cd[((32 * idx) + cd[4] + 36)]].field_64 = uint64(cd[((96 * idx) + cd[36] + 68)])
        require cd[((96 * idx) + cd[36] + 100)] == uint64(cd[((96 * idx) + cd[36] + 100)])
        sub_232cd46f[cd[((32 * idx) + cd[4] + 36)]].field_0 = uint64(cd[((96 * idx) + cd[36] + 36)])
        sub_232cd46f[cd[((32 * idx) + cd[4] + 36)]].field_64 = uint64(cd[((96 * idx) + cd[36] + 68)])
        sub_232cd46f[cd[((32 * idx) + cd[4] + 36)]].field_128 = uint64(cd[((96 * idx) + cd[36] + 100)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 36)] == uint64(cd[((96 * idx) + cd[36] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 68)] == uint64(cd[((96 * idx) + cd[36] + 68)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[36] + 100)] == uint64(cd[((96 * idx) + cd[36] + 100)])
        mem[mem[64]] = uint64(cd[((96 * idx) + cd[36] + 36)])
        mem[mem[64] + 32] = uint64(cd[((96 * idx) + cd[36] + 68)])
        mem[mem[64] + 64] = uint64(cd[((96 * idx) + cd[36] + 100)])
        emit SetRiskConfig(cd[((96 * idx) + cd[36] + 36)] << 192, cd[((96 * idx) + cd[36] + 68)] << 192, uint64(cd[((96 * idx) + cd[36] + 100)]), cd[((32 * idx) + cd[4] + 36)]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
