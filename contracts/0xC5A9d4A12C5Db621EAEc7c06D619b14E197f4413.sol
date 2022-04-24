contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - burn(uint256 arg1)
#  - updateLiquidity(address arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = '', 0

const decimals = 18

const symbol = '', 0


uint256 stor0;
address governorAddress;
uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 pendingLiquidity;
mapping of uint256 allowance;
mapping of struct stor5;
uint256 tokensTotal;
uint256 stor7;
uint256 rTokensTotal;
uint256 rValueTotal;
uint8 stor9;
uint8 stor9; offset 8
uint8 stor9; offset 16
uint8 stor9; offset 24
address stor9;
address stakingContractAddress; offset 32
uint128 stor10; offset 160
address migrationContractAddress;
uint256 stor10;
address rewardsBeneficiaryAddress;
mapping of address delegates;
array of struct numCheckpoints;
array of struct stor14;
mapping of uint256 stor15;

function governor() payable {
    return address(governorAddress)
}

function migrationContract() payable {
    return migrationContractAddress
}

function rewardsBeneficiary() payable {
    return rewardsBeneficiaryAddress
}

function rValueTotal() payable {
    return rValueTotal
}

function tokensTotal() payable {
    return tokensTotal
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
}

function pendingLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return pendingLiquidity[arg1]
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)].field_0 > test266151307():
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in 64 bits'
    return numCheckpoints[address(arg1)].field_0
}

function rTokensTotal() payable {
    return uint256(rTokensTotal)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function stakingContract() payable {
    return stakingContractAddress
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if tokensTotal > !uint256(rTokensTotal):
        revert with 0, 17
    return (tokensTotal + uint256(rTokensTotal))
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'LiquifiedGovernor: access denied'
    address(governorAddress) = arg1
}

function rFromToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and rValueTotal > -1 / arg1:
        revert with 0, 17
    if not uint256(rTokensTotal):
        revert with 0, 18
    return (arg1 * rValueTotal / uint256(rTokensTotal))
}

function tokenFromR(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and uint256(rTokensTotal) > -1 / arg1:
        revert with 0, 17
    if not rValueTotal:
        revert with 0, 18
    return (arg1 * uint256(rTokensTotal) / rValueTotal)
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)].field_0:
        if stor5[address(arg1)].field_256:
            return bool(stor5[address(arg1)].field_256)
    return (this.address == arg1)
}

function setRates(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if address(governorAddress) != msg.sender:
        revert with 0, 'LiquifiedGovernor: access denied'
    uint8(stor9.field_0) = arg1
    uint8(stor9.field_8) = arg2
    uint8(stor9.field_16) = arg3
    uint8(stor9.field_24) = arg4
}

function getVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numCheckpoints[address(arg1)].field_0:
        return 0
    if numCheckpoints[address(arg1)].field_0 < 1:
        revert with 0, 17
    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
        revert with 0, 50
    return numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)].field_0:
        if stor5[address(arg1)].field_256:
            return uint256(stor2[address(arg1)])
    if this.address == arg1:
        return uint256(stor2[address(arg1)])
    if uint256(stor2[address(arg1)]) and uint256(rTokensTotal) > -1 / uint256(stor2[address(arg1)]):
        revert with 0, 17
    if not rValueTotal:
        revert with 0, 18
    return (uint256(stor2[address(arg1)]) * uint256(rTokensTotal) / rValueTotal)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LQFD: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LQFD: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    stor0 = 1
    return 1
}

function getPastTotalVotes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LiquifiedToken: block not yet mined'
    idx = stor14.length
    while 0 < idx:
        if 0 > !idx:
            revert with 0, 17
        if idx / 2 >= stor14.length:
            revert with 0, 50
        mem[0] = 14
        if stor14[0.5 / idx].field_0 > arg1:
            idx = idx / 2
            continue 
        if 1 > !(idx / 2):
            revert with 0, 17
        idx = idx
        continue 
    if not idx:
        return 0
    if idx < 1:
        revert with 0, 17
    if idx - 1 >= stor14.length:
        revert with 0, 50
    return stor14[idx].field_0
}

function getPastVotes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LiquifiedToken: block not yet mined'
    mem[0] = arg1
    idx = numCheckpoints[mem[0]].field_0
    while 0 < idx:
        if 0 > !idx:
            revert with 0, 17
        if idx / 2 >= numCheckpoints[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 13)
        if numCheckpoints[address(arg1)][0.5 / idx].field_0 > arg2:
            idx = idx / 2
            continue 
        if 1 > !(idx / 2):
            revert with 0, 17
        idx = idx
        continue 
    if not idx:
        return 0
    if idx < 1:
        revert with 0, 17
    if idx - 1 >= numCheckpoints[address(arg1)].field_0:
        revert with 0, 50
    return numCheckpoints[address(arg1)][idx].field_0
}

function getDelegatorVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[address(arg1)].field_0:
        if stor5[address(arg1)].field_256:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            return ext_call.return_data[8 len 24]
    if this.address == arg1:
        require ext_code.size(stakingContractAddress)
        staticcall stakingContractAddress.accountRStake(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        return ext_call.return_data[8 len 24]
    if 0 > -Mask(192, 0, stor2[address(arg1)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.accountRStake(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(192, 0, stor2[address(arg1)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
}

function changeRewardsBeneficiary(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'LiquifiedGovernor: access denied'
    if rewardsBeneficiaryAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LQFD: Invalid beneficiary address!'
    emit 0x247e71a7: rewardsBeneficiaryAddress, arg1
    if not stor5[stor11].field_0:
        if this.address == rewardsBeneficiaryAddress:
            if not stor5[stor11].field_0:
                if this.address == rewardsBeneficiaryAddress:
                    if tokensTotal < uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal -= uint256(stor2[stor11])
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[stor11]) = 0
                else:
                    if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) < uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(rTokensTotal) -= uint256(stor2[stor11])
                    if rValueTotal < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                        revert with 0, 17
                    rValueTotal -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                        revert with 0, 17
                    uint256(stor2[stor11]) -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            else:
                if stor5[stor11].field_256:
                    if tokensTotal < uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal -= uint256(stor2[stor11])
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[stor11]) = 0
                else:
                    if this.address == rewardsBeneficiaryAddress:
                        if tokensTotal < uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11])
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[stor11]) = 0
                    else:
                        if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(rTokensTotal) -= uint256(stor2[stor11])
                        if rValueTotal < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        rValueTotal -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            rewardsBeneficiaryAddress = arg1
            if not stor5[address(arg1)].field_0:
                if this.address == arg1:
                    if tokensTotal > !uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal += uint256(stor2[stor11])
                    if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                else:
                    if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) > !uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(rTokensTotal) += uint256(stor2[stor11])
                    if rValueTotal > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    rValueTotal += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            else:
                if stor5[address(arg1)].field_256:
                    if tokensTotal > !uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal += uint256(stor2[stor11])
                    if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                else:
                    if this.address == arg1:
                        if tokensTotal > !uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11])
                        if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                    else:
                        if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(rTokensTotal) += uint256(stor2[stor11])
                        if rValueTotal > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
        else:
            if uint256(stor2[stor11]) and uint256(rTokensTotal) > -1 / uint256(stor2[stor11]):
                revert with 0, 17
            if not rValueTotal:
                revert with 0, 18
            if not stor5[stor11].field_0:
                if this.address == rewardsBeneficiaryAddress:
                    if tokensTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    tokensTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                else:
                    if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    uint256(rTokensTotal) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    if rValueTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                        revert with 0, 17
                    rValueTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                        revert with 0, 17
                    uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
            else:
                if stor5[stor11].field_256:
                    if tokensTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    tokensTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                else:
                    if this.address == rewardsBeneficiaryAddress:
                        if tokensTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    else:
                        if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        uint256(rTokensTotal) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if rValueTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        rValueTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
            rewardsBeneficiaryAddress = arg1
            if not stor5[address(arg1)].field_0:
                if this.address == arg1:
                    if tokensTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                        revert with 0, 17
                    tokensTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                else:
                    if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                        revert with 0, 17
                    uint256(rTokensTotal) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    if rValueTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    rValueTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
            else:
                if stor5[address(arg1)].field_256:
                    if tokensTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                        revert with 0, 17
                    tokensTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                else:
                    if this.address == arg1:
                        if tokensTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    else:
                        if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        uint256(rTokensTotal) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if rValueTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
    else:
        if stor5[stor11].field_256:
            if not stor5[stor11].field_0:
                if this.address == rewardsBeneficiaryAddress:
                    if tokensTotal < uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal -= uint256(stor2[stor11])
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[stor11]) = 0
                else:
                    if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) < uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(rTokensTotal) -= uint256(stor2[stor11])
                    if rValueTotal < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                        revert with 0, 17
                    rValueTotal -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                        revert with 0, 17
                    uint256(stor2[stor11]) -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            else:
                if stor5[stor11].field_256:
                    if tokensTotal < uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal -= uint256(stor2[stor11])
                    if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[stor11]) = 0
                else:
                    if this.address == rewardsBeneficiaryAddress:
                        if tokensTotal < uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11])
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[stor11]) = 0
                    else:
                        if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(rTokensTotal) -= uint256(stor2[stor11])
                        if rValueTotal < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        rValueTotal -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            rewardsBeneficiaryAddress = arg1
            if not stor5[address(arg1)].field_0:
                if this.address == arg1:
                    if tokensTotal > !uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal += uint256(stor2[stor11])
                    if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                else:
                    if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) > !uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(rTokensTotal) += uint256(stor2[stor11])
                    if rValueTotal > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    rValueTotal += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            else:
                if stor5[address(arg1)].field_256:
                    if tokensTotal > !uint256(stor2[stor11]):
                        revert with 0, 17
                    tokensTotal += uint256(stor2[stor11])
                    if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                else:
                    if this.address == arg1:
                        if tokensTotal > !uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11])
                        if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                    else:
                        if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(rTokensTotal) += uint256(stor2[stor11])
                        if rValueTotal > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
        else:
            if this.address == rewardsBeneficiaryAddress:
                if not stor5[stor11].field_0:
                    if this.address == rewardsBeneficiaryAddress:
                        if tokensTotal < uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11])
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[stor11]) = 0
                    else:
                        if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(rTokensTotal) -= uint256(stor2[stor11])
                        if rValueTotal < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        rValueTotal -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                else:
                    if stor5[stor11].field_256:
                        if tokensTotal < uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11])
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[stor11]) = 0
                    else:
                        if this.address == rewardsBeneficiaryAddress:
                            if tokensTotal < uint256(stor2[stor11]):
                                revert with 0, 17
                            tokensTotal -= uint256(stor2[stor11])
                            if uint256(stor2[stor11]) < uint256(stor2[stor11]):
                                revert with 0, 17
                            uint256(stor2[stor11]) = 0
                        else:
                            if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) < uint256(stor2[stor11]):
                                revert with 0, 17
                            uint256(rTokensTotal) -= uint256(stor2[stor11])
                            if rValueTotal < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                                revert with 0, 17
                            rValueTotal -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[stor11]) < uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal):
                                revert with 0, 17
                            uint256(stor2[stor11]) -= uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                rewardsBeneficiaryAddress = arg1
                if not stor5[address(arg1)].field_0:
                    if this.address == arg1:
                        if tokensTotal > !uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11])
                        if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                    else:
                        if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(rTokensTotal) += uint256(stor2[stor11])
                        if rValueTotal > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                else:
                    if stor5[address(arg1)].field_256:
                        if tokensTotal > !uint256(stor2[stor11]):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11])
                        if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                    else:
                        if this.address == arg1:
                            if tokensTotal > !uint256(stor2[stor11]):
                                revert with 0, 17
                            tokensTotal += uint256(stor2[stor11])
                            if uint256(stor2[address(arg1)]) > !uint256(stor2[stor11]):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += uint256(stor2[stor11])
                        else:
                            if uint256(stor2[stor11]) and rValueTotal > -1 / uint256(stor2[stor11]):
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !uint256(stor2[stor11]):
                                revert with 0, 17
                            uint256(rTokensTotal) += uint256(stor2[stor11])
                            if rValueTotal > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * rValueTotal / uint256(rTokensTotal)
            else:
                if uint256(stor2[stor11]) and uint256(rTokensTotal) > -1 / uint256(stor2[stor11]):
                    revert with 0, 17
                if not rValueTotal:
                    revert with 0, 18
                if not stor5[stor11].field_0:
                    if this.address == rewardsBeneficiaryAddress:
                        if tokensTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    else:
                        if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        uint256(rTokensTotal) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if rValueTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        rValueTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                else:
                    if stor5[stor11].field_256:
                        if tokensTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        tokensTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    else:
                        if this.address == rewardsBeneficiaryAddress:
                            if tokensTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                                revert with 0, 17
                            tokensTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                            if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                                revert with 0, 17
                            uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        else:
                            if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                                revert with 0, 17
                            uint256(rTokensTotal) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                            if rValueTotal < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                                revert with 0, 17
                            rValueTotal -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[stor11]) < uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal):
                                revert with 0, 17
                            uint256(stor2[stor11]) -= uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                rewardsBeneficiaryAddress = arg1
                if not stor5[address(arg1)].field_0:
                    if this.address == arg1:
                        if tokensTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    else:
                        if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        uint256(rTokensTotal) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if rValueTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                else:
                    if stor5[address(arg1)].field_256:
                        if tokensTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        tokensTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                    else:
                        if this.address == arg1:
                            if tokensTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                                revert with 0, 17
                            tokensTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                            if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                        else:
                            if uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal and rValueTotal > -1 / uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal:
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal):
                                revert with 0, 17
                            uint256(rTokensTotal) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal
                            if rValueTotal > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !(uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += uint256(stor2[stor11]) * uint256(rTokensTotal) / rValueTotal * rValueTotal / uint256(rTokensTotal)
}

function registerLP(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor5[address(arg1)].field_0:
        if stor5[address(arg1)].field_256:
            revert with 0, 'LQFD: Account already excluded.'
    if this.address == arg1:
        revert with 0, 'LQFD: Account already excluded.'
    if uint256(stor2[address(arg1)]) and uint256(rTokensTotal) > -1 / uint256(stor2[address(arg1)]):
        revert with 0, 17
    if not rValueTotal:
        revert with 0, 18
    if rValueTotal < uint256(stor2[address(arg1)]):
        revert with 0, 17
    rValueTotal -= uint256(stor2[address(arg1)])
    if uint256(rTokensTotal) < uint256(stor2[address(arg1)]) * uint256(rTokensTotal) / rValueTotal:
        revert with 0, 17
    uint256(rTokensTotal) -= uint256(stor2[address(arg1)]) * uint256(rTokensTotal) / rValueTotal
    if tokensTotal > !(uint256(stor2[address(arg1)]) * uint256(rTokensTotal) / rValueTotal):
        revert with 0, 17
    tokensTotal += uint256(stor2[address(arg1)]) * uint256(rTokensTotal) / rValueTotal
    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) * uint256(rTokensTotal) / rValueTotal
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == this.address == this.address == address(ext_call.return_data[0]):
        revert with 0, 'LQFD: Invalid LP'
    if not address(ext_call.return_data[0]):
        revert with 0, 'LQFD: Invalid LP!'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'LQFD: Invalid LP!'
    stor5[address(arg1)].field_0 = address(ext_call.return_data[0])
    stor5[address(arg1)].field_256 = address(ext_call.return_data[0])
    emit 0x3a19022f: arg1
    if not stor14.length:
        if stor14.length <= 0:
            if block.timestamp > test266151307():
                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
            stor14.length++
            stor14[stor14.length].field_0 = uint64(block.timestamp)
            stor14[stor14.length].field_0 = Mask(192, 0, stor7)
            stor14[stor14.length].field_192 = 0
        else:
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            if stor14[stor14.length].field_0 != Mask(192, 0, stor7):
                if block.timestamp > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                stor14.length++
                stor14[stor14.length].field_0 = uint64(block.timestamp)
                stor14[stor14.length].field_0 = Mask(192, 0, stor7)
                stor14[stor14.length].field_192 = 0
    else:
        if stor14.length < 1:
            revert with 0, 17
        if stor14.length - 1 >= stor14.length:
            revert with 0, 50
        if stor14[stor14.length].field_0 == block.timestamp:
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            stor14[stor14.length].field_0 = Mask(192, 0, stor7)
            stor14[stor14.length].field_0 = 0
        else:
            if stor14.length <= 0:
                if block.timestamp > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                stor14.length++
                stor14[stor14.length].field_0 = uint64(block.timestamp)
                stor14[stor14.length].field_0 = Mask(192, 0, stor7)
                stor14[stor14.length].field_192 = 0
            else:
                if stor14.length < 1:
                    revert with 0, 17
                if stor14.length - 1 >= stor14.length:
                    revert with 0, 50
                if stor14[stor14.length].field_0 != Mask(192, 0, stor7):
                    if block.timestamp > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                    stor14.length++
                    stor14[stor14.length].field_0 = uint64(block.timestamp)
                    stor14[stor14.length].field_0 = Mask(192, 0, stor7)
                    stor14[stor14.length].field_192 = 0
    if not stor5[address(arg1)].field_0:
        if this.address == arg1:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(arg1)]:
                stor15[address(arg1)] = ext_call.return_data[8 len 24]
            else:
                if ext_call.return_data[8 len 24] > stor15[address(arg1)]:
                    if ext_call.return_data[8 len 24] < stor15[address(arg1)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(arg1)]].field_0:
                        if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)])
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]))
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[8 len 24] >= stor15[address(arg1)]:
                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                    else:
                        if stor15[address(arg1)] < ext_call.return_data[8 len 24]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
        else:
            if 0 > -Mask(192, 0, stor2[address(arg1)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(192, 0, stor2[address(arg1)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(arg1)]:
                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
            else:
                if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) > stor15[address(arg1)]:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) < stor15[address(arg1)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(arg1)]].field_0:
                        if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                            stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                    else:
                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                            stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                else:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) >= stor15[address(arg1)]:
                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                    else:
                        if stor15[address(arg1)] < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])):
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
    else:
        if stor5[address(arg1)].field_256:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(arg1)]:
                stor15[address(arg1)] = ext_call.return_data[8 len 24]
            else:
                if ext_call.return_data[8 len 24] > stor15[address(arg1)]:
                    if ext_call.return_data[8 len 24] < stor15[address(arg1)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(arg1)]].field_0:
                        if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)])
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]))
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[8 len 24] >= stor15[address(arg1)]:
                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                    else:
                        if stor15[address(arg1)] < ext_call.return_data[8 len 24]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
        else:
            if this.address == arg1:
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not delegates[address(arg1)]:
                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                else:
                    if ext_call.return_data[8 len 24] > stor15[address(arg1)]:
                        if ext_call.return_data[8 len 24] < stor15[address(arg1)]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)])
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[8 len 24] >= stor15[address(arg1)]:
                            stor15[address(arg1)] = ext_call.return_data[8 len 24]
                        else:
                            if stor15[address(arg1)] < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if not numCheckpoints[stor12[address(arg1)]].field_0:
                                if 0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
            else:
                if 0 > -Mask(192, 0, stor2[address(arg1)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(192, 0, stor2[address(arg1)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not delegates[address(arg1)]:
                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                else:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) > stor15[address(arg1)]:
                        if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) < stor15[address(arg1)]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                    else:
                        if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) >= stor15[address(arg1)]:
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if stor15[address(arg1)] < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])):
                                revert with 0, 17
                            if not numCheckpoints[stor12[address(arg1)]].field_0:
                                if 0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
    stor0 = 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if migrationContractAddress != msg.sender:
        revert with 0, 'LQFD: Access denied!'
    if not stor5[address(arg1)].field_0:
        if this.address == arg1:
            if tokensTotal > !arg2:
                revert with 0, 17
            tokensTotal += arg2
            if uint256(stor2[address(arg1)]) > !arg2:
                revert with 0, 17
            uint256(stor2[address(arg1)]) += arg2
        else:
            if arg2 and rValueTotal > -1 / arg2:
                revert with 0, 17
            if not uint256(rTokensTotal):
                revert with 0, 18
            if uint256(rTokensTotal) > !arg2:
                revert with 0, 17
            uint256(rTokensTotal) += arg2
            if rValueTotal > !(arg2 * rValueTotal / uint256(rTokensTotal)):
                revert with 0, 17
            rValueTotal += arg2 * rValueTotal / uint256(rTokensTotal)
            if uint256(stor2[address(arg1)]) > !(arg2 * rValueTotal / uint256(rTokensTotal)):
                revert with 0, 17
            uint256(stor2[address(arg1)]) += arg2 * rValueTotal / uint256(rTokensTotal)
    else:
        if stor5[address(arg1)].field_256:
            if tokensTotal > !arg2:
                revert with 0, 17
            tokensTotal += arg2
            if uint256(stor2[address(arg1)]) > !arg2:
                revert with 0, 17
            uint256(stor2[address(arg1)]) += arg2
        else:
            if this.address == arg1:
                if tokensTotal > !arg2:
                    revert with 0, 17
                tokensTotal += arg2
                if uint256(stor2[address(arg1)]) > !arg2:
                    revert with 0, 17
                uint256(stor2[address(arg1)]) += arg2
            else:
                if arg2 and rValueTotal > -1 / arg2:
                    revert with 0, 17
                if not uint256(rTokensTotal):
                    revert with 0, 18
                if uint256(rTokensTotal) > !arg2:
                    revert with 0, 17
                uint256(rTokensTotal) += arg2
                if rValueTotal > !(arg2 * rValueTotal / uint256(rTokensTotal)):
                    revert with 0, 17
                rValueTotal += arg2 * rValueTotal / uint256(rTokensTotal)
                if uint256(stor2[address(arg1)]) > !(arg2 * rValueTotal / uint256(rTokensTotal)):
                    revert with 0, 17
                uint256(stor2[address(arg1)]) += arg2 * rValueTotal / uint256(rTokensTotal)
    emit code.data[19431 len 32]: arg2, 0, arg1
    if not stor14.length:
        if stor14.length <= 0:
            if block.timestamp > test266151307():
                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
            stor14.length++
            stor14[stor14.length].field_0 = uint64(block.timestamp)
            stor14[stor14.length].field_0 = Mask(192, 0, stor7)
            stor14[stor14.length].field_192 = 0
        else:
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            if stor14[stor14.length].field_0 != Mask(192, 0, stor7):
                if block.timestamp > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                stor14.length++
                stor14[stor14.length].field_0 = uint64(block.timestamp)
                stor14[stor14.length].field_0 = Mask(192, 0, stor7)
                stor14[stor14.length].field_192 = 0
    else:
        if stor14.length < 1:
            revert with 0, 17
        if stor14.length - 1 >= stor14.length:
            revert with 0, 50
        if stor14[stor14.length].field_0 == block.timestamp:
            if stor14.length < 1:
                revert with 0, 17
            if stor14.length - 1 >= stor14.length:
                revert with 0, 50
            stor14[stor14.length].field_0 = Mask(192, 0, stor7)
            stor14[stor14.length].field_0 = 0
        else:
            if stor14.length <= 0:
                if block.timestamp > test266151307():
                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                stor14.length++
                stor14[stor14.length].field_0 = uint64(block.timestamp)
                stor14[stor14.length].field_0 = Mask(192, 0, stor7)
                stor14[stor14.length].field_192 = 0
            else:
                if stor14.length < 1:
                    revert with 0, 17
                if stor14.length - 1 >= stor14.length:
                    revert with 0, 50
                if stor14[stor14.length].field_0 != Mask(192, 0, stor7):
                    if block.timestamp > test266151307():
                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                    stor14.length++
                    stor14[stor14.length].field_0 = uint64(block.timestamp)
                    stor14[stor14.length].field_0 = Mask(192, 0, stor7)
                    stor14[stor14.length].field_192 = 0
    if not stor5[address(arg1)].field_0:
        if this.address == arg1:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(arg1)]:
                stor15[address(arg1)] = ext_call.return_data[8 len 24]
            else:
                if ext_call.return_data[8 len 24] > stor15[address(arg1)]:
                    if ext_call.return_data[8 len 24] < stor15[address(arg1)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(arg1)]].field_0:
                        if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)])
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]))
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[8 len 24] >= stor15[address(arg1)]:
                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                    else:
                        if stor15[address(arg1)] < ext_call.return_data[8 len 24]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
        else:
            if 0 > -Mask(192, 0, stor2[address(arg1)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(192, 0, stor2[address(arg1)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(arg1)]:
                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
            else:
                if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) > stor15[address(arg1)]:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) < stor15[address(arg1)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(arg1)]].field_0:
                        if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                            stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                    else:
                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                            stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                else:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) >= stor15[address(arg1)]:
                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                    else:
                        if stor15[address(arg1)] < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])):
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
    else:
        if stor5[address(arg1)].field_256:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(arg1)]:
                stor15[address(arg1)] = ext_call.return_data[8 len 24]
            else:
                if ext_call.return_data[8 len 24] > stor15[address(arg1)]:
                    if ext_call.return_data[8 len 24] < stor15[address(arg1)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(arg1)]].field_0:
                        if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)])
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(arg1)]].field_0++
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]))
                                stor15[address(arg1)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[8 len 24] >= stor15[address(arg1)]:
                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                    else:
                        if stor15[address(arg1)] < ext_call.return_data[8 len 24]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
        else:
            if this.address == arg1:
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not delegates[address(arg1)]:
                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                else:
                    if ext_call.return_data[8 len 24] > stor15[address(arg1)]:
                        if ext_call.return_data[8 len 24] < stor15[address(arg1)]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)])
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)])
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(arg1)]))
                                    stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(arg1)]))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[8 len 24] >= stor15[address(arg1)]:
                            stor15[address(arg1)] = ext_call.return_data[8 len 24]
                        else:
                            if stor15[address(arg1)] < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if not numCheckpoints[stor12[address(arg1)]].field_0:
                                if 0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - ext_call.return_data[8 len 24]))
                                        stor15[address(arg1)] = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[0])))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[0])
            else:
                if 0 > -Mask(192, 0, stor2[address(arg1)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(192, 0, stor2[address(arg1)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not delegates[address(arg1)]:
                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                else:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) > stor15[address(arg1)]:
                        if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) < stor15[address(arg1)]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(arg1)]].field_0:
                            if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)])
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(arg1)]].field_0++
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                    stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)])) - stor15[address(arg1)]))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                    else:
                        if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])) >= stor15[address(arg1)]:
                            stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                        else:
                            if stor15[address(arg1)] < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)])):
                                revert with 0, 17
                            if not numCheckpoints[stor12[address(arg1)]].field_0:
                                if 0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                            else:
                                if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 < Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(arg1)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(arg1)]].field_0++
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                    stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
                                else:
                                    if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(arg1)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(arg1)]].field_0 - 1 >= numCheckpoints[stor12[address(arg1)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(arg1)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(arg1)]].field_0++
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(arg1)]][numCheckpoints[stor12[address(arg1)]].field_0].field_0 - Mask(192, 0, stor15[address(arg1)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))))
                                        stor15[address(arg1)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(arg1)]))
}

function initialize() payable {
    if migrationContractAddress:
        revert with 0, 'LQFD: Already initialized'
    uint256(stor10.field_0) = Mask(96, 0, stor10.field_160)
    uint256(stor1) = tx.origin or Mask(96, 160, uint256(stor1))
    create contract with 0 wei
                    code: code.data[12410 len 7021], tx.origin
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakingContractAddress = address(create.new_address)
    uint256(stor2[address(stor10.field_0)]) = rValueTotal
    if not stor5[address(stor10.field_0)].field_0:
        if this.address == migrationContractAddress:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args migrationContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(stor10.field_0)]:
                stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
            else:
                if ext_call.return_data[8 len 24] > stor15[address(stor10.field_0)]:
                    if ext_call.return_data[8 len 24] < stor15[address(stor10.field_0)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                        if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)])
                            stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)]))
                            stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[8 len 24] >= stor15[address(stor10.field_0)]:
                        stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                    else:
                        if stor15[address(stor10.field_0)] < ext_call.return_data[8 len 24]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]))
                                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 < Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]))
                                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
        else:
            if 0 > -Mask(192, 0, stor2[address(stor10.field_0)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args migrationContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(192, 0, stor2[address(stor10.field_0)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(stor10.field_0)]:
                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
            else:
                if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) > stor15[address(stor10.field_0)]:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) < stor15[address(stor10.field_0)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                        if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)])
                            stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                    else:
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]))
                            stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                else:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) >= stor15[address(stor10.field_0)]:
                        stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                    else:
                        if stor15[address(stor10.field_0)] < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])):
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 < Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
    else:
        if stor5[address(stor10.field_0)].field_256:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args migrationContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if not delegates[address(stor10.field_0)]:
                stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
            else:
                if ext_call.return_data[8 len 24] > stor15[address(stor10.field_0)]:
                    if ext_call.return_data[8 len 24] < stor15[address(stor10.field_0)]:
                        revert with 0, 17
                    if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                        if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)])
                            stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            revert with 0, 50
                        if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]):
                            revert with 0, 17
                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                            if block.timestamp > test266151307():
                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                            numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                            numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)]))
                            stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                            else:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                else:
                    if ext_call.return_data[8 len 24] >= stor15[address(stor10.field_0)]:
                        stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                    else:
                        if stor15[address(stor10.field_0)] < ext_call.return_data[8 len 24]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            if 0 < Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]))
                                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 < Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]))
                                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
        else:
            if this.address == migrationContractAddress:
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args migrationContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not delegates[address(stor10.field_0)]:
                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                else:
                    if ext_call.return_data[8 len 24] > stor15[address(stor10.field_0)]:
                        if ext_call.return_data[8 len 24] < stor15[address(stor10.field_0)]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)])
                                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)])
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] - stor15[address(stor10.field_0)]))
                                    stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) - stor15[address(stor10.field_0)]))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                    else:
                        if ext_call.return_data[8 len 24] >= stor15[address(stor10.field_0)]:
                            stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                        else:
                            if stor15[address(stor10.field_0)] < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                if 0 < Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]))
                                        stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                        stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 < Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - ext_call.return_data[8 len 24]))
                                        stor15[address(stor10.field_0)] = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[0])))
                                        stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[0])
            else:
                if 0 > -Mask(192, 0, stor2[address(stor10.field_0)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args migrationContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(192, 0, stor2[address(stor10.field_0)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if not delegates[address(stor10.field_0)]:
                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                else:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) > stor15[address(stor10.field_0)]:
                        if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) < stor15[address(stor10.field_0)]:
                            revert with 0, 17
                        if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                            if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)])
                                stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)])
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)])
                                    stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                        else:
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]))
                                stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 + Mask(192, 0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)])) - stor15[address(stor10.field_0)]))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                    else:
                        if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])) >= stor15[address(stor10.field_0)]:
                            stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                        else:
                            if stor15[address(stor10.field_0)] < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)])):
                                revert with 0, 17
                            if not numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                if 0 < Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                                else:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                        stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                        stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                            else:
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 < Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(stor10.field_0)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                    stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
                                else:
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(stor10.field_0)]].field_0 - 1 >= numCheckpoints[stor12[address(stor10.field_0)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                        stor15[address(stor10.field_0)] = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(stor10.field_0)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(stor10.field_0)]].field_0++
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(stor10.field_0)]][numCheckpoints[stor12[address(stor10.field_0)]].field_0].field_0 - Mask(192, 0, stor15[address(stor10.field_0)] - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))))
                                        stor15[address(stor10.field_0)] = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(stor10.field_0)]))
    emit code.data[19431 len 32]: uint256(rTokensTotal), 0, msg.sender
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5[address(msg.sender)].field_0:
        if this.address == msg.sender:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            delegates[address(msg.sender)] = arg1
            emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
            if delegates[address(msg.sender)] != arg1:
                if ext_call.return_data[8 len 24] > 0:
                    if not delegates[address(msg.sender)]:
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > !ext_call.return_data[8 len 24]:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                emit DelegateVotesChanged(0, Mask(192, 0, ext_call.return_data[0]), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 0, 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !ext_call.return_data[8 len 24]:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + ext_call.return_data[8 len 24])
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]), arg1);
                    else:
                        if not numCheckpoints[stor12[address(msg.sender)]].field_0:
                            if 0 < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(msg.sender)]].field_0++
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[0]))
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, -ext_call.return_data[8 len 24])
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[0]))
                            emit DelegateVotesChanged(0, -Mask(192, 0, ext_call.return_data[0]), delegates[address(msg.sender)]);
                        else:
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(msg.sender)]].field_0++
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]))
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - ext_call.return_data[8 len 24])
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]))
                            emit DelegateVotesChanged(numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]), delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > !Mask(192, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, ext_call.return_data[0])
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                emit DelegateVotesChanged(0, Mask(192, 0, ext_call.return_data[0]), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 0, 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]), arg1);
        else:
            if 0 > -Mask(192, 0, stor2[address(msg.sender)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(192, 0, stor2[address(msg.sender)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            delegates[address(msg.sender)] = arg1
            emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
            if delegates[address(msg.sender)] != arg1:
                if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])) > 0:
                    if not delegates[address(msg.sender)]:
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                emit DelegateVotesChanged(0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 0, 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
                    else:
                        if not numCheckpoints[stor12[address(msg.sender)]].field_0:
                            if 0 < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(msg.sender)]].field_0++
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                            emit DelegateVotesChanged(0, -Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), delegates[address(msg.sender)]);
                        else:
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(msg.sender)]].field_0++
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])))
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                            emit DelegateVotesChanged(numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                emit DelegateVotesChanged(0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 0, 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
    else:
        if stor5[address(msg.sender)].field_256:
            require ext_code.size(stakingContractAddress)
            staticcall stakingContractAddress.accountRStake(address rg1) with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            delegates[address(msg.sender)] = arg1
            emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
            if delegates[address(msg.sender)] != arg1:
                if ext_call.return_data[8 len 24] > 0:
                    if not delegates[address(msg.sender)]:
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > !ext_call.return_data[8 len 24]:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = ext_call.return_data[8 len 24]
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                emit DelegateVotesChanged(0, Mask(192, 0, ext_call.return_data[0]), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 0, 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !ext_call.return_data[8 len 24]:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + ext_call.return_data[8 len 24])
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]), arg1);
                    else:
                        if not numCheckpoints[stor12[address(msg.sender)]].field_0:
                            if 0 < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(msg.sender)]].field_0++
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[0]))
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, -ext_call.return_data[8 len 24])
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[0]))
                            emit DelegateVotesChanged(0, -Mask(192, 0, ext_call.return_data[0]), delegates[address(msg.sender)]);
                        else:
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                revert with 0, 50
                            if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 < ext_call.return_data[8 len 24]:
                                revert with 0, 17
                            if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                if block.timestamp > test266151307():
                                    revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                numCheckpoints[stor12[address(msg.sender)]].field_0++
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]))
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - ext_call.return_data[8 len 24])
                                else:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]))
                            emit DelegateVotesChanged(numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]), delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)].field_0:
                                if 0 > !Mask(192, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, ext_call.return_data[0])
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                emit DelegateVotesChanged(0, Mask(192, 0, ext_call.return_data[0]), arg1);
                            else:
                                if numCheckpoints[address(arg1)].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                    revert with 0, 50
                                if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, ext_call.return_data[0]):
                                    revert with 0, 17
                                if numCheckpoints[address(arg1)].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[address(arg1)].field_0++
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]), arg1);
        else:
            if this.address == msg.sender:
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                delegates[address(msg.sender)] = arg1
                emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
                if delegates[address(msg.sender)] != arg1:
                    if ext_call.return_data[8 len 24] > 0:
                        if not delegates[address(msg.sender)]:
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > !ext_call.return_data[8 len 24]:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = ext_call.return_data[8 len 24]
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                    emit DelegateVotesChanged(0, Mask(192, 0, ext_call.return_data[0]), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !ext_call.return_data[8 len 24]:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + ext_call.return_data[8 len 24])
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]), arg1);
                        else:
                            if not numCheckpoints[stor12[address(msg.sender)]].field_0:
                                if 0 < ext_call.return_data[8 len 24]:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[0]))
                                else:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, -ext_call.return_data[8 len 24])
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(msg.sender)]].field_0++
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[0]))
                                emit DelegateVotesChanged(0, -Mask(192, 0, ext_call.return_data[0]), delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 < ext_call.return_data[8 len 24]:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]))
                                else:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - ext_call.return_data[8 len 24])
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(msg.sender)]].field_0++
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]))
                                emit DelegateVotesChanged(numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[0]), delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > !Mask(192, 0, ext_call.return_data[0]):
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, ext_call.return_data[0])
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, ext_call.return_data[0])
                                    emit DelegateVotesChanged(0, Mask(192, 0, ext_call.return_data[0]), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, ext_call.return_data[0]):
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[0]), arg1);
            else:
                if 0 > -Mask(192, 0, stor2[address(msg.sender)]) + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require ext_code.size(stakingContractAddress)
                staticcall stakingContractAddress.accountRStake(address rg1) with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if Mask(192, 0, stor2[address(msg.sender)]) > -ext_call.return_data[8 len 24] + 0xffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                delegates[address(msg.sender)] = arg1
                emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
                if delegates[address(msg.sender)] != arg1:
                    if Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])) > 0:
                        if not delegates[address(msg.sender)]:
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > !Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)]))
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                    emit DelegateVotesChanged(0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])))
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
                        else:
                            if not numCheckpoints[stor12[address(msg.sender)]].field_0:
                                if 0 < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                else:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, -Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(msg.sender)]].field_0++
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, -Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                emit DelegateVotesChanged(0, -Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), delegates[address(msg.sender)]);
                            else:
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                    revert with 0, 50
                                if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 < Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])):
                                    revert with 0, 17
                                if numCheckpoints[stor12[address(msg.sender)]].field_0 <= 0:
                                    if block.timestamp > test266151307():
                                        revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                    numCheckpoints[stor12[address(msg.sender)]].field_0++
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                    numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                else:
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 == block.timestamp:
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[stor12[address(msg.sender)]].field_0 - 1 >= numCheckpoints[stor12[address(msg.sender)]].field_0:
                                            revert with 0, 50
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, ext_call.return_data[8 len 24] + Mask(192, 0, stor2[address(msg.sender)])))
                                    else:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[stor12[address(msg.sender)]].field_0++
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_64 = Mask(192, 0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                emit DelegateVotesChanged(numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0, numCheckpoints[stor12[address(msg.sender)]][numCheckpoints[stor12[address(msg.sender)]].field_0].field_0 - Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)].field_0:
                                    if 0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])):
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)]))
                                    emit DelegateVotesChanged(0, Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
                                else:
                                    if numCheckpoints[address(arg1)].field_0 < 1:
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                        revert with 0, 50
                                    if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 > !Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])):
                                        revert with 0, 17
                                    if numCheckpoints[address(arg1)].field_0 <= 0:
                                        if block.timestamp > test266151307():
                                            revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                        numCheckpoints[address(arg1)].field_0++
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                        numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                    else:
                                        if numCheckpoints[address(arg1)].field_0 < 1:
                                            revert with 0, 17
                                        if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                            revert with 0, 50
                                        if numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 == block.timestamp:
                                            if numCheckpoints[address(arg1)].field_0 < 1:
                                                revert with 0, 17
                                            if numCheckpoints[address(arg1)].field_0 - 1 >= numCheckpoints[address(arg1)].field_0:
                                                revert with 0, 50
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                        else:
                                            if block.timestamp > test266151307():
                                                revert with 0, 'SafeCast: value doesn't fit in 64 bits'
                                            numCheckpoints[address(arg1)].field_0++
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 = uint64(block.timestamp)
                                            numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_64 = Mask(192, 0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])))
                                    emit DelegateVotesChanged(numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0, numCheckpoints[address(arg1)][numCheckpoints[address(arg1)].field_0].field_0 + Mask(192, 0, Mask(192, 0, ext_call.return_data[0]) + Mask(192, 0, stor2[address(msg.sender)])), arg1);
}

function provideLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.sender != this.address:
        revert with 0, 'LQFD: Access forebidden.'
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if this.address == stor5[address(arg1)].field_0:
        if ext_call.return_data[18 len 14] > !arg2:
            revert with 0, 17
        if ext_call.return_data[18 len 14] and ext_call.return_data[18 len 14] + arg2 > -1 / ext_call.return_data[18 len 14]:
            revert with 0, 17
        if (ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14]) <= 3:
            if (ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14]):
                if 1 < ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if -ext_call.return_data[18 len 14] + 1 > 0x3ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003f:
                    revert with 0, 17
                if ext_call.return_data[18 len 14] > !((-1025 * ext_call.return_data[18 len 14]) + 1025 / 1000):
                    revert with 0, 17
                if ext_call.return_data[50 len 14] and (-1025 * ext_call.return_data[18 len 14]) + 1025 / 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14] + ((-1025 * ext_call.return_data[18 len 14]) + 1025 / 1000):
                    revert with 0, 18
                if ext_call.return_data[50 len 14] * (-1025 * ext_call.return_data[18 len 14]) + 1025 / 1000 / ext_call.return_data[18 len 14] + ((-1025 * ext_call.return_data[18 len 14]) + 1025 / 1000) > 0x433766a99dcd100433766a99dcd100433766a99dcd100433766a99dcd10043:
                    revert with 0, 17
                require ext_code.size(stor5[address(arg1)].field_256)
                staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args stakingContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5[address(arg1)].field_0:
                    if arg1 != this.address:
                        if (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 and rValueTotal > -1 / (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                            revert with 0, 17
                        uint256(rTokensTotal) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                        if rValueTotal > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        if this.address == stor5[address(arg1)].field_0:
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0
                        else:
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor5[address(arg1)].field_256)
                        staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args stor5[address(arg1)].field_256, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args stakingContractAddress
                    else:
                        if tokensTotal > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                            revert with 0, 17
                        tokensTotal += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                        if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                        if this.address == stor5[address(arg1)].field_0:
                            mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0, None
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(stor5[address(arg1)].field_256)
                        staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                        mem[(4 * ceil32(return_data.size)) + 164] = arg1
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                else:
                    if not stor5[address(arg1)].field_256:
                        if this.address == arg1:
                            if tokensTotal > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                revert with 0, 17
                            tokensTotal += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                            if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                        else:
                            if (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 and rValueTotal > -1 / (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000:
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                revert with 0, 17
                            uint256(rTokensTotal) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                            if rValueTotal > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        if this.address == stor5[address(arg1)].field_0:
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0
                        else:
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor5[address(arg1)].field_256)
                        staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args stor5[address(arg1)].field_256, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args stakingContractAddress
                    else:
                        if tokensTotal > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                            revert with 0, 17
                        tokensTotal += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                        if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000
                        if this.address == stor5[address(arg1)].field_0:
                            mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0, None
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(stor5[address(arg1)].field_256)
                        staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                        mem[(4 * ceil32(return_data.size)) + 164] = arg1
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[0])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            else:
                if 0 < ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if -ext_call.return_data[18 len 14] > 0x3ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003f:
                    revert with 0, 17
                if ext_call.return_data[18 len 14] > !(-1025 * ext_call.return_data[18 len 14] / 1000):
                    revert with 0, 17
                if ext_call.return_data[50 len 14] and -1025 * ext_call.return_data[18 len 14] / 1000 > -1 / ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if not ext_call.return_data[18 len 14] + (-1025 * ext_call.return_data[18 len 14] / 1000):
                    revert with 0, 18
                if ext_call.return_data[50 len 14] * -1025 * ext_call.return_data[18 len 14] / 1000 / ext_call.return_data[18 len 14] + (-1025 * ext_call.return_data[18 len 14] / 1000) > 0x433766a99dcd100433766a99dcd100433766a99dcd100433766a99dcd10043:
                    revert with 0, 17
                require ext_code.size(stor5[address(arg1)].field_256)
                staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args stakingContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5[address(arg1)].field_0:
                    if this.address == arg1:
                        if tokensTotal > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                            revert with 0, 17
                        tokensTotal += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                        if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                        if stor5[address(arg1)].field_0 != this.address:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_256, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    else:
                        if -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 and rValueTotal > -1 / -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                            revert with 0, 17
                        uint256(rTokensTotal) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                        if rValueTotal > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if this.address == stor5[address(arg1)].field_0:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_256, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                else:
                    if stor5[address(arg1)].field_256:
                        if tokensTotal > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                            revert with 0, 17
                        tokensTotal += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                        if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                        if this.address == stor5[address(arg1)].field_0:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_256, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    else:
                        if this.address == arg1:
                            if tokensTotal > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                revert with 0, 17
                            tokensTotal += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                            if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                            require ext_code.size(arg1)
                            if this.address == stor5[address(arg1)].field_0:
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, address(stor9.field_0), 128, 0
                            else:
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_256, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            if -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 and rValueTotal > -1 / -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                revert with 0, 17
                            uint256(rTokensTotal) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000
                            if rValueTotal > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal / uint256(rTokensTotal)
                            if this.address == stor5[address(arg1)].field_0:
                                mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000
                                mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                                mem[(2 * ceil32(return_data.size)) + 228] = 128
                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, address(stor9.field_0), 128, 0, None
                            else:
                                mem[(2 * ceil32(return_data.size)) + 164] = 0
                                mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                                mem[(2 * ceil32(return_data.size)) + 228] = 128
                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 975 * Mask(112, 0, ext_call.return_data[32]) * -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 / Mask(112, 0, ext_call.return_data[0]) + (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_256)
                            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[0]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[0]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
        else:
            if 1 > !((ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14]) / 2):
                revert with 0, 17
            s = ((ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14]) / 2) + 1
            t = (ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14])
            while s < t:
                if not s:
                    revert with 0, 18
                if (ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14]) / s > !s:
                    revert with 0, 17
                s = ((ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14]) + (arg2 * ext_call.return_data[18 len 14]) / s) + s / 2
                t = s
                continue 
            if t < ext_call.return_data[18 len 14]:
                revert with 0, 17
            if t - ext_call.return_data[18 len 14] > 0x3ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003f:
                revert with 0, 17
            if ext_call.return_data[18 len 14] > !((1025 * t) - (1025 * ext_call.return_data[18 len 14]) / 1000):
                revert with 0, 17
            if ext_call.return_data[50 len 14] and (1025 * t) - (1025 * ext_call.return_data[18 len 14]) / 1000 > -1 / ext_call.return_data[50 len 14]:
                revert with 0, 17
            if not ext_call.return_data[18 len 14] + ((1025 * t) - (1025 * ext_call.return_data[18 len 14]) / 1000):
                revert with 0, 18
            if ext_call.return_data[50 len 14] * (1025 * t) - (1025 * ext_call.return_data[18 len 14]) / 1000 / ext_call.return_data[18 len 14] + ((1025 * t) - (1025 * ext_call.return_data[18 len 14]) / 1000) > 0x433766a99dcd100433766a99dcd100433766a99dcd100433766a99dcd10043:
                revert with 0, 17
            require ext_code.size(stor5[address(arg1)].field_256)
            staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor5[address(arg1)].field_0:
                if stor5[address(arg1)].field_256:
                    if tokensTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                        revert with 0, 17
                    tokensTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                    if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                else:
                    if this.address == arg1:
                        if tokensTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                            revert with 0, 17
                        tokensTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                        if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                    else:
                        if (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 and rValueTotal > -1 / (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                            revert with 0, 17
                        uint256(rTokensTotal) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                        if rValueTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)
                require ext_code.size(arg1)
                if this.address == stor5[address(arg1)].field_0:
                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) / 1000, address(stor9.field_0), 128, 0
                else:
                    call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 975 * Mask(112, 0, ext_call.return_data[32]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor5[address(arg1)].field_256)
                staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args stakingContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(stakingContractAddress)
                call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args stor5[address(arg1)].field_256, address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000:
                    revert with 0, 17
                if not stor5[address(arg1)].field_0:
                    if this.address == arg1:
                        if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                            revert with 0, 17
                        tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                        if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                    else:
                        if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                            revert with 0, 17
                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                        if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                else:
                    if stor5[address(arg1)].field_256:
                        if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                            revert with 0, 17
                        tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                        if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                    else:
                        if this.address == arg1:
                            if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                        else:
                            if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                require ext_code.size(arg1)
                call arg1.mint(address rg1) with:
                     gas gas_remaining wei
                    args stakingContractAddress
            else:
                if this.address == arg1:
                    if tokensTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                        revert with 0, 17
                    tokensTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                    if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                    require ext_code.size(arg1)
                    if this.address == stor5[address(arg1)].field_0:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) / 1000, address(stor9.field_0), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 975 * Mask(112, 0, ext_call.return_data[32]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor5[address(arg1)].field_256)
                    staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args stakingContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args stor5[address(arg1)].field_256, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000:
                        revert with 0, 17
                    if not stor5[address(arg1)].field_0:
                        if this.address == arg1:
                            if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                        else:
                            if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                    else:
                        if stor5[address(arg1)].field_256:
                            if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                        else:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                    require ext_code.size(arg1)
                    call arg1.mint(address rg1) with:
                         gas gas_remaining wei
                        args stakingContractAddress
                else:
                    if (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 and rValueTotal > -1 / (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000:
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                        revert with 0, 17
                    uint256(rTokensTotal) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000
                    if rValueTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    rValueTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal / uint256(rTokensTotal)
                    if this.address == stor5[address(arg1)].field_0:
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 975 * Mask(112, 0, ext_call.return_data[32]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) / 1000, address(stor9.field_0), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor5[address(arg1)].field_256)
                        staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args stor5[address(arg1)].field_256, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args stakingContractAddress
                    else:
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 975 * Mask(112, 0, ext_call.return_data[32]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 / Mask(112, 0, ext_call.return_data[0]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(stor5[address(arg1)].field_256)
                        staticcall stor5[address(arg1)].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_256
                        mem[(4 * ceil32(return_data.size)) + 164] = arg1
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[0])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
    else:
        if ext_call.return_data[50 len 14] > !arg2:
            revert with 0, 17
        if ext_call.return_data[50 len 14] and ext_call.return_data[50 len 14] + arg2 > -1 / ext_call.return_data[50 len 14]:
            revert with 0, 17
        if (ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14]) <= 3:
            if not (ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14]):
                if 0 < ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if -ext_call.return_data[50 len 14] > 0x3ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003f:
                    revert with 0, 17
                if ext_call.return_data[50 len 14] > !(-1025 * ext_call.return_data[50 len 14] / 1000):
                    revert with 0, 17
                if ext_call.return_data[18 len 14] and -1025 * ext_call.return_data[50 len 14] / 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14] + (-1025 * ext_call.return_data[50 len 14] / 1000):
                    revert with 0, 18
                if ext_call.return_data[18 len 14] * -1025 * ext_call.return_data[50 len 14] / 1000 / ext_call.return_data[50 len 14] + (-1025 * ext_call.return_data[50 len 14] / 1000) > 0x433766a99dcd100433766a99dcd100433766a99dcd100433766a99dcd10043:
                    revert with 0, 17
                require ext_code.size(stor5[address(arg1)].field_0)
                staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args stakingContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5[address(arg1)].field_0:
                    if this.address == arg1:
                        if tokensTotal > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                            revert with 0, 17
                        tokensTotal += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                        if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                    else:
                        if -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 and rValueTotal > -1 / -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                            revert with 0, 17
                        uint256(rTokensTotal) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                        if rValueTotal > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)
                    require ext_code.size(arg1)
                    if this.address == stor5[address(arg1)].field_0:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000, address(stor9.field_0), 128, 0
                    else:
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor5[address(arg1)].field_0)
                    staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args stakingContractAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args stor5[address(arg1)].field_0, address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 < -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000:
                        revert with 0, 17
                    if not stor5[address(arg1)].field_0:
                        if this.address == arg1:
                            if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                        else:
                            if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                revert with 0, 17
                            uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                            if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                    else:
                        if stor5[address(arg1)].field_256:
                            if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                        else:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                            else:
                                if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                    require ext_code.size(arg1)
                    call arg1.mint(address rg1) with:
                         gas gas_remaining wei
                        args stakingContractAddress
                else:
                    if stor5[address(arg1)].field_256:
                        if tokensTotal > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                            revert with 0, 17
                        tokensTotal += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                        if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                        require ext_code.size(arg1)
                        if this.address == stor5[address(arg1)].field_0:
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000, address(stor9.field_0), 128, 0
                        else:
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor5[address(arg1)].field_0)
                        staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args stor5[address(arg1)].field_0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                            else:
                                if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args stakingContractAddress
                    else:
                        if this.address == arg1:
                            if tokensTotal > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                revert with 0, 17
                            tokensTotal += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                            if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                        else:
                            if -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 and rValueTotal > -1 / -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000:
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                revert with 0, 17
                            uint256(rTokensTotal) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000
                            if rValueTotal > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !(-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if stor5[address(arg1)].field_0 != this.address:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 / Mask(112, 0, ext_call.return_data[32]) + (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) / 1000, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < -1025 * Mask(112, 0, ext_call.return_data[32]) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                else:
                                    if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                    else:
                                        if arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000) and rValueTotal > -1 / arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - (-1025 * Mask(112, 0, ext_call.return_data[32]) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            else:
                if 1 < ext_call.return_data[50 len 14]:
                    revert with 0, 17
                if -ext_call.return_data[50 len 14] + 1 > 0x3ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003f:
                    revert with 0, 17
                if ext_call.return_data[50 len 14] > !((-1025 * ext_call.return_data[50 len 14]) + 1025 / 1000):
                    revert with 0, 17
                if ext_call.return_data[18 len 14] and (-1025 * ext_call.return_data[50 len 14]) + 1025 / 1000 > -1 / ext_call.return_data[18 len 14]:
                    revert with 0, 17
                if not ext_call.return_data[50 len 14] + ((-1025 * ext_call.return_data[50 len 14]) + 1025 / 1000):
                    revert with 0, 18
                if ext_call.return_data[18 len 14] * (-1025 * ext_call.return_data[50 len 14]) + 1025 / 1000 / ext_call.return_data[50 len 14] + ((-1025 * ext_call.return_data[50 len 14]) + 1025 / 1000) > 0x433766a99dcd100433766a99dcd100433766a99dcd100433766a99dcd10043:
                    revert with 0, 17
                require ext_code.size(stor5[address(arg1)].field_0)
                staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args stakingContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not stor5[address(arg1)].field_0:
                    if this.address == arg1:
                        if tokensTotal > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                            revert with 0, 17
                        tokensTotal += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                        if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                        if this.address == stor5[address(arg1)].field_0:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    else:
                        if (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 and rValueTotal > -1 / (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                            revert with 0, 17
                        uint256(rTokensTotal) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                        if rValueTotal > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                        if this.address == stor5[address(arg1)].field_0:
                            mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0, None
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(stor5[address(arg1)].field_0)
                        staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                        mem[(4 * ceil32(return_data.size)) + 164] = arg1
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                            else:
                                if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                        mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                else:
                    if stor5[address(arg1)].field_256:
                        if tokensTotal > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                            revert with 0, 17
                        tokensTotal += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                        if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                        if this.address == stor5[address(arg1)].field_0:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    else:
                        if this.address == arg1:
                            if tokensTotal > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                revert with 0, 17
                            tokensTotal += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                            if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                            require ext_code.size(arg1)
                            if this.address == stor5[address(arg1)].field_0:
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0
                            else:
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            if (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 and rValueTotal > -1 / (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                revert with 0, 17
                            uint256(rTokensTotal) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000
                            if rValueTotal > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal / uint256(rTokensTotal)
                            if this.address == stor5[address(arg1)].field_0:
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, address(stor9.field_0), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(stor5[address(arg1)].field_0)
                                staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stakingContractAddress
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args stor5[address(arg1)].field_0, address(arg1), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                    revert with 0, 17
                                if not stor5[address(arg1)].field_0:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                else:
                                    if stor5[address(arg1)].field_256:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if this.address == arg1:
                                            if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                                revert with 0, 17
                                            tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                            if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                                revert with 0, 17
                                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        else:
                                            if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                                revert with 0, 17
                                            if not uint256(rTokensTotal):
                                                revert with 0, 18
                                            if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                                revert with 0, 17
                                            uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                            if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                                revert with 0, 17
                                            rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                            if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                                revert with 0, 17
                                            uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                require ext_code.size(arg1)
                                call arg1.mint(address rg1) with:
                                     gas gas_remaining wei
                                    args stakingContractAddress
                            else:
                                mem[(2 * ceil32(return_data.size)) + 164] = 0
                                mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                                mem[(2 * ceil32(return_data.size)) + 228] = 128
                                mem[(2 * ceil32(return_data.size)) + 260] = 0
                                mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                                require ext_code.size(arg1)
                                call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 975 * Mask(112, 0, ext_call.return_data[0]) * (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                                require ext_code.size(stor5[address(arg1)].field_0)
                                staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                        gas gas_remaining wei
                                       args stakingContractAddress
                                mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                                mem[(4 * ceil32(return_data.size)) + 164] = arg1
                                mem[(4 * ceil32(return_data.size)) + 196] = 0
                                require ext_code.size(stakingContractAddress)
                                call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if arg2 < (-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000:
                                    revert with 0, 17
                                if not stor5[address(arg1)].field_0:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                else:
                                    if stor5[address(arg1)].field_256:
                                        if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                    else:
                                        if this.address == arg1:
                                            if tokensTotal > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                                revert with 0, 17
                                            tokensTotal = tokensTotal + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                            if uint256(stor2[address(arg1)]) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                                revert with 0, 17
                                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                        else:
                                            if arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000) and rValueTotal > -1 / arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000):
                                                revert with 0, 17
                                            if not uint256(rTokensTotal):
                                                revert with 0, 18
                                            if uint256(rTokensTotal) > !(arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)):
                                                revert with 0, 17
                                            uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000)
                                            if rValueTotal > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                                revert with 0, 17
                                            rValueTotal += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                            if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                                revert with 0, 17
                                            uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((-1025 * Mask(112, 0, ext_call.return_data[32])) + 1025 / 1000 * rValueTotal) / uint256(rTokensTotal)
                                mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                                require ext_code.size(arg1)
                                call arg1.mint(address rg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
        else:
            if 1 > !((ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14]) / 2):
                revert with 0, 17
            s = ((ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14]) / 2) + 1
            t = (ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14])
            while s < t:
                if not s:
                    revert with 0, 18
                if (ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14]) / s > !s:
                    revert with 0, 17
                s = ((ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) + (arg2 * ext_call.return_data[50 len 14]) / s) + s / 2
                t = s
                continue 
            if t < ext_call.return_data[50 len 14]:
                revert with 0, 17
            if t - ext_call.return_data[50 len 14] > 0x3ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003ff003f:
                revert with 0, 17
            if ext_call.return_data[50 len 14] > !((1025 * t) - (1025 * ext_call.return_data[50 len 14]) / 1000):
                revert with 0, 17
            if ext_call.return_data[18 len 14] and (1025 * t) - (1025 * ext_call.return_data[50 len 14]) / 1000 > -1 / ext_call.return_data[18 len 14]:
                revert with 0, 17
            if not ext_call.return_data[50 len 14] + ((1025 * t) - (1025 * ext_call.return_data[50 len 14]) / 1000):
                revert with 0, 18
            if ext_call.return_data[18 len 14] * (1025 * t) - (1025 * ext_call.return_data[50 len 14]) / 1000 / ext_call.return_data[50 len 14] + ((1025 * t) - (1025 * ext_call.return_data[50 len 14]) / 1000) > 0x433766a99dcd100433766a99dcd100433766a99dcd100433766a99dcd10043:
                revert with 0, 17
            require ext_code.size(stor5[address(arg1)].field_0)
            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args stakingContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not stor5[address(arg1)].field_0:
                if this.address == arg1:
                    if tokensTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                        revert with 0, 17
                    tokensTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                    if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                    if stor5[address(arg1)].field_0 != this.address:
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor5[address(arg1)].field_0)
                        staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args stor5[address(arg1)].field_0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args stakingContractAddress
                    else:
                        mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000
                        mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, address(stor9.field_0), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(stor5[address(arg1)].field_0)
                        staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                        mem[(4 * ceil32(return_data.size)) + 164] = arg1
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                else:
                    if (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 and rValueTotal > -1 / (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                        revert with 0, 17
                    if not uint256(rTokensTotal):
                        revert with 0, 18
                    if uint256(rTokensTotal) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                        revert with 0, 17
                    uint256(rTokensTotal) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                    if rValueTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    rValueTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)
                    if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)
                    if this.address == stor5[address(arg1)].field_0:
                        mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000
                        mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, address(stor9.field_0), 128, 0, None
                    else:
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                    require ext_code.size(stor5[address(arg1)].field_0)
                    staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args stakingContractAddress
                    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                    mem[(4 * ceil32(return_data.size)) + 164] = arg1
                    mem[(4 * ceil32(return_data.size)) + 196] = 0
                    require ext_code.size(stakingContractAddress)
                    call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                        revert with 0, 17
                    if not stor5[address(arg1)].field_0:
                        if this.address == arg1:
                            if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                        else:
                            if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                revert with 0, 17
                            if not uint256(rTokensTotal):
                                revert with 0, 18
                            if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                revert with 0, 17
                            uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                    else:
                        if stor5[address(arg1)].field_256:
                            if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                revert with 0, 17
                            tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                revert with 0, 17
                            uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                        else:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                    mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                    require ext_code.size(arg1)
                    call arg1.mint(address rg1) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
            else:
                if stor5[address(arg1)].field_256:
                    if tokensTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                        revert with 0, 17
                    tokensTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                    if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                        revert with 0, 17
                    uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                    if this.address == stor5[address(arg1)].field_0:
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, address(stor9.field_0), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor5[address(arg1)].field_0)
                        staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args stor5[address(arg1)].field_0, address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args stakingContractAddress
                    else:
                        mem[(2 * ceil32(return_data.size)) + 164] = 0
                        mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 228] = 128
                        mem[(2 * ceil32(return_data.size)) + 260] = 0
                        mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                        require ext_code.size(arg1)
                        call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(stor5[address(arg1)].field_0)
                        staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args stakingContractAddress
                        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                        mem[(4 * ceil32(return_data.size)) + 164] = arg1
                        mem[(4 * ceil32(return_data.size)) + 196] = 0
                        require ext_code.size(stakingContractAddress)
                        call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                            revert with 0, 17
                        if not stor5[address(arg1)].field_0:
                            if this.address == arg1:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                    revert with 0, 17
                                if not uint256(rTokensTotal):
                                    revert with 0, 18
                                if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        else:
                            if stor5[address(arg1)].field_256:
                                if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                    revert with 0, 17
                                uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                            else:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                        mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                        require ext_code.size(arg1)
                        call arg1.mint(address rg1) with:
                             gas gas_remaining wei
                            args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                else:
                    if this.address == arg1:
                        if tokensTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                            revert with 0, 17
                        tokensTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                        if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                        if stor5[address(arg1)].field_0 != this.address:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    else:
                                        if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    else:
                                        if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
                    else:
                        if (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 and rValueTotal > -1 / (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                            revert with 0, 17
                        if not uint256(rTokensTotal):
                            revert with 0, 18
                        if uint256(rTokensTotal) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                            revert with 0, 17
                        uint256(rTokensTotal) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000
                        if rValueTotal > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        rValueTotal += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if uint256(stor2[address(arg1)]) > !((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)):
                            revert with 0, 17
                        uint256(stor2[address(arg1)]) += (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal / uint256(rTokensTotal)
                        if this.address == stor5[address(arg1)].field_0:
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, address(stor9.field_0), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args stor5[address(arg1)].field_0, address(arg1), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    else:
                                        if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args stakingContractAddress
                        else:
                            mem[(2 * ceil32(return_data.size)) + 164] = 0
                            mem[(2 * ceil32(return_data.size)) + 196] = stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 228] = 128
                            mem[(2 * ceil32(return_data.size)) + 260] = 0
                            mem[(2 * ceil32(return_data.size)) + 292 len 0] = None
                            require ext_code.size(arg1)
                            call arg1.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 975 * Mask(112, 0, ext_call.return_data[0]) * (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 / Mask(112, 0, ext_call.return_data[32]) + ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) / 1000, 0, address(stor9.field_0), 128, 0, None
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(stor5[address(arg1)].field_0)
                            staticcall stor5[address(arg1)].field_0.0x70a08231 with:
                                    gas gas_remaining wei
                                   args stakingContractAddress
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 132] = stor5[address(arg1)].field_0
                            mem[(4 * ceil32(return_data.size)) + 164] = arg1
                            mem[(4 * ceil32(return_data.size)) + 196] = 0
                            require ext_code.size(stakingContractAddress)
                            call stakingContractAddress.transferTokens(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if arg2 < (1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000:
                                revert with 0, 17
                            if not stor5[address(arg1)].field_0:
                                if this.address == arg1:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                        revert with 0, 17
                                    if not uint256(rTokensTotal):
                                        revert with 0, 18
                                    if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                    if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            else:
                                if stor5[address(arg1)].field_256:
                                    if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                        revert with 0, 17
                                    uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                else:
                                    if this.address == arg1:
                                        if tokensTotal > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        tokensTotal = tokensTotal + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if uint256(stor2[address(arg1)]) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) = uint256(stor2[address(arg1)]) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                    else:
                                        if arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000) and rValueTotal > -1 / arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000):
                                            revert with 0, 17
                                        if not uint256(rTokensTotal):
                                            revert with 0, 18
                                        if uint256(rTokensTotal) > !(arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)):
                                            revert with 0, 17
                                        uint256(rTokensTotal) = uint256(rTokensTotal) + arg2 - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000)
                                        if rValueTotal > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        rValueTotal += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                                        if uint256(stor2[address(arg1)]) > !((arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)):
                                            revert with 0, 17
                                        uint256(stor2[address(arg1)]) += (arg2 * rValueTotal) - ((1025 * t) - (1025 * Mask(112, 0, ext_call.return_data[32])) / 1000 * rValueTotal) / uint256(rTokensTotal)
                            mem[(4 * ceil32(return_data.size)) + 132] = stakingContractAddress
                            require ext_code.size(arg1)
                            call arg1.mint(address rg1) with:
                                 gas gas_remaining wei
                                args mem[(4 * ceil32(return_data.size)) + 132 len (5 * ceil32(return_data.size)) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}



}
